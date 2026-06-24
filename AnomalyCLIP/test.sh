gpu_id=0
ckpt=./checkpoint/trained_on_visa/model.pth

# CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset mvtec --data_path /media/data/ukhan/data/computer_vision/mvtec --save_path ./results/mvtec --checkpoint_path $ckpt
CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset sdd --data_path /media/data/ukhan/data/computer_vision/SDD_anomaly_detection --save_path ./results/SDD --checkpoint_path $ckpt
CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset sdd2 --data_path /media/data/ukhan/data/computer_vision/KSDD2 --save_path ./results/SDD2 --checkpoint_path $ckpt
CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset mpdd --data_path /media/data/ukhan/data/computer_vision/MPDD --save_path ./results/MPDD --checkpoint_path $ckpt
CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset btad --data_path /media/data/ukhan/data/computer_vision/btad --save_path ./results/BTAD --checkpoint_path $ckpt
CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset dagm --data_path /media/data/ukhan/data/computer_vision/DAGM_anomaly_detection --save_path ./results/DAGM --checkpoint_path $ckpt
CUDA_VISIBLE_DEVICES=$gpu_id python3 test.py --dataset dtd --data_path /media/data/ukhan/data/computer_vision/DTD-Synthetic --save_path ./results/DTD --checkpoint_path $ckpt
