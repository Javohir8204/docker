FROM python:3.11-slim

WORKDIR /Javohir

COPY requirements.txt /Javohir/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /Javohir/

ENV PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0.8013"]