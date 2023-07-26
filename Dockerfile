FROM paidax/dev-containers:ubuntu22.04-py3.11-v2.5

RUN git clone https://github.com/THUDM/ChatGLM2-6B && \
    cd ChatGLM2-6B && \
    pip install -r requirements.txt

WORKDIR /home/ChatGLM2-6B
COPY . .
