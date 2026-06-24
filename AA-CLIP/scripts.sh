#!/bin/bash
gpu_id=1

# training
CUDA_VISIBLE_DEVICES=$gpu_id python train.py --save_path ./ckpt/train_mvtec --training_mode full_shot --dataset MVTec

# testing
declare -a dataset=(visa)
save_path="./ckpt/trained_on_mvtec"
for i in "${dataset[@]}"; do
    CUDA_VISIBLE_DEVICES=$gpu_id python test.py --save_path $save_path --dataset $i
done