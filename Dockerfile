FROM paidax/dev-containers:ubuntu22.04-py3.11-v2.5

RUN apt update && \
    apt install -y curl && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt install -y git-lfs && \
    git lfs install && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/THUDM/ChatGLM2-6B && \
    cd ChatGLM2-6B && \
    pip install -r requirements.txt && \
    git clone https://huggingface.co/THUDM/chatglm-6b

WORKDIR /home/ChatGLM2-6B
COPY . .
