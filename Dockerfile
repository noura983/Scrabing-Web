
FROM python:3.8

WORKDIR /MyApp

COPY . /MyApp

# Install dependencies for package management and ChromeDriver extraction
RUN apt-get update && apt-get install -y wget unzip

# Download ChromeDriver for Chrome version 122.0.6261.128 (replace if needed)
RUN wget https://storage.googleapis.com/chrome-for-testing-public/122.0.6261.128/linux64/chromedriver-linux64.zip

# Extract ChromeDriver and place it in the application directory
RUN unzip chromedriver-linux64.zip && mv chromedriver-linux64/chromedriver /MyApp/chromedriver

# Install dependencies from requirements.txt
COPY requirements.txt /MyApp
RUN pip install -r requirements.txt

# Copy your Python script
COPY scrape.py /MyApp



# Execute your Python script using the absolute path to ChromeDriver
CMD ["python3", "/MyApp/scrape.py"]