# Bremont


This project is a python script utilizes Selenium and BeautifulSoup to scrape watch data from the Bremont website. 
The script utilizes a headless Chrome browser for scraping.
User agent randomization is implemented to mimic real browser behavior and avoid website blocking.
Error handling is included to gracefully handle potential exceptions during the scraping process.
Data cleaning and formatting steps are applied to the extracted data.
This script provides a basic framework for scraping watch data from the Bremont website. 

Data Exracted :reference_number, watch_URL, type, brand, year_introduced, parent_model, specific_model, nickname, marketing_name, style, currency, price, image_URL, made_in, case_shape, case_material, case_finish, caseback, diameter, between_lugs, lug_to_lug, case_thickness, bezel_material, bezel_color, crystal, water_resistance, weight, dial_color, numerals, bracelet_material, bracelet_color, clasp_type, movement, caliber, power_reserve, frequency, jewels, features, description, short_description

-----------------------
This project will:
﻿﻿Run your Python script on an AWS EC2 instance
﻿﻿Automate Python script using CRON
﻿﻿Run your Python script in a Docker container
------------------
init.sh file:
This script automates the setup process for a Python environment that utilizes Selenium with ChromeDriver for web automation tasks.

-------------------
src directry :
   contains python scripts and data folder to save the excuted csv files  
   note : each collection link is scraped indvisually because there were challenges in making loop through the kinks 


----------------
run.sh:
This script automates the scraping of data from specific sources and organizes the results into timestamped CSV files. It's designed to be executed periodically by a cron job.
the exuted data should be saved in Data Directory 

Cron Job :
0 1 * * * /home/ubuntu/Bremont/run.sh 
------------------
Docker directory :
   Dockerfile: This Dockerfile defines the instructions for building a Docker image containing all the 
   necessary components to execute the Python web scraping script (scrape.py) that utilizes ChromeDriver.
   requirements.txt : contains all the dependencies 
   scrape.py :pythone web scraping script 
