# PKUAutoElective-dockerfile
#### Build

1. 配置docker环境
2. 将Dockerfile放入PKUAutoElective文件夹
3. `docker build -t --no-cache 12f23eddde/pku-auto-elective {文件夹路径}`

#### Run

```bash
docker run -d \
           --name=PKUAutoElective \
           --user="$(id -u):$(id -g)" \
           --ipc=host \
           -p 7074:7074 \   # 监控
           -v {文件夹路径}:/app \   # 文件夹内存放配置文件config.ini
           12f23eddde/pku-auto-elective
```