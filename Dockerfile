FROM mcr.microsoft.com/playwright:v1.40.0-jammy

RUN useradd -ms /bin/bash crawler
RUN apt-get update && apt-get -y install python3-pip

USER crawler

WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt


COPY anisearch anisearch


CMD ["python3", "anisearch/mangaMetadata.py"]
