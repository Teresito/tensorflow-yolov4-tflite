python save_model.py --weights ./data/yolov3-tiny_trained.weights --output ./checkpoints/yolov3-tiny_trained --input_size 416 --model yolov4 --framework tflite --tiny True --classes 1
python convert_tflite.py --weights ./checkpoints/yolov3-tiny_trained --output ./checkpoints/yolov3-tiny_trained.tflite --quantize_mode  float16
read -p "Press any key to continue" x
