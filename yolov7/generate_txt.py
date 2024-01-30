import os
from shutil import copyfile
import argparse
import math
import random
from os import walk

source = '/home/dong9/PycharmProjects/yolov5/datasets/YOLODataset/images/train'
train_txt_path = os.path.join('train' + '.txt')

# get all the pictures in directory
images = []
ext = (".JPEG", "jpeg", "JPG", ".jpg", ".png", "PNG")

for (dirpath, dirnames, filenames) in walk(source):
    for filename in filenames:
        if filename.endswith(ext):
            images.append(os.path.join(dirpath, filename))

for file in images:
    # filename = file.split("/")[-1]

    with open(train_txt_path, 'a', encoding='UTF-8') as f:
        f.write('{}'.format(file))
        f.write('\n')