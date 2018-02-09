"%PYTHON%" setup.py install --compiler=mingw32 --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
