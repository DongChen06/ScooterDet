from moviepy.video.io.ffmpeg_tools import ffmpeg_extract_subclip
ffmpeg_extract_subclip("/home/dong9/PycharmProjects/ScooterDet/yolov5/test_video.mp4", 14 * 60, 16 * 60, targetname="test_video2.mp4")