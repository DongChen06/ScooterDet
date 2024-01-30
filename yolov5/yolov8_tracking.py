from ultralytics import YOLO

# Load an official or custom model
model = YOLO('/home/dong9/PycharmProjects/ScooterDet/yolov5/runs/detect/train2/weights/best.pt')  # Load an official Detect model

# Perform tracking with the model
# results = model.track(source="https://youtu.be/LNwODJXcvt4", show=True)  # Tracking with default tracker
results = model.track(source="test_video2.mp4", show=False, tracker="bytetrack.yaml", save=True)  # Tracking with ByteTrack tracker