#all: git_submodule mavlink_control
all: mavlink_control

mavlink_control: mavlink_control.cpp
	g++ -I mavlink/include/mavlink/v2.0 -I./common mavlink_control.cpp serial_port.cpp autopilot_interface.cpp -o mavlink_control -lpthread  -g

git_submodule:
	git submodule update --init --recursive

clean:
	 rm -rf *o mavlink_control
