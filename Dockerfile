# Use the Python 3.10 base image from Docker Hub
FROM python:3.10

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the requirements.txt file from the local machine to /tmp/requirements.txt inside the container
COPY ./requirements.txt /tmp/requirements.txt

# Run pip (Python package manager) to install the Python packages listed in requirements.txt
RUN pip install -r /tmp/requirements.txt

# Copy all files from the current directory (where the Dockerfile is located) to the /app directory in the container
COPY . /app

# Expose port 8000 to allow communication with the application running inside the container
EXPOSE 8000

# Set the default command to run when the container starts - start the Django development server
CMD python manage.py runserver 0.0.0.0:8000

