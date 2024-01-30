from ultralytics.utils.benchmarks import benchmark

# Benchmark
# benchmark(model='yolov8n.pt', data='scooter.yaml', imgsz=1280, half=False, device=0)
from ultralytics import YOLO

# Load a model
model = YOLO('yolov8n.pt')  # load an official model

# Validate the model
metrics = model.val(data='scooter.yaml', imgsz=1280, half=False, device=0)  # no arguments needed, dataset and settings remembered
metrics.box.map    # map50-95
metrics.box.map50  # map50
metrics.box.map75  # map75
metrics.box.maps   # a list contains map50-95 of each category