import sys
import os
sys.path.append(os.getcwd())
import AnomalyCLIP_lib

model, _ = AnomalyCLIP_lib.load("TinyCLIP-ViT-39M-16-Text-19M", device="cpu")

v_cfg = model.visual
t_cfg = model

print("vision width:", v_cfg.conv1.weight.shape[0])
print("vision layers:", len(v_cfg.transformer.resblocks))
print("vision patch size:", v_cfg.conv1.weight.shape[-1])
print("vision image size:", v_cfg.input_resolution)

print("text context length:", t_cfg.context_length)
print("text vocab size:", t_cfg.vocab_size)
print("text width:", t_cfg.transformer.width)
print("text heads:", t_cfg.transformer.resblocks[0].attn.num_heads)
print("text layers:", len(t_cfg.transformer.resblocks))
print("embed dim:", t_cfg.text_projection.shape[1])
