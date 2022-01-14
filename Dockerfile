FROM    python:latest
LABEL   version="0.1"
LABEL   email="Bean-jun"
ENV     path=/root
WORKDIR ${path}

RUN     mkdir APIResource
RUN     mkdir models
RUN     mkdir script
RUN     mkdir utils

COPY    APIResource ${path}/APIResource
COPY    models ${path}/models 
COPY    script ${path}/script
COPY    utils ${path}/utils
COPY    .gitignore ${path}
COPY    app.py ${path}
COPY    config.py ${path}
COPY    LICENSE ${path}
COPY    README.md ${path}
COPY    requirements.txt ${path}

RUN     python -m pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE  8080

CMD     [ "python", "app.py"]
