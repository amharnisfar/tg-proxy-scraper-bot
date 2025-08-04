# Use a specific version of the official Python image based on Debian Bookworm for better dependency compatibility. [16]
FROM python:3.9-slim-bookworm

# 1. --- System Dependencies Installation ---
# Install necessary system packages for Chromium and other tools. [16]
# - "wget" and "unzip" are used for manually installing chromedriver if needed.
# - "libglib2.0-0", "libnss3", etc., are runtime dependencies for headless Chromium. [16]
# - "--no-install-recommends" prevents installation of unnecessary packages, keeping the image smaller.
RUN apt-get update && apt-get install -y --no-install-recommends \
    chromium \
    libglib2.0-0 \
    libnss3 \
    libgconf-2-4 \
    libfontconfig1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 2. --- Python Dependencies Installation ---
# Set the working directory.
WORKDIR /app

# Copy only the requirements file first to leverage Docker's build cache.
COPY requirements.txt .

# Install Python packages.
RUN pip install --no-cache-dir -r requirements.txt

# 3. --- Application Setup ---
# Copy the rest of your application's source code into the container.
COPY . .

# 4. --- Security and User Setup ---
# Create a dedicated user to run the application for security reasons. [7]
RUN useradd --create-home appuser
# Switch to the new user.
USER appuser

# 5. --- Run Command ---
# Set the command to run your bot when the container starts. [3, 8]
CMD ["python", "bot.py"]
