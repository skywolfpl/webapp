# Use the official Python image from the Docker Hub
FROM python:3.14.0a2-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY src /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=/app/main.py

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]