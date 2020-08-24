python save_model.py --weights ./data/yolov4-tiny.weights --output ./checkpoints/yolov4-tiny-416 --input_size 416 --model yolov4 --tiny
python convert_trt.py --weights ./checkpoints/yolov4-tiny-416 --output ./checkpoints/yolov4-tiny-416-fp16.rt
python detectvideo.py --weights ./checkpoints/yolov4-tiny-416-fp16.rt --size 416 --model yolov4 --video ./data/road.mp4 --tiny
read -p "Press any key to continue" x
