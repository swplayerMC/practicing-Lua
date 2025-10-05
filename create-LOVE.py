# I know, a Python file in a Lua repo...

import os
import shutil
import zipfile
from pathlib import Path

program_folder = Path(__file__).parent

game_folder = input("Type the folder that contains the game: ")

def compact_love_file(game_folder):
    if os.path.exists(program_folder / game_folder):
        try:
            with zipfile.ZipFile(f'{game_folder}.zip', 'w', zipfile.ZIP_STORED) as zipf:
                for file, folder in os.walk(game_folder):
                    zipf.write(file)
        except Exception as e:
            print(e)
