rm -rf dist app/img app/dist &&

mkdir dist app/img app/dist &&

/home/ffmpeg/ffmpeg -i  ../video/f-k-1.mp4 -r 25 ./app/img/src_%03d.jpg &&

node --stack-size=32000 app/app.js -b 245,245,245,255 -w 1400 -g 1080 -f 25 &&  tar zcvf ../video/bao.tar.gz ./app/dist 

#2324
