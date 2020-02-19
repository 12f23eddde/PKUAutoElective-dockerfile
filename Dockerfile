FROM anibali/pytorch:no-cuda

LABEL maintainer="12f23eddde@gmail.com"

RUN pip install --no-cache-dir \
    -i https://pypi.tuna.tsinghua.edu.cn/simple \
    lxml \
    numpy \
    Flask \
    joblib \
    Pillow \
    requests \
    simplejson 

# 终端中文支持
ENV LANG C.UTF-8

# 复制文件
COPY ["autoelective", "/workspace/autoelective/"]

COPY ["cache", "/workspace/cache/"]

COPY ["log", "/workspace/log/"]

COPY ["main.py", "requirements.txt", "user_agents.txt", "/workspace/"]

# CMD似乎有一些奇怪的bug
ENTRYPOINT ["python", "/workspace/main.py", "-m", "-c", "/app/config.ini"]