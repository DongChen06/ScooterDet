import json
import os
import argparse
import shutil

def update_labels_in_json(json_path, labels_path):
    """Updates labels in a JSON file, replacing underscores with spaces, and moves it to the labels directory."""
    with open(json_path, 'r') as file:
        data = json.load(file)
    
    update_needed = False

    for shape in data.get('shapes', []):
        original_label = shape['label']
        new_label = original_label.replace("_", " ")
        if new_label != original_label:
            shape['label'] = new_label
            update_needed = True

    new_json_path = os.path.join(labels_path, os.path.basename(json_path))
    if update_needed:
        with open(new_json_path, 'w') as file:
            json.dump(data, file, indent=4)
    else:
        shutil.move(json_path, new_json_path)

def move_image_files(image_path, images_path):
    """Moves image files to the images directory."""
    new_image_path = os.path.join(images_path, os.path.basename(image_path))
    shutil.move(image_path, new_image_path)

def process_folder(folder_path):
    """Creates subfolders, updates JSON labels, and organizes files into subfolders."""
    images_path = os.path.join(folder_path, "images")
    labels_path = os.path.join(folder_path, "labels")

    # Create subdirectories if they don't exist
    os.makedirs(images_path, exist_ok=True)
    os.makedirs(labels_path, exist_ok=True)

    updated_files = 0
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
        if filename.endswith((".jpg", ".jpeg")):
            move_image_files(file_path, images_path)
        elif filename.endswith(".json"):
            update_labels_in_json(file_path, labels_path)
            updated_files += 1
            print(f"Processed {filename}")

    print(f"Total processed JSON files: {updated_files}")

def main():
    parser = argparse.ArgumentParser(description='Organize files into images/labels subfolders and update JSON labels.')
    parser.add_argument('-fp', '--folder_path', type=str, required=True, help='Path to the folder containing files.')
    args = parser.parse_args()

    folder_path = args.folder_path
    process_folder(folder_path)

if __name__ == '__main__':
    main()
