# Use Python 3.11 slim image (matches your dev environment)
FROM python:3.11-slim-bookworm

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 5000

# Command to run the FastAPI app
CMD ["python3", "app.py"]
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]