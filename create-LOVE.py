# I know, a Python file in a Lua repo...

import os
import shutil
import zipfile
from pathlib import Path

program_folder = Path(__file__).parent

game_folder = input("Type the folder that contains the game: ")

def compact_love_file(game_folder):
    if os.path.exists(f'{program_folder}\\{game_folder}'):
        with zipfile.ZipFile(f'{game_folder}.zip', 'w', zipfile.ZIP_STORED) as zipf:
            for roots, dirs, files in os.walk(game_folder):
                os.path.join(roots, files)
                    print(f'{root}/{folder}/{file}')
compact_love_file(game_folder)
