FROM python:alpine3.8
ENV FLASK_APP=minitwit
COPY . /app
WORKDIR /app
RUN pip install --editable .
RUN flask initdb
EXPOSE 5000
CMD [ "flask", "run", "--host=0.0.0.0"]



