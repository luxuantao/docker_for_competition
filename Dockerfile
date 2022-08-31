FROM ubuntu:20.04

MAINTAINER luxuantao "luxuantao@126.com"

RUN apt-get update -y && \  
    apt-get install -y python3-pip python3-dev

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip3 install torch==1.8.2+cu111 torchvision==0.9.2+cu111 torchaudio==0.8.2 -f https://download.pytorch.org/whl/lts/1.8/torch_lts.html 

COPY . /

ENTRYPOINT [ "python3" ]

CMD [ "app/app.py" ]
