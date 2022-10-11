FROM ubuntu
FROM python
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /App/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /App
CMD python /App/model.py && python /App/server.py

 
