# Training script on CUDA 0
# bash -i test.sh

cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights runs/train/exp/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp1/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp2/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp3/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp4/weights/best.pt

(escooters) (.env) D:\ScooterDet>python ./yolov5/val.py --img 1280 --data scooter.yaml --weights yolov5/runs/train/exp10/weights/best.pt

(escooters) (.env) D:\ScooterDet>python yolov5/train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter.yaml --weights yolov5n.pt

(escooters) D:\ScooterDet>python yolov5/train.py --img 640 --device 0 --batch 16 --epochs 100 --data scooter2.yaml --weights yolov5\runs\train\exp10\weights\best.pt