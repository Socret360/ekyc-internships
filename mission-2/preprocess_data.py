from os import path  # for checking if a path is pointing to a file
from os import makedirs  # for making directories
from os import system  # for running shell commands with python
from glob import glob  # for listing files in a directory

if __name__ == "__main__":
  output_folder = "preprocessed"
  files = [p for p in glob("images/**", recursive=True) if path.isfile(p)
           ]  # get all the files within the data directories

  makedirs(output_folder)  # create output destination directory

  for file in files:
    # split the original path into a list and take everything except the file elements
    out_filename = file.split("/")[1:]
    # remove the file extension from the filename
    out_filename[-1] = out_filename[-1][:out_filename[-1].index(".")]
    # create an output filename from the above list
    out_filename = "_".join(out_filename)
    # create an output file path
    out_path = f"{output_folder}/{out_filename}.jpg"
    # rotate, resize and convert image from file and save it to out_path
    system(f"magick convert {file} -auto-orient -resize 400x700! {out_path}")
