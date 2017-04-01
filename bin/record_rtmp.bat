set /P url=enter url: 

set /P file=enter file name: 

set /p time=enter time (ex: 00:05:00 for 5 minutes): 

call ffmpeg -i %url%  -t %time% -c copy %file%.mp4


