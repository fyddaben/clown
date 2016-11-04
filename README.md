# clown
Translate video to imgs, and use it in production. Use canvas imitate video methods, like play , pause, and so on;

## 镜像使用流程

#### 1.下载环境镜像

```
    docker pull fyddaben/clown:yao
```

#### 2. 启动镜像，这里要配置下

```
docker run -it  -v xxxx:/home/work/video fyddaben/clown:yao /bin/bash
```

PS: `xxxx` 是本地共享文件夹，放置视频的绝对地址，最好是在`Users`目录下，否则请在docker->Perference->File Sharing里面进行配置添加


#### 3. 启动起来后

```
    vi run.sh
```

PS:修改里面的`f-k-1.mp4`，换成你自己视频的名字。


#### 4. 开始编译

```
    sh ./run.sh
```

#### 5. 等待大约10分钟左右,出现一下情况，表示处理完成，

```
Json file has done
./app/dist/flow_4.jpg
./app/dist/flow_6.jpg
./app/dist/flow_5.jpg
./app/dist/flow_7.jpg
./app/dist/flow_10.jpg
./app/dist/flow_3.jpg
./app/dist/flow_9.jpg
./app/dist/flow_8.jpg
./app/dist/flow_2.jpg
./app/dist/flow_1.jpg
./app/dist/index.html
./app/dist/frame.json

```

#### 6.打开本地的视频文件夹，会有一个bao.tar.gz ,进行解压，就能看到html文件及所需图片


#### 7.利用nginx或者serve等服务端环境，打开index.html,就可以看到效果
