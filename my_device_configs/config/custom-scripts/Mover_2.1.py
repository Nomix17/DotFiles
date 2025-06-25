import os
import json

class Extentions:
  def __init__(self,Type:list,path:str):
    self.type = Type
    self.path = path

def path(p):
  return os.path.expanduser(p)

def check_if_the_folder_exist():
  for fullpath in paths.values():
    if not os.path.exists(path(fullpath)):
      os.mkdir(path(fullpath))

def move():
  IMG_TYPE = Extentions(['jpg', 'png', 'jpeg', 'gif','bmp', 'tiff', 'svg', 'webp'],path(paths['Images_folder']))
  EXEC_TYPE = Extentions(['exe','deb', 'bat','msi','apk','iso','xapk','run','appimage','rpm','bat','java','py','cmd','bin'],path(paths['Programmes_folder']))
  AUDIO_TYPE = Extentions(['mp3','ogg','wav', 'aac', 'ogg', 'flac', 'alac', 'wma', 'm4a'],path(paths['Audios_folder']))
  VIDEO_TYPE = Extentions(['mp4', 'mkv', 'webm', 'm4v', 'mov', 'avi', 'wmv', 'mpg', 'flv'],path(paths['Videos_folder']))
  DOC_TYPE = Extentions(['txt','json', 'pdf', 'doc', 'docx', 'odt', 'rtf', 'tex', 'wpd','pptx','odp'],path(paths['Documments_folder']))
  ZIP_TYPE = Extentions(['rar', 'zip','gz','7z','tar'],path(paths['Compressed_folder']))
  TORRENT_TYPE = Extentions(['torrent'],path(paths['Torrents_folder']))

  objects_list=[IMG_TYPE,EXEC_TYPE,AUDIO_TYPE,VIDEO_TYPE,DOC_TYPE,ZIP_TYPE,TORRENT_TYPE]

  Dowload_folder=path(paths['FDM_folder'])
  files = os.listdir(Dowload_folder)

  print("The Download Folder Contains: ")
  for file in files:
    print(file)

  check = input("Are You Sure you want to move them All (Y/n): ")

  if check.lower() in "yes " or check == "":

    for file in files:
      ex = file.split('.')[-1]
      found = False
      for ob in objects_list:
        if ex.lower() in ob.type:
          os.rename(f"{Dowload_folder}/{file}",f"{ob.path}/{file}")
          print(f"{file} has been moved.\n")
          found = True
          break
      if not found :
        print(f"{file} is unknown.\n")

if not os.path.exists(path("~/.config/Move")):
  os.mkdir(path("~/.config/Move"))

if not os.path.exists(path('~/.config/Move/config.json')):
  content ={
		"FDM_folder":"~/FDM",
		"Images_folder":"~/Downloads/Images",
		"Programmes_folder":"~/Downloads/Programs",
    "Audios_folder":"~/Downloads/Audios",
		"Videos_folder":"~/Downloads/Videos",
		"Documments_folder":"~/Downloads/Documents",
		"Compressed_folder":"~/Downloads/Compressed",
		"Torrents_folder":"~/Downloads/Torrent"
  }
  with open(path('~/.config/Move/config.json'),'w') as file:
    json.dump(content,file)


with open(path('~/.config/Move/config.json'),'r') as file:
  paths = json.load(file)

check_if_the_folder_exist()
move()
