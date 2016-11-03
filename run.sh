rm -rf dist app/img app/dist &&

mkdir dist app/img app/dist &&

ffmpeg -i  ./video/f-k-1.mp4 -r 25 ./app/img/src_%03d.jpg &&

node --stack-size=32000 app/app.js -b 245,245,245,255 -w 1400 -g 1080 -f 25 &&     cp ./app/dist/* ./dist/

#2324
