// Copyright 2021 Proyectos y Sistemas de Mantenimiento SL (eProsima).
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/*!
 * @file LoanableHelloWorldSubscriber.cpp
 * This file contains the implementation of the subscriber functions.
 *
 * This file was generated by the tool fastcdrgen.
 */

#include <fastdds/dds/domain/DomainParticipantFactory.hpp>
#include <fastdds/dds/subscriber/DataReader.hpp>
#include <fastdds/dds/subscriber/SampleInfo.hpp>
#include <fastdds/dds/subscriber/Subscriber.hpp>
#include <fastdds/dds/subscriber/qos/DataReaderQos.hpp>

#include "LoanableHelloWorldSubscriber.h"
#include "LoanableHelloWorldPubSubTypes.h"

using namespace eprosima::fastdds::dds;

LoanableHelloWorldSubscriber::LoanableHelloWorldSubscriber()
    : participant_(nullptr)
    , subscriber_(nullptr)
    , topic_(nullptr)
    , reader_(nullptr)
    , type_(new LoanableHelloWorldPubSubType())
{
}

LoanableHelloWorldSubscriber::~LoanableHelloWorldSubscriber()
{
    if (reader_ != nullptr)
    {
        subscriber_->delete_datareader(reader_);
    }
    if (topic_ != nullptr)
    {
        participant_->delete_topic(topic_);
    }
    if (subscriber_ != nullptr)
    {
        participant_->delete_subscriber(subscriber_);
    }
    DomainParticipantFactory::get_instance()->delete_participant(participant_);
}

bool LoanableHelloWorldSubscriber::init()
{
    //CREATE THE PARTICIPANT
    DomainParticipantQos pqos;
    pqos.name("Participant_sub");
    participant_ = DomainParticipantFactory::get_instance()->create_participant(0, pqos);
    if (participant_ == nullptr)
    {
        return false;
    }

    //REGISTER THE TYPE
    type_.register_type(participant_);

    //CREATE THE SUBSCRIBER
    subscriber_ = participant_->create_subscriber(SUBSCRIBER_QOS_DEFAULT, nullptr);
    if (subscriber_ == nullptr)
    {
        return false;
    }

    //CREATE THE TOPIC
    topic_ = participant_->create_topic(
        "LoanableHelloWorldTopic",
        type_.get_type_name(),
        TOPIC_QOS_DEFAULT);
    if (topic_ == nullptr)
    {
        return false;
    }

    //CREATE THE READER
    DataReaderQos rqos = subscriber_->get_default_datareader_qos();
    rqos.history().depth = 10;
    rqos.reliability().kind = RELIABLE_RELIABILITY_QOS;
    rqos.durability().kind = TRANSIENT_LOCAL_DURABILITY_QOS;
    rqos.data_sharing().automatic();
    reader_ = subscriber_->create_datareader(topic_, rqos, &listener_);
    if (reader_ == nullptr)
    {
        return false;
    }

    return true;
}

void LoanableHelloWorldSubscriber::SubListener::on_subscription_matched(
        DataReader*,
        const SubscriptionMatchedStatus& info)
{
    if (info.current_count_change == 1)
    {
        matched = info.total_count;
        std::cout << "Subscriber matched." << std::endl;
    }
    else if (info.current_count_change == -1)
    {
        matched = info.total_count;
        std::cout << "Subscriber unmatched." << std::endl;
    }
    else
    {
        std::cout << info.current_count_change
                  << " is not a valid value for SubscriptionMatchedStatus current count change" << std::endl;
    }
}

void LoanableHelloWorldSubscriber::SubListener::on_data_available(
        DataReader* reader)
{
    FASTDDS_CONST_SEQUENCE(DataSeq, LoanableHelloWorld);

    DataSeq data;
    SampleInfoSeq infos;
    while (ReturnCode_t::RETCODE_OK == reader->take(data, infos))
    {
        for (LoanableCollection::size_type i = 0; i < infos.length(); ++i)
        {
            if (infos[i].valid_data)
            {
                // Print your structure data here.
                const LoanableHelloWorld& sample = data[i];

                ++samples;
                std::cout << "Sample received (count=" << samples << ") at address " << &sample
                          << (reader->is_sample_valid(&sample, &infos[i]) ? " is valid" : " was replaced" ) << std::endl
                          << "  index=" << sample.index() << std::endl
                          << "  message=" << sample.message().data() << std::endl;
            }
        }
        reader->return_loan(data, infos);
    }
}

void LoanableHelloWorldSubscriber::run()
{
    std::cout << "Waiting for Data, press Enter to stop the DataReader. " << std::endl;
    std::cin.ignore();
    std::cout << "Shutting down the Subscriber." << std::endl;
}