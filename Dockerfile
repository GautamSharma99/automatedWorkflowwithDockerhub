# use the official python image from the docker hub
FROM python:3.9-slim

# set the working directory
WORKDIR /app

# copy the current directory contents into the container at \app
COPY . /app

# install any needed packages specified in requirements.txt
RUN pip install flask

# make port 5000 available to the world outside this container
EXPOSE 5000

# run app.py when the container launches
CMD ["pyhton", "app.py"]