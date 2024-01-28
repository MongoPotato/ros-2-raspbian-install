
# install software-properties to have access to ros packages
apt install software-properties-common

#Now add the ROS 2 GPG key with apt.
apt update && sudo apt install curl -y
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

# Then add the repository ros ubuntu to your sources list.
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo bookworm) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install common packages.
apt update && sudo apt install -y \
  python3-flake8-docstrings \
  python3-pip \
  python3-pytest-cov \
  ros-dev-tools


# install more python requirements
apt install -y \
   python3-flake8-blind-except \
   python3-flake8-builtins \
   python3-flake8-class-newline \
   python3-flake8-comprehensions \
   python3-flake8-deprecated \
   python3-flake8-import-order \
   python3-flake8-quotes \
   python3-pytest-repeat \
   python3-pytest-rerunfailures


# Clone my custom made repository with all the CMakeLists.txt modifications to be ready to compile on armhf on raspbian (bookworm 32 bit)
cd ~/ros-2-raspbian-install/ros2_humble/

# ROS 2 packages are built on frequently updated debian systems. It is always recommended that you ensure your system is up to date before installing new packages.

apt update
apt upgrade

# Starting rosdep that installs all the ros dependencies we specify our os with the ros distribution
rosdep init
rosdep update
rosdep install --from-paths src --ignore-src -y --skip-keys "python3-catkin-pkg-modules python3-rosdistro-modules libignition-math6-dev fastcdr rti-connext-dds-6.0.1 urdfdom_headers" --os=debian:bookworm --rosdistro humble

# Build command important to be sudo or it will fail, we also skip rviz packages there are not needed. 
colcon build --symlink-install --packages-skip rviz_common rviz_default_plugins rviz_ogre_vendor rviz_rendering rviz_rendering_tests rviz_visual_testing_framework rviz2 --cmake-args "-DCMAKE_SHARED_LINKER_FLAGS='-latomic'" "-DCMAKE_EXE_LINKER_FLAGS='-latomic'"

# Source the bash file
. ~/ros2_humble/install/local_setup.bash
