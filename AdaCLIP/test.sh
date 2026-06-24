# pre-trained from MVTec and ColonDB
ckt_path="./workspaces/models/0s-pretrained-['visa']-TinyCLIP-ViT-39M-16-Text-19M-SD-VL-D4-L5-HSF-K20_best.pth"
gpu_id=1

CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data br35h
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data brain_mri
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data btad
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data clinicdb
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data dagm
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data dtd
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data headct
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data isic
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data mpdd
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data sdd
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data sdd2
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data tn3k
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig False --testing_data visa
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data colondb

# pre-trained from Visa and Clinicdb
ckt_path="./workspaces/models/0s-pretrained-['mvtec']-TinyCLIP-ViT-39M-16-Text-19M-SD-VL-D4-L5-HSF-K20_best.pth"
gpu_id=0

CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data visa



