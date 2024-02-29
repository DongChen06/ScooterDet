import json
import os
from PIL import Image, ImageDraw
import matplotlib.pyplot as plt

def draw_bounding_boxes(image_path, annotations):
    """Draw bounding boxes and labels on an image."""
    with Image.open(image_path) as im:
        draw = ImageDraw.Draw(im)
        for annotation in annotations:
            label = annotation['label']
            points = annotation['points']
            top_left, bottom_right = points[0], points[1]
            draw.rectangle([top_left, bottom_right], outline="red", width=3)
            draw.text(top_left, label, fill="red")
        return im

def process_folder(folder_path):
    label_count = {}
    images_to_show = 2 # Number of images to visualize
    for filename in os.listdir(folder_path):
        if filename.endswith(".jpg") or filename.endswith(".jpeg"):
            image_path = os.path.join(folder_path, filename)
            json_path = os.path.join(folder_path, os.path.splitext(filename)[0] + '.json')
            
            if os.path.exists(json_path):
                with open(json_path) as f:
                    data = json.load(f)
                    shapes = data.get('shapes', [])
                    for shape in shapes:
                        label = shape['label']
                        label_count[label] = label_count.get(label, 0) + 1

                    if images_to_show > 0:
                        im = draw_bounding_boxes(image_path, shapes)
                        im.show()
                        images_to_show -= 1

    return label_count

# Specify the path to your folder
folder_path = "D:/ScooterDet"
label_count = process_folder(folder_path)
print("Label counts:", label_count)
