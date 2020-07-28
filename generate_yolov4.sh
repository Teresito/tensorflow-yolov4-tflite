#!/bin/bash
python ./save_model.py --weights ./data/yolov4.weights --output ./checkpoints/yolov4-416 --input_size 416 --model yolov4 --framework tflite
python convert_tflite.py --weights ./checkpoints/yolov4-416 --output ./checkpoints/yolov4-416.tflite
python detectvideo.py --weights ./checkpoints/yolov4-416.tflite --size 416 --model yolov4 --video ./data/road.mp4 --framework tflite
read -p "Press any key to continue" x

