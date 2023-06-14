# Full file name
$fileName = "latest-stream-recording.mkv"

# wav or mp3
$format = "mp3"

# -----------------------------------------------------------
$dir = $PSScriptRoot # Current directory
Set-Location -LiteralPath $dir

$file = Get-Item -LiteralPath $fileName

$in = $file.Name
$out = $file.BaseName

switch ($format) {
    "wav" { ffmpeg -i $in -vn "$out.wav"  }
    "mp3" { ffmpeg -i $in -b:a 320K -vn "$out.mp3" }
}
