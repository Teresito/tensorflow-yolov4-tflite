python save_model.py --weights ./data/yolov4-tiny4000.weights --output ./checkpoints/yolov4-tiny4000 --input_size 416 --model yolov4 --framework tflite --tiny True --classes 1
python convert_tflite.py --weights ./checkpoints/yolov4-tiny4000 --output ./checkpoints/yolov4-tiny4000.tflite
python detectvideo.py --weights ./checkpoints/yolov4-tiny4000.tflite --size 416 --model yolov4 --video ./data/road.mp4 --framework tflite --tiny
read -p "Press any key to continue" x
