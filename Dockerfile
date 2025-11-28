# Base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy only requirements first (better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project
COPY . .

# Expose application port (change as needed)
EXPOSE 5000

# Start the application
CMD ["python", "app.py"]
