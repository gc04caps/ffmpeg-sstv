*****************************************************
** 1 Configure playlist.py with your service infos **
*****************************************************

sstv-playlist-config.json file in the bin/scripts directory needs to be updated.
use the tables below to fill in the values in all caps. 

{
	"username": "YOUR USERNAME", 			 --enter your username, keeping the ""
	"password": "YOUR PASSWORD", 			 --enter your password, keeping the ""
	"quality": 1,
	"checkChannel": true,
	"includeBadChannels": true,  			 --change this to false if you want to show only good channels
	"httpTimeoutChannel": 0.5,
	"minQuality": 0, 						 --change this to 720 if you want 720p or bette ronly
	"guideLookAheadMinutes": 5,
	"guideMaxFutureMinutes": 240,
	"server": "SERVER VALUE",  				 --enter your server value from the list, keeping the ""
	"rtmp": false,							 --change this to true if you want rtmp instead of hls
	"service": "SERVICE VALUE"				 --enter your service value from the list, keeping the ""
}

List of Servers:
Server Name 	Value for Config
------------	----------------
EU Random 		deu
DE-Frankfurt 	deu.de1
NL-EVO 			deu.nl2
NL-i3d 			deu.nl1
UK-London 		deu.uk
UK-London2 		deu.uk1
UK-London2 		deu.uk2
US Random 		dna
East 			dnae
West 			dnaw
East-NJ 		dnae1
East-VA 		dnae2
East-CAN 		dnae3
East-CAN2 		dnae4
Asia 			dsg

List of Services:
Service Name		Value for Config
-----------------	----------------
Live247 			view247
Mystreams/Usport 	viewms
StarStreams 		viewss
MMA SR+ 			viewmmasr
StreamTVnow 		viewstvn
MMA-TV/MyShout 		mmatv

********************************************
** 2 run playlist.py to generate playlist **
********************************************

1) double click on playlist.bat
2) check playlist directory for your m3u8 and xml playlists

*************************************
** 3 run record to make recordings **
*************************************

1) go to playlist (m3u8 file) to find the URL you want to record
2) copy that URL to your clipboard
3) double click on record.bat
4) paste the url (right click or ctrl+v) and then press enter
5) enter the name you want to save as (no file extension)
	- if you type test it will be saved as test.mp4
6) enter the duration of the recording 
	- defaults to 02:30:00 if no value given