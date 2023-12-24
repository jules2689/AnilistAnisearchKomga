FROM mcr.microsoft.com/playwright:v1.40.0-jammy

RUN useradd -ms /bin/bash crawler

USER crawler

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt


COPY mangaMetadata.py .


CMD ["python", "-u", "mangaMetadata.py"]
