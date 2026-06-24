gpu_id=0

# pre-trained on Visa
CUDA_VISIBLE_DEVICES=$gpu_id python train.py --save_fig False --training_data visa --testing_data mvtec --epoch 50 --valid_freq 5

# pre-trained on MVTec
CUDA_VISIBLE_DEVICES=$gpu_id python train.py --save_fig False --training_data mvtec --testing_data visa --epoch 50 --valid_freq 5