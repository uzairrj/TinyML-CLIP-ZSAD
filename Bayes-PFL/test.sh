( python -u test.py --dataset mvtec --data_path '' \
--checkpoint_path './ckpts/train_visa/model.pth' \
--save_path ./results/DTD-Synthetic --pretrained_path  ~/.cache/clip/TinyCLIP-ViT-39M-16-Text-19M-YFCC15M.pt \
--prompt_context_len 5 --prompt_num 3 --prompt_state_len 5 --device_id 0 --pretrained openai --image_size 518 \
--seed 333 --config_path ./open_clip_local/model_configs/TinyCLIP-ViT-39M-16-Text-19M.json --model TinyCLIP-ViT-39M-16-Text-19M --sample_num 10 --num_flows 10
) > ./log_test_DTD-Synthetic.out 2>&1
