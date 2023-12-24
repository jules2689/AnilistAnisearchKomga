FROM mcr.microsoft.com/playwright:v1.40.0-jammy

RUN useradd -ms /bin/bash crawler
RUN apt-get -y install python3-pip

USER crawler

WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt


COPY mangaMetadata.py .


CMD ["python3", "-u", "mangaMetadata.py"]
