# E-Scooter Benchmark: Benchmarking the Deep Learning Techniques for Object Detection in E-scooters

## 1. Installation
- Create a conda environment: `conda create -n escooters python=3.12 -y`
- Active the virtual environment: `conda activate escooters`
- Install requirements: `pip install -r requirements.txt`

## 2. Preparing the Dataset
### 2.1 Dataset Preparation
- Download the data (https://zenodo.org/records/10578641).
- Run the script to convert the labeled data into YOLO format: `python yolov5/commons/labelme2yolo.py`

## 3. Training and Testing
- Download the pre-trained models from the official YOLO websites and unzip them to the corresponding folders. For example, you need to put the `yolov3.pt`, `yolov3-spp.pt` and `yolov3-tiny.pt` under the *YOLOV3/* folder.
- You can run the 0st data folder, we can run:`bash -i train.sh`.
- To test the models, we can run: `bash -i test.sh`.

## 4. Performance
The YOLO algorithms[1-6] used for our experiments are not maintained by us, please give credit to the authors of the YOLO algorithms[1-6].

# Video Demos
The video demos can be accessed at [[Demo]](https://drive.google.com/file/d/1YYxj8OWewmerNA7jAEGmmwdH6v-_TYXZ/view?usp=sharing)

# Citation
If you find the models and or the dataset useful, consider citing the following article:
```
Coming soon
```

# Reference
- [1-1] YOLOv3: Redmon, Joseph, and Ali Farhadi. "Yolov3: An incremental improvement." arXiv preprint arXiv:1804.02767 (2018).
- [1-2] YOLOv3 Implementation: https://github.com/ultralytics/yolov3.
- [2-1] YOLOv4: Bochkovskiy, Alexey, Chien-Yao Wang, and Hong-Yuan Mark Liao. "Yolov4: Optimal speed and accuracy of object detection." arXiv preprint arXiv:2004.10934 (2020).
- [2-2] YOLOv4 Implementation: https://github.com/WongKinYiu/PyTorch_YOLOv4.
- [3-1] YOLOv5: None
- [3-2] YOLOv5 Implementation: https://github.com/ultralytics/yolov5.
- [4-1] YOLOv6: Li, Chuyi, Lulu Li, Hongliang Jiang, Kaiheng Weng, Yifei Geng, Liang Li, Zaidan Ke et al. "YOLOv6: A single-stage object detection framework for industrial applications." arXiv preprint arXiv:2209.02976 (2022).
- [4-2] YOLOv6 Implementation: https://github.com/meituan/YOLOv6.
- [5-1] YOLOv7: Wang, Chien-Yao, Alexey Bochkovskiy, and Hong-Yuan Mark Liao. "YOLOv7: Trainable bag-of-freebies sets new state-of-the-art for real-time object detectors." In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pp. 7464-7475. 2023.
- [5-2] YOLOv7 Implementation: https://github.com/WongKinYiu/yolov7
- [6-1] YOLOv8 Implementation: https://github.com/ultralytics/ultralytics
