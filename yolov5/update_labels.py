import json
import os
import argparse

def update_labels_in_json(json_path):
    """Updates labels in a JSON file, replacing underscores with spaces."""
    with open(json_path, 'r') as file:
        data = json.load(file)
    
    # Flag to check if an update is needed
    update_needed = False

    # Iterate through all shapes and update labels
    for shape in data.get('shapes', []):
        original_label = shape['label']
        new_label = original_label.replace("_", " ")
        if new_label != original_label:
            shape['label'] = new_label
            update_needed = True

    # Write updated JSON back to file, if any label was updated
    if update_needed:
        with open(json_path, 'w') as file:
            json.dump(data, file, indent=4)
        return True
    return False

def process_folder(folder_path):
    """Iterates through all JSON files in the folder and updates labels."""
    updated_files = 0
    for filename in os.listdir(folder_path):
        if filename.endswith(".json"):
            json_path = os.path.join(folder_path, filename)
            if update_labels_in_json(json_path):
                updated_files += 1
                print(f"Updated labels in {filename}")

    print(f"Total updated files: {updated_files}")

def main():
    parser = argparse.ArgumentParser(description='Update labels in JSON files by replacing underscores with spaces.')
    parser.add_argument('-fp', '--folder_path', type=str, required=True, help='Path to the folder containing JSON files.')
    args = parser.parse_args()

    folder_path = args.folder_path
    process_folder(folder_path)

if __name__ == '__main__':
    main()
