FROM python:3.9
WORKDIR /app
COPY . /app

ENV GROQ_API_KEY=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

RUN pip install --no-cache-dir -r ./requirements.txt

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
