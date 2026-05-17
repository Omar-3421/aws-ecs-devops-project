# Use lightweight Python image
FROM python:3.12-slim

# Create app directory
WORKDIR /app

# Copy requirements first
COPY app/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app/ .

# Create non-root user
RUN useradd -m appuser

# Switch to non-root user
USER appuser

# Expose application port
EXPOSE 80

# Run application with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]