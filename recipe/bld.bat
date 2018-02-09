"%PYTHON%" setup.py build_ext --compiler=mingw32 --record record_build.txt
if errorlevel 1 exit 1
"%PYTHON%" setup.py install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
