#syntax=docker/dockerfile:1

FROM ghcr.io/burakovali/pythonbase:latest

WORKDIR /app

RUN git clone https://github.com/burakovali/streamlit-server.git && cd streamlit-server && git pull

RUN  pip install -r streamlit-server/requirements.txt 

CMD cd streamlit-server && streamlit run "0_🗂_Home.py" server

LABEL org.opencontainers.image.source="https://github.com/burakovali/docker-dpi-analysis"
