# 📊 Corporate Data Analytics Portfolio

An end-to-end technical data analysis project demonstrating proficiency in relational database management, front-end executive reporting, and structured data cleaning.

## 🛠️ Tech Stack & Tools Applied
* **SQL (MySQL / DBeaver)**: Database design, CRUD operations, multi-condition filtering, data aggregations, and complex multi-table connections using INNER/LEFT JOINs.
* **Business Intelligence (Power BI Desktop)**: Automated ETL pipelines inside Power Query, custom premium theme application, structural layouts, and interactive dashboard analytics.
* **Advanced Excel**: Mastered `XLOOKUP` index tracking, data formatting using nested text clean formulas (`PROPER`, `TRIM`), and automated metric Pivot Tables.

## 📂 Project Structure
1. **`Corporate_Database_Queries.sql`**: Relational server schema scripts tracking employee records.
2. **`Executive_Salary_Dashboard.pbix`**: Interactive corporate reporting layout highlighting core department performance KPIs.
3. **`Employee_Payroll_Analysis.xlsx`**: Automated tracking spreadsheet utilizing advanced relational logic matrices.
### 🐍 Python Data Cleaning & Exploratory Data Analysis (EDA)
**Project File:** `online-sales-dataset.ipynb`
* Data cleaning and validation on retail sales data using **Pandas** and **NumPy**.
* Identified zero duplicate records and zero missing/null values across all columns.
* Converted string date fields into standardized `datetime` objects for time-series analysis.
* Evaluated transaction statistics, categorical frequencies, and payment method distributions.
* Exported the processed dataset into a structured CSV format (`Cleaned_Online_Sales_Data.csv`).
* Created Seaborn bar chart visualizations to analyze total revenue distribution across product categories.
# 📊 Online Sales Data Analytics & Executive Dashboard

## 📌 Project Overview
This project presents an end-to-end data analytics workflow built in **Microsoft Excel**. It transforms raw e-commerce transaction logs into a structured data pipeline, complete with feature engineering, automated KPI calculations, and an interactive executive dashboard.

---

## 🛠️ Key Technical Highlights & Methodology

1. **Data Auditing & Cleaning:**
   - Standardized column data types (Currency, Short Date, Integer).
   - Validated data integrity across 230+ order records.

2. **Feature Engineering & Formulas:**
   - **Month Extraction (`Column K`):** Extracted 3-letter month abbreviations using `=TEXT([@Date], "Mmm")`.
   - **Customer Tiering (`Column L`):** Segmented order sizes using nested logic:
     ```excel
     =IF([@[Total Revenue]]>=1000, "High Value", IF([@[Total Revenue]]>=200, "Medium Value", "Low Value"))
     ```

3. **KPI Summary Block:**
   - **Total Revenue:** `$80,567.85` (`=SUM(H:H)`)
   - **Total Orders:** `239` (`=COUNTA(A:A)-1`)
   - **Average Order Value:** `$335.70` (`=AVERAGE(H:H)`)

4. **Executive Dashboard & Visualizations:**
   - Summarized category metrics via **Pivot Tables**.
   - Created a **2D Clustered Column Chart** to highlight high-performing segments.
   - Built an interactive **Region Slicer** (North America, Europe, Asia) for real-time dynamic filtering.
   - Linked dynamic header KPI cards directly from underlying calculations (`=Data!O2`, `=Data!O4`).

---

## 📈 Key Business Insights
- **Electronics** was the top-performing category, driving **$34,982.41** (over 43% of total revenue).
- **Home Appliances** and **Sports** were strong secondary drivers at **$18,646.16** and **$14,326.52**.
- High-value transactions ($\ge \$1,000$) represent the primary target for retention strategies.

---

## 📁 Repository Structure
