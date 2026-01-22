📊 Customer Behavior Analysis Project
✅ Overview

This project analyzes customer purchase behavior to uncover insights that support business decision-making. It includes data loading, exploratory data analysis (EDA), data cleaning, running SQL queries on a MySQL Server, building a Power BI dashboard, and creating a final report.

The goal of this analysis is to understand customer patterns, preferences, and trends to help improve marketing, sales strategies, and customer engagement.

📁 Dataset

The dataset contains customer transaction records with the following key fields:

Field	Description
CustomerID	Unique identifier for each customer
OrderID	Transaction identifier
TransactionDate	Date of purchase
ProductID	Product identifier
Quantity	Units purchased
Price	Price per unit
TotalAmount	Total spend per transaction
Customer Demographics	Age, gender, location (if available)

Note: Replace this section with the actual dataset name and source used in your project.

🛠 Tools & Technologies
Tool	Purpose
Python (Pandas, NumPy, Matplotlib, Seaborn)	Load data, EDA, cleaning, visualization
MySQL Server	Store cleaned data and run SQL queries
Power BI	Create interactive dashboards
Jupyter Notebook	Document analysis and code
Report (PDF/Markdown)	Summarize insights and recommendations
🧭 Project Steps
1️⃣ Data Loading (Python)

Imported and viewed the dataset using Pandas.

Checked basic summary statistics and structure.

2️⃣ Data Cleaning

Handled missing values, invalid entries, and duplicates.

Converted data types for accurate analysis.

Standardized columns for consistency.

3️⃣ Exploratory Data Analysis (EDA)

Explored distribution of key metrics (sales, quantity, revenue).

Visualized trends over time and customer segments.

Identified top products and customer groups.

4️⃣ SQL Queries (MySQL Server)

Loaded cleaned dataset into MySQL.

Ran analytical queries to summarize customer and product insights.

Examples include:

Total spend per customer

Monthly sales summaries

Product affinity analysis

5️⃣ Dashboard Building (Power BI)

Imported SQL results into Power BI.

Created visuals such as bar charts, trend lines, and heat maps.

Built interactive dashboards for executives and stakeholders.

6️⃣ Report Creation

Documented findings, insights, and business recommendations.

Included visual summaries from Python and Power BI.

📊 Dashboards & Visuals

The Power BI dashboard includes the following pages:

Sales Overview – Total revenue, trend by month/year.

Customer Insights – Top customers, segmentation heat maps.

Product Performance – Best-selling products and categories.

Behavior Patterns – Purchase frequency and seasonal trends.

Screenshot files can be included in the repository if available.

📈 Key Results

Identified top 10 customers contributing to ~X% of revenue.

Discovered seasonal purchasing trends impacting sales cycles.

Highlighted product combinations frequently bought together.

Recommended targeted campaigns for high-value customer segments.

▶️ How to Run This Project
🔹 Prerequisites

Install Python (3.8+)

Install MySQL Server

Power BI Desktop (for dashboards)

🔹 Setup
1. Clone the Repository
git clone <your_repo_url>
cd <project_folder>

2. Create Python Environment
python -m venv venv
source venv/bin/activate      # macOS/Linux
venv\Scripts\activate         # Windows
pip install -r requirements.txt

3. Load Data in Python

Open analysis_notebook.ipynb and run all cells to load and clean the dataset.

4. Load Cleaned Data to MySQL

Execute the “SQL Data Load” script (load_to_mysql.sql) to import data into your MySQL database.

5. Run SQL Queries

Connect to MySQL and execute analytical queries provided in the “SQL Queries” folder.

6. Open Power BI Dashboard

Open the .pbix file in Power BI Desktop

Update data connection to your MySQL server

Refresh visuals

7. View Final Report

Open the Final_Report.pdf (or .md) to see the summary and insights.
