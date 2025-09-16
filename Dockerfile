# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app folder
COPY app/ ./app/

# Expose port (Hugging Face uses 7860 by default)
EXPOSE 7860

# Set working directory inside container
WORKDIR /app/app

# Run Flask app
CMD ["python", "test.py"]
