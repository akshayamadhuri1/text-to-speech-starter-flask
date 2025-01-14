FROM python:3.11-slim

WORKDIR /usr/local/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variables (if needed)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["flask", "run"]
