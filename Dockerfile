FROM ubuntu:16.04

LABEL author=sebas.rivera96@gmail.com

# Copy all the files needed to run the app
COPY . /home/JunkClassifier/app

# Set the DEFAULT working directory
WORKDIR /home/JunkClassifier/app

# Install all the dependencies, frameworks, libraries, etc.
RUN apt-get -y update && apt-get -y upgrade &&\
    apt-get install -y python3 python3-pip &&\
    pip3 install -r requirements.txt
    # npm install electron -g &&\
    # npm install 

# Expose a port to the host
EXPOSE 5000

# Execute the app
WORKDIR /home/JunkClassifier/app/engine
CMD ["python3", "object_detection.py"]

