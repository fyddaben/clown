# clown
Translate video to imgs, and use it in production. Use canvas imitate video methods, like play , pause, and so on;

## 镜像使用流程

1. 下载环境镜像

```
    docker pull fyddaben/clown:yao
```
2. 启动镜像，这里要配置下

```
docker run -it  -v xxxx:/home/work/video fyddaben/clown:yao /bin/bash

```
- `xxxx` 是你自己本地，放置视频的绝对地址，最好是在`Users`目录下，否则请在docker->Perference->File Sharing里面进行配置添加

3. 启动起来后
```
    vi run.sh
```
修改里面的`f-k-1.mp4`，换成你自己视频的名字。

4. 开始编译

```
    sh ./run.sh
```
5. 等待大约10分钟左右,出现
```
Json file has done


```



```

docker exec -it de281 /bin/bash

```
