FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required packages from the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Set environment variables
ENV FLASK_APP=app.py

# Specify the command to run the application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5001"]