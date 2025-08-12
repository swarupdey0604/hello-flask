# Use official Python base image (slim version for smaller size)
FROM python:3-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY app.py .

# Expose port 5000 for the app
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
