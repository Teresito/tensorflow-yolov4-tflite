python detectvideo.py --weights ./checkpoints/yolov3-tiny.tflite --size 416 --model yolov3 --video $1 --framework tflite --tiny --output_name yolov3-tiny.mp4 $2 $3
read -p "Press any key to continue" x
