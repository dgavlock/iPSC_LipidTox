FROM python:3.10-slim
WORKDIR /app
RUN apt-get update && apt-get install -y     r-base     libcurl4-openssl-dev     libssl-dev     libxml2-dev     && rm -rf /var/lib/apt/lists/*
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8888 5000
CMD ["bash"]
