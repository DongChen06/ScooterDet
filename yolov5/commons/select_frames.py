import cv2
import os

# Function to extract frames from a video
def extract_frames(input_video_path, output_folder, frame_interval):
    # Create output folder if it doesn't exist
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    # Open the video file
    cap = cv2.VideoCapture(input_video_path)

    # Get the frames per second (fps) of the input video
    fps = int(cap.get(cv2.CAP_PROP_FPS))

    # Initialize frame counter
    frame_count = 0

    # Read the video frame by frame
    while True:
        ret, frame = cap.read()

        # Break the loop if the video is finished
        if not ret:
            break

        # Save frames at specified intervals
        if frame_count % frame_interval == 0:
            frame_path = os.path.join(output_folder, f"frame_{frame_count}.jpg")
            cv2.imwrite(frame_path, frame)

        # Increment frame counter
        frame_count += 1

    # Release the video capture object
    cap.release()

# Example usage
input_video_path = '../test_video.mp4'
output_folder = '../Unlabled_images'
frame_interval = 10

extract_frames(input_video_path, output_folder, frame_interval)
