device=1

LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
    ## train on the VisA dataset
        base_dir=trained_on_mvtec
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset mvtecad --train_data_path '' \
        --save_path ${save_dir} \
        --image_size 512  --batch_size 8 --print_freq 1 \
        --epoch 50 --save_freq 5 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done