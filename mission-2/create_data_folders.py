from os import makedirs  # for creating directories

criterias = ["front", "back"]
lightings = ["bright", "dark"]
visibilities = ["fully-shown", "covered"]
placements = ["on-surface", "hand-held"]
rotations = [i * 45 for i in range(8)]  # [0, 45, 90, 135, 180, 225, 270, 315]

if __name__ == "__main__":
  print("===== START =====")
  data_folder = "images"
  counter = 0  # for keeping track of how many directories have been created

  # make sure the below loops are in order of the columns shown in the doc (left to right)
  for criteria in criterias:
    for lighting in lightings:
      for visibility in visibilities:
        for placement in placements:
          for rotation in rotations:
            path = f"{data_folder}/{criteria}/{lighting}/{visibility}/{placement}/{rotation}/"
            makedirs(path)
            counter += 1
            print(f"created: {path}")

  path_multiple = f"{data_folder}/multiple/"
  makedirs(path_multiple)
  counter += 1
  print(f"created: {path_multiple}")

  print("===== DONE =====")
  print(f"number of directories created: {counter}")
