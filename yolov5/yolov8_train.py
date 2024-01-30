from ultralytics import YOLO

# Load a model
# model = YOLO('yolov8n.yaml')  # build a new model from YAML
model = YOLO('yolov8x.pt')  # load a pretrained model (recommended for training) yolov8n, yolov8s, yolov8m, yolov8l, yolov8x
# model = YOLO('yolov8n.yaml').load('yolov8n.pt')  # build from YAML and transfer weights

# Train the model
results = model.train(data='data/scooter.yaml', epochs=100, imgsz=640)