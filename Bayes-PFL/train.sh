# This script uses two NVIDIA 3090 GPUs to run two experiments simultaneously. If you only have one 3090, please comment out one of the experiments.

# train on the VisA dataset
(
python train.py --dataset visa --train_data_path '' \
--val_data_path '' \
--save_path ./ckpts/train_visa --pretrained_path ~/.cache/clip/TinyCLIP-ViT-39M-16-Text-19M-YFCC15M.pt \
--prompt_context_len 5 --prompt_num 3 --prompt_state_len 5 --device_id 0 --learning_rate 0.0001 --pretrained openai --image_size 518 \
--batch_size 32 --epochs 30 --sample_num 5 --num_flows 10 \
--config_path ./open_clip_local/model_configs/TinyCLIP-ViT-39M-16-Text-19M.json --model TinyCLIP-ViT-39M-16-Text-19M --seed 333 --alpha 0.6
) > ./log_train_visa.out 2>&1