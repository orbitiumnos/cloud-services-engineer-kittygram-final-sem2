#FROM python:3.10 AS build

FROM python:3.9
WORKDIR /app
RUN python -m pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY . .
RUN mkdir -p /app/media /static
CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]

#FROM python:3.10-alpine
#ENV PYTHONUNBUFFERED=1
#COPY --from=build /app /app
#EXPOSE 9000
#RUN ls -la /app
#CMD ["python","manage.py","runserver","127.0.0.1:9000"]