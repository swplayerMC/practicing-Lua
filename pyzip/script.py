import os
import shutil
from zipfile import ZipFile
from pathlib import Path
program_folder = Path(__file__).parent
file_to_add = ''

with ZipFile('zipfile.zip', 'w') as dotzip:
    dotzip.write(f'{program_folder}')

