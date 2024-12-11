# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port your application runs on (if applicable)
EXPOSE 8000

# Specify the command to run the application
# Replace `app.py` with the entry point of your application
CMD ["python", "app.py"]
