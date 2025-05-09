# Dockerfile
FROM python:3.10

WORKDIR /app

# Copy dependency list first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose Flask default port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
