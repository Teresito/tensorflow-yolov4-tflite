# UNTRAINED YOLOV4-TINY
if [[ ! -d ./checkpoints/yolov4-tiny ]]; then
	python save_model.py --weights ./data/yolov4-tiny.weights --output ./checkpoints/yolov4-tiny --input_size 416 --model yolov4 --framework tflite --tiny 
else
	echo "/yolov4-tiny exists"
fi
# UNTRAINED YOLOV4-TINY TFLITE
if [[ ! -f ./checkpoints/yolov4-tiny.tflite  ]]; then
	python convert_tflite.py --weights ./checkpoints/yolov4-tiny --output ./checkpoints/yolov4-tiny.tflite 
else
	echo "yolov4-tiny.tflite exists"
fi
	
# UNTRAINED YOLOV4-TINY TFLITE FP16
if [[ ! -f ./checkpoints/yolov4-tiny_fp16.tflite  ]]; then
	python convert_tflite.py --weights ./checkpoints/yolov4-tiny --output ./checkpoints/yolov4-tiny_fp16.tflite --quantize_mode float16
else
	echo "yolov4-tiny_fp16.tflite exists"
fi

# TRAINED YOLOV4-TINY
if [[ ! -d ./checkpoints/yolov4-tiny_trained  ]]; then
	python save_model.py --weights ./data/yolov4-tiny_trained.weights --output ./checkpoints/yolov4-tiny_trained --input_size 416 --model yolov4 --framework tflite --tiny --classes 1
else
	echo "/yolov4-tiny_trained exists"
fi

# TRAINED YOLOV4-TINY TFLITE FP32
if [[ ! -f ./checkpoints/yolov4-tiny_trained.tflite  ]]; then
	python convert_tflite.py --weights ./checkpoints/yolov4-tiny_trained --output ./checkpoints/yolov4-tiny_trained.tflite
else
	echo "yolov4-tiny_trained.tflite exists"
fi

# TRAINED YOLOV4-TINY TFLITE FP16
if [[ ! -f ./checkpoints/yolov4-tiny_trained_fp16.tflite  ]]; then
	python convert_tflite.py --weights ./checkpoints/yolov4-tiny_trained --output ./checkpoints/yolov4-tiny_trained_fp16.tflite --quantize_mode float16
else
	echo "yolov4-tiny_trained_fp16.tflite exists"
fi

read -p "Converting finished, press any key to exit" x
