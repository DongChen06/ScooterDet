# Training script on CUDA 0
# bash -i test.sh

cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights runs/train/exp/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp1/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp2/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp3/weights/best.pt
#cd /home/dong9/PycharmProjects/ScooterDet/yolov5; /home/dong9/anaconda3/envs/yolov5py38/bin/python  val.py --img 1280 --data scooter.yaml --weights --weights runs/train/exp4/weights/best.pt
