# Crime Data Analysis Project

## Project Overview
This project analyzes crime trends in Ireland using two datasets: `crime_data_set1` and `crime_data_set2`. The data has been processed, cleaned, and joined using Azure Data Factory, resulting in a consolidated dataset named `today.csv`. The analysis aims to provide actionable insights into crime patterns, distribution, and hotspots across Ireland.

---


## Goals and Implemented Logics
### 1. Yearly Crime Trends in Ireland
Analyzed yearly changes in crime rates across Ireland to identify patterns and trends over time.
<img width="289" alt="Image" src="https://github.com/user-attachments/assets/39b4614a-f44b-4166-86f7-1ad3e9aea8d1" />


### 2. Top 5 Offense Types in Ireland
Determined the most common types of offenses committed in Ireland and their frequency.
<img width="428" alt="Image" src="https://github.com/user-attachments/assets/1d20a9eb-7cbd-47b6-ae38-9979f2e7f0c4" />


### 3. Crime Distribution across Counties
Visualized the spread of crimes across different counties to highlight areas of concern.
<img width="352" alt="Image" src="https://github.com/user-attachments/assets/5b0b2fa9-3339-4969-9755-d46f98f8ea9c" />


### 4. Nearest Crime Location Station from End User
Mapped crime locations to the nearest police stations to provide location-based insights.
<img width="467" alt="Image" src="https://github.com/user-attachments/assets/45615c42-ab72-4952-b753-0017ecd12d91" />

### 5. Highest Crime Areas in Dublin
Identified neighborhoods in Dublin with the highest crime rates.

<img width="358" alt="Image" src="https://github.com/user-attachments/assets/3c8b2026-eb8c-49ce-bab3-2c37caff7140" />

<img width="227" alt="Image" src="https://github.com/user-attachments/assets/3e89c905-be71-47c9-af38-c66d4831aa9a" />



### 7. Most Common Crime in Ireland

Found the single most frequently occurring crime type across Ireland.

![Image](https://github.com/user-attachments/assets/82f22e6e-7463-4564-bfb6-b985702b5e29)



### 8. Top 10 Counties for Theft and Related Offenses in Ireland
Ranked the top counties for theft and related offenses, providing insights into regional trends.

<img width="357" alt="Image" src="https://github.com/user-attachments/assets/8480e7e6-e200-4e6f-962f-13e6a53d7ebe" />

### 9. Crime Offenses in Maynooth
Focused on the specific crime types and their occurrences in Maynooth.

<img width="668" alt="Image" src="https://github.com/user-attachments/assets/17387212-f73f-46df-b165-57adf1de28de" />

---

## Tools Used
- **Azure Data Factory**: For data integration, cleaning, and transformation.
- **PostgreSQL**: To store and query the cleaned data for efficient analysis.
- **QGIS**: To visualize crime data on maps for spatial analysis.
- **Power BI**: For interactive data visualization and dashboard creation.

---

## Files in the Repository
1. `crime_data_set1.csv`: Raw dataset 1 containing crime records.
2. `crime_data_set2.csv`: Raw dataset 2 containing additional crime records.
3. `today.csv`: Processed dataset resulting from the merging and cleaning of the two raw datasets.
4. `README.md`: Documentation for the project.

---

## How to Use
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Load the `today.csv` file into your preferred analysis tool (e.g., Python, PostgreSQL, QGIS, or Power BI).

3. Use the SQL scripts or Python notebooks provided (if applicable) to replicate the analyses.

4. Visualize data using QGIS or Power BI for geospatial and interactive insights.

---

## Insights Derived
- Temporal crime trends to inform policymaking and resource allocation.
- Identification of crime-prone areas for targeted interventions.
- Insights into specific crime categories and their geographical prevalence.

---

## Future Work
- Automate the workflow using Azure Data Factory pipelines for real-time data updates.
- Expand the analysis to include additional crime-related datasets.
- Incorporate predictive analytics for crime forecasting.



