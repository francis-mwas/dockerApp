FROM python:3.6
RUN pip install FLASK==1.1.1 redis==2.10.5
RUN useradd -ms /bin/bash/ admin
USER admin 
WORKDIR /app
COPY app /app
CMD ["python", "app.py"]
