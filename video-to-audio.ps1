$fileName = "last-recorded-stream.mkv"
$dir = "D:\past streams"

$out = ($fileName).SubString(0,10)

Set-Location $dir

#Comment/uncomment the lines you need for the preferred codec.

#To Wav (Highest quality, highest disk space)
ffmpeg -i $fileName -vn "$out.wav" 

#to 128kbit mp3 (most accessible format)
#ffmpeg -i $fileName -b:a 128K -vn "$out.mp3" 
