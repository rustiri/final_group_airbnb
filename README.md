# Final Project – Airbnb Price Prediction

## Overview of First Segment 
First segment consists of the outline of our topic. Please see project description and files structure.

## First Segment Project Description
The following consists the files and folder that were used to analyze and filter data:
* index.html contains file that shows the draft of our final project presentation
* static/js/logic.js contains file that has D3 and Leaflet information to show the map and location.
* static/css/style.css contains file that show the styling of the website.
* static/sf_map.html contains file that show the map and location.
* Resources folder contains csv files for our dataset.
* SF_airbnb_EDA.ipynb contains Jupyter Notebook file to explore and analyze data.
* practice_model.ipynb contans Jupyter Notebook file to analyze data using machine learning model and algorithm.
* SanFranciscoNeighborhoods.json contains GeoJSON file for the map information.
* schema.sql contains file to show the database schema.

## Second Segement Project Description
The following consists the files and folder addition that were used to analyze and filter data:
* index.html contains file that shows the draft of our project presentation
* images folder contains graph images

#### Data exploration phase of the projects: please refer to SF_Airbnb_EDA.ipynb file
In order to understand what statistics were available within the dataset, as well as identifying which values would be ideal for the Machine Learning model, the team used CSV file initially, to skim through the dataset and identify which characteristics of the dataset were preferred as well as locating null values.

The raw dataset was composed by 106 columns of different features, and 8111 rows of detailed Airbnb listings in San Francisco. 

Jupyter Notebook was used to clean the dataset, this was done by reading the listings.csv file using pandas and converted into a dataframe. We started by dropping the columns which we found irrelevant for our propose of analysis, some other columns were renamed accordingly, and an additional “total” column was added to the dataframe which aggregate the “price” and “cleaning fee”. We needed to change some datatype formats as well.

#### Communication Protocols: 
In order to keep updated on the status of each of our parts of the project, we message each other regularly through Slack and organized regular zoom meetings.

#### Analysis phase of the projects: please refer to SF_Airbnb_Data_Visualization.ipynb
![alt text](images/correlation_matrix.png)
![alt text](images/property_room_price.png)
![alt text](images/property_type_vs_price.png)


## Team Member
The following are our team member:
* Anna Bonuan: Cleaning dataset
* Grecia Recinos: Database schema
* Emily Rindner: Machine Learning model 
* Rita O’Rourke: Managing GitHub, Data Visualization
