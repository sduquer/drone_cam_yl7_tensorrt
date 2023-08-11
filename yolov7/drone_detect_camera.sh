#!/bin/bash

#restart any process associated to nvargus-daemon (camera)
sudo /bin/systemctl restart nvargus-daemon
#Use maximum power capacity
sudo /usr/sbin/nvpmodel -m 0
sudo /usr/bin/jetson_clocks

# Activate Python environment
source /home/sebastian/Documentos/JetsonNanoProyects/py3.6yolo7/py3.6yolo7/bin/activate

# Change to the folder containing the python script
cd /home/sebastian/Documentos/JetsonNanoProyects/py3.6yolo7/tensorrtx/yolov7/

echo $PYTHONPATH

export PYTHONPATH=/usr/lib/python3.6/dist-packages/:$PYTHONPATH


IFS=$' '
retval=($(</proc/$$/stat))
IFS=$' \t\n'
if [[ "${retval[3]}" == "${retval[7]}" ]]; then
    python yolov7_trt_cam.py > LOG/check_bash_script_running_background.txt
else
    python yolov7_trt_cam.py > LOG/check_bash_script_running_foreground.txt
fi
exit




