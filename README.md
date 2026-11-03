# MSME India 360 🇮🇳
### A Data Analytics Project | Trimester 1 | AIDTM

[![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue?logo=python)](https://www.python.org/)
[![SQL Server](https://img.shields.io/badge/SQL-Microsoft%20SQL%20Server-red?logo=microsoftsqlserver)](https://www.microsoft.com/en-us/sql-server)
[![Jupyter Notebook](https://img.shields.io/badge/Jupyter-Notebook-orange?logo=jupyter)](https://jupyter.org/)

## 📌 Project Overview

**MSME India 360** is a Trimester 1 Business Analytics project undertaken as part of the PGDM – AI & Data Science programme at the Adani Institute of Digital Technology Management (AIDTM).

The project explores India's Micro, Small and Medium Enterprises (MSMEs) ecosystem through data-driven analysis of registrations, employment generation, and credit support.

Our team approached the project from the perspective of a Data Analytics Team at an MSME consulting organization, aiming to understand regional variations, enterprise distribution, employment patterns, and financial accessibility within the MSME sector.

By combining Python-based exploratory data analysis with SQL-based querying, the project seeks to uncover meaningful insights that can support informed business and policy decisions.

## 🎯 Problem Statement

How can data analytics help us understand India's MSME landscape, identify regional disparities, assess employment and credit trends, and evaluate the inclusion of women in the MSME sector?

## 🎯 Project Objectives

- Analyze MSME registration trends across Indian States and Union Territories.
- Examine employment generation and its regional distribution.
- Explore credit support and average credit per MSME.
- Understand the distribution of Micro, Small, and Medium enterprises.
- Investigate women's participation and inclusion in the MSME ecosystem.
- Identify regional patterns and disparities through data-driven analysis.
- Derive meaningful insights to support business and policy decisions.

## 📊 Dataset Overview

The analysis uses three datasets representing different dimensions of the Indian MSME ecosystem.

| Dataset | Focus |
|---|---|
| MSME Registrations | State/UT-wise MSME registrations and enterprise distribution |
| MSME Employment | Employment generation and average employment per MSME |
| MSME Credit Support | MSME loans, disbursed amounts, and average credit per MSME |

The datasets are included in the `Python/` directory.

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data analysis and preprocessing |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| Jupyter Notebook | Exploratory Data Analysis |
| Microsoft SQL Server | Database operations and analytical queries |
| GitHub | Project documentation and version control |

## 🔍 Methodology

The project follows a structured Business Analytics workflow:

1. **Data Exploration:** Understanding the structure, variables, and characteristics of the three datasets.
2. **Data Cleaning:** Preparing the data for analysis and handling inconsistencies.
3. **Exploratory Data Analysis:** Investigating patterns, distributions, and relationships using Python.
4. **SQL Analysis:** Performing database queries, aggregations, filtering, classifications, and joins.
5. **Data Visualization:** Representing important trends through charts and graphs.
6. **Insight Generation:** Identifying meaningful patterns across MSME registrations, employment, and credit.
7. **Final Presentation:** Communicating the findings through a structured project presentation.

## 📈 Key Areas of Analysis

### 1. MSME Registration Analysis
- State/UT-wise comparison of total MSME registrations.
- Identification of States/UTs with the highest registrations.
- Analysis of Micro Enterprise share.
- Classification of MSME ecosystems based on registration levels.

### 2. Employment Analysis
- Comparison of total employment across States/UTs.
- Calculation of average employment per MSME.
- Identification of States/UTs with higher average employment.

### 3. Credit Support Analysis
- Comparison of credit support across States/UTs.
- Analysis of average credit per MSME.
- Identification of States/UTs with below-average credit per MSME.

### 4. Integrated MSME Analysis
The registration, employment, and credit datasets are combined to create a State/UT-wise analytical report.

This integrated analysis helps identify States/UTs that have above-average MSME registrations but below-average credit per MSME and employment per MSME.

### 5. Women's Inclusion
The project also explores women's participation in the MSME ecosystem to understand inclusion and representation within the sector.

## 💡 Key Insights

The project investigates important dimensions of India's MSME ecosystem, including:

- Regional differences in MSME registrations.
- The dominance of Micro Enterprises in the MSME sector.
- Employment generation across States/UTs.
- Differences in average credit per MSME.
- Regional disparities in employment and credit metrics.
- Women's inclusion within the MSME ecosystem.

Detailed findings, statistics, and visualizations are documented in the final Jupyter Notebook and project presentation.

## 📁 Repository Structure

```text
MSME_India_360/
│
├── Python/
│   ├── MSME_Analysis.ipynb
│   ├── MSME_India_Final_Analysis.csv
│   └── msme_credit_support_state_2024.csv
│   ├── msme_employment_state_2024.csv
│   └── msme_udyam_registrations_state_2024.csv
│
├── SQL/
│   └── MSME_Indian_Analysis.sql
│
├── Presentation/
│   ├── MSME_India_360_Presentation.pptx
│   └── MSME_India_360_Presentation.pdf
│
└── README.md
```

## 📦 Project Deliverables

### Python Analysis
The [`Python/`](Python/) directory contains:

- Three source datasets.
- Final Jupyter Notebook with data analysis and visualizations.
- Final analyzed CSV dataset.

### SQL Analysis
The [`SQL/`](SQL/) directory contains the SQL Server script used for database operations and analytical queries.

[View SQL Analysis](SQL/MSME_Indian_Analysis.sql)

### Project Presentation

The final presentation summarizes the project's problem statement, analytical methodology, key findings, and insights into India's MSME ecosystem.

- **View Presentation:** [MSME India 360 – PDF](presentation/MSME_India_360_Presentation.pdf)
- **Download PowerPoint:** [MSME India 360 – PPTX](presentation/MSME_India_360_Presentation.pptx)

The PDF version is provided for convenient viewing directly in the browser, while the PowerPoint version is available for download.


## 🚀 How to Explore the Project

1. Clone or download this repository.
2. Explore the datasets in the `Python/` directory.
3. Open `MSME_Analysis.ipynb` using Jupyter Notebook or JupyterLab.
4. Install the required Python libraries.
5. Run the notebook cells to explore the analysis.
6. Open `SQL/MSME_Indian_Analysis.sql` in Microsoft SQL Server Management Studio.
7. Import the three datasets into SQL Server using the table names specified in the SQL script.

**Note:** The SQL script requires the three datasets to be imported into SQL Server as tables named `MSME_Registrations`, `MSME_Employment_State`, and `MSME_Credit_Support` before executing the analytical queries.

## 👥 Team

This project was completed collaboratively as part of the Trimester 1 Business Analytics curriculum at AIDTM.

## 🙏 Acknowledgements

We sincerely thank our faculty at the Adani Institute of Digital Technology Management (AIDTM) for their guidance, support, and valuable feedback throughout the project.

This project provided an opportunity to apply analytical concepts to a real-world business problem and strengthen our understanding of data-driven decision-making.

---

**Project:** MSME India 360  
**Programme:** PGDM – AI & Data Science  
**Institute:** Adani Institute of Digital Technology Management (AIDTM)  
**Trimester:** 1  
**Domain:** Business Analytics | Data Analytics | MSME Ecosystem
