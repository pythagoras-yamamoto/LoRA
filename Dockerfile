FROM arm64v8/python:3.9

RUN apt-get update && apt-get install -y git

RUN pip install torch transformers datasets scikit-learn pandas numpy peft

WORKDIR /app

COPY . /app

RUN chmod +x download_data.sh

CMD ["./download_data.sh"]

