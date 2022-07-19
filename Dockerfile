FROM python:bullseye
COPY requirements.txt ./
COPY qq.ipynb ./
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute qq.ipynb --to html