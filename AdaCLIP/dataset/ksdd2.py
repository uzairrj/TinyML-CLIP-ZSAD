import os
from .base_dataset import BaseDataset
from config import DATA_ROOT

'''dataset source: https://data.vicos.si/datasets/KSDD/KolektorSDD.zip'''
SDD2_CLS_NAMES = [
    'SDD2',
]
SDD2_ROOT = os.path.join(DATA_ROOT, 'computer_vision/KSDD2')


class SDD2Dataset(BaseDataset):
    def __init__(self, transform, target_transform, clsnames=SDD2_CLS_NAMES, aug_rate=0.0, root=SDD2_ROOT, training=True):
        super(SDD2Dataset, self).__init__(
            clsnames=clsnames, transform=transform, target_transform=target_transform,
            root=root, aug_rate=aug_rate, training=training
        )

