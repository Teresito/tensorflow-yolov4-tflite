#!/bin/bash
python detectvideo.py --weights ./checkpoints/yolov4-tiny.tflite --size 416 --model yolov4 --video $1 --framework tflite --tiny --output_name yolov4-tiny.mp4 $2 $3
read -p "Press any key to continue" x
