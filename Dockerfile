FROM osrf/ros:foxy-desktop

# RUN sudo apt-get update
# RUN sudo apt-get install -Y vim tmux
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -qq install vim tmux


# Required to set up ROS library paths
RUN echo 'source "/opt/ros/$ROS_DISTRO/setup.bash"' >> ~/.bashrc