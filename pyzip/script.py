import os
import shutil
from zipfile import ZipFile
from pathlib import Path
program_folder = Path(__file__).parent
file_to_add = ''

try:
    with ZipFile('zipfile.zip', 'w') as dotzip:
        for roots, dirs, files in os.walk(program_folder):
            for file in files:
                if not file in 'script.py':
                    dotzip.write(str(file), arcname=file)


except Exception as e:
    print(e)
