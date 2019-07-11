FROM python:3.5-slim

LABEL author=sebas.rivera96@gmail.com

RUN apt-get -y update && apt-get -y upgrade 

# Copy all the files needed to run the app
COPY . /app

# Install all the dependencies, frameworks, libraries, etc.
WORKDIR /app
RUN pip3 install -r requirements.txt

# Move to path where the Python Script is located
WORKDIR /app/engine

# Execute the app
CMD ["python3", "object_detection.py"]