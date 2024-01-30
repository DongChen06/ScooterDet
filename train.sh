# Training script on CUDA 0
# bash -i train.sh

#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov5n.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov5s.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov5m.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov5l.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov5x.pt


#cd /home/dong9/PycharmProjects/ScooterDet/YOLOv6; /home/dong9/anaconda3/envs/yolov5py38/bin/python  tools/train.py --conf configs/yolov6s_finetune.py --img 640 --device 0 --batch 16 --epochs 100 --data data/scooter.yaml
#cd /home/dong9/PycharmProjects/ScooterDet/YOLOv6; /home/dong9/anaconda3/envs/yolov5py38/bin/python  tools/train.py --conf configs/yolov6s_finetune.py --img 640 --device 0 --batch 16 --epochs 100 --data data/scooter.yaml
#cd /home/dong9/PycharmProjects/ScooterDet/YOLOv6; /home/dong9/anaconda3/envs/yolov5py38/bin/python  tools/train.py --conf configs/yolov6m_finetune.py --img 640 --device 0 --batch 16 --epochs 100 --data data/scooter.yaml


#cd /home/dong9/PycharmProjects/ScooterDet/yolov3; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov3-tiny.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov3; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov3.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov3; /home/dong9/anaconda3/envs/yolov5py38/bin/python  train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov3-spp.pt


#cd /home/dong9/PycharmProjects/ScooterDet/yolov7; /home/dong9/anaconda3/envs/yolov5py38/bin/python train.py --workers 8 --device 0 --batch-size 12 --data data/scooter.yaml --img 640 640 --cfg cfg/training/yolov7.yaml --weights 'yolov7.pt' --name yolov7-custom --hyp data/hyp.scratch.custom.yaml
#cd /home/dong9/PycharmProjects/ScooterDet/yolov7;/home/dong9/anaconda3/envs/yolov5py38/bin/python train.py --workers 8 --device 0 --batch-size 8 --data data/scooter.yaml --img 640 640 --cfg cfg/training/yolov7x.yaml --weights 'yolov7x.pt' --name yolov7-custom1 --hyp data/hyp.scratch.custom.yaml
cd /home/dong9/PycharmProjects/ScooterDet/yolov7; /home/dong9/anaconda3/envs/yolov5py38/bin/python train_aux.py --workers 8 --device 0 --batch-size 8 --data data/scooter.yaml --img 640 640 --cfg cfg/training/yolov7-w6.yaml --weights 'yolov7-w6_training.pt' --name yolov7-w6 --hyp data/hyp.scratch.custom.yaml
cd /home/dong9/PycharmProjects/ScooterDet/yolov7; /home/dong9/anaconda3/envs/yolov5py38/bin/python train_aux.py --workers 8 --device 0 --batch-size 8 --data data/scooter.yaml --img 640 640 --cfg cfg/training/yolov7-e6.yaml --weights 'yolov7-e6_training.pt' --name yolov7-e6 --hyp data/hyp.scratch.custom.yaml
cd /home/dong9/PycharmProjects/ScooterDet/yolov7; /home/dong9/anaconda3/envs/yolov5py38/bin/python train_aux.py --workers 8 --device 0 --batch-size 8 --data data/scooter.yaml --img 640 640 --cfg cfg/training/yolov7-d6.yaml --weights 'yolov7-d6_training.pt' --name yolov7-d6 --hyp data/hyp.scratch.custom.yaml
cd /home/dong9/PycharmProjects/ScooterDet/yolov7; /home/dong9/anaconda3/envs/yolov5py38/bin/python train_aux.py --workers 8 --device 0 --batch-size 8 --data data/scooter.yaml --img 640 640 --cfg cfg/training/yolov7-e6e.yaml --weights 'yolov7-e6e_training.pt' --name yolov7-e6e --hyp data/hyp.scratch.custom.yaml
