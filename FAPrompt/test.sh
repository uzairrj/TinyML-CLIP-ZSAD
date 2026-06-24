DEVICE=0

CUDA_VISIBLE_DEVICES=$DEVICE python test.py \
  --dataset btad \
  --data_path '' \
  --save_path ./results/trained_on_visa/zero_shot \
  --checkpoint_path ./checkpoints/trained_on_visa/model.pth \
  --features_list 3 5 7 11 \
  --image_size 512 \
  --seed 111 \
  --depth 9 \
  --n_ctx 12 \
  --t_n_ctx 4 \
  --metrics image-pixel-level