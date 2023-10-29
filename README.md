# Bike Sales Analysis

## Tableau Visualization

[Tableau Viz Link](https://public.tableau.com/app/profile/darpan.choudhary/viz/BikeSalesAnalysis_16985812629360/SalesDashboard?publish=yes)

<img width="1434" alt="Screenshot 2023-10-29 at 9 44 39 AM" src="https://github.com/darpanITadept/BikeSales_Analysis/assets/112990024/ce3fe833-fd45-4c03-ac54-08d38f96e9f2">

## Overview

This project is an example sales analysis project that combines data analysis using Python (Pandas and SQL) with data visualization in Tableau. The goal of this project is to gain insights from a sales dataset and present those insights in an interactive Tableau dashboard.

## Dataset

The dataset used in this project is a sales dataset with more the 113k entries, which includes information such as date, customer details, product information, order quantity, cost, revenue, and profit. The dataset is provided as a CSV file and has been preprocessed to ensure data quality.

## Data Analysis and Cleaning

To prepare the data for analysis, the following steps were taken (For a detailed view, Check Analysis.ipynb file above):

1. The 'Date' column was converted to a datetime format for easy date-based analysis.
2. Duplicate rows were removed from the dataset.
3. Missing values were checked, and it was confirmed that the dataset contains no missing data.

## SQL Queries

SQL queries were used to perform various analyses on the dataset. Here are some examples 
(For a detailed view, Check Analysis.sql file above):

- Total revenue and profit analysis by year.
- Sales by age group and gender.
- Most profitable products.
- Average order quantity by country and state.
- Monthly sales trend.
- Product category sales distribution for a specific year.
- Total sales by sub-category for a specific product category.

## Python Analysis

Python, Pandas, and data visualization libraries were used for in-depth analysis and insights. For example, Python code was used to calculate yearly sales growth, customer age group distribution, and product category sales distribution. Data visualization libraries were employed to create various plots and charts to enhance the analysis.

## Results

The analysis of the dataset revealed several key insights, including:

- Yearly sales trends.
- Profitable products and categories.
- Sales distribution by age group and gender.
- Monthly sales patterns.
- Product category performance.

## Tableau Visualization

Based on the data analysis, an interactive Tableau dashboard was created. This dashboard allows users to explore the sales data visually, providing insights into sales trends, geographical distribution, and product performance. The Tableau visualization is accessible via the provided link above.

## Repository Contents

- `Sales.csv`: The dataset used for analysis.
- `Analysis.ipynb`: Jupyter Notebook containing Python pandas. 
- `Analysis.sql`: SQL code for data analysis.
- `Tableau viz line`: Tableau workbook file for the visualization.

## Installation and Usage

To interact with the project, follow these steps:

1. Clone this GitHub repository to your local machine.
2. Install the required Python libraries using `pip install -r requirements.txt` (if provided).
3. Run the Jupyter Notebook `Analysis.ipynb` to explore the Python analysis.
4. Use the provided Tableau visualization link to interact with the sales dashboard.


## Author

- Darpan Choudhary
- Contact: darpan.itadept@gmail.com
- LinkedIn: [linkedin.com/in/darpan44](https://www.linkedin.com/in/darpan44/)

## Acknowledgments

I'd like to acknowledge the open-source community, the creators of Pandas, Tableau, and other libraries used in this project. Special thanks to the GitHub and Stack Overflow communities for their valuable contributions and support.
