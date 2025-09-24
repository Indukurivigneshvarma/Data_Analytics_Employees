# Data_Analytics_Employees

A **comprehensive data analytics project** analyzing employee datasets using **MySQL, Excel, and Python (VS Code)**.

---

## **Project Structure**

The repository contains the following folders:

### [Mysql_files](./Mysql_files)
- Contains SQL scripts used for **cleaning and preparing the employee dataset**.
- Includes queries for handling **missing values, formatting, and filtering**.

### [Excell_sheets](./Excell_sheets)
- Contains dataset files:  
  - `messy_employee_dataset.csv` → the **original raw dataset**.  
  - `clean_employee_dataset.csv` → **cleaned dataset** (machine-readable).  
  - `clean_employee_dataset_readable.xlsx` → **cleaned dataset** (Excel-friendly, readable format).
### [Excell_sheets](./Excell_sheets)
- Contains Jupyter notebooks for **data analysis and visualization**.
- Includes:  
  - `.ipynb` files with **data cleaning, analysis, and visualization code**  
  - Image files generated from plots (**histograms, boxplots, scatter plots, etc.**)

---

## 📊 Features / Analysis Conducted

### [1. Skills Distribution](./Skill_Distribution.ipynb)
- Cleaned skills data for readability and saved as Excel.  
- Counted overall skill frequencies across employees.  
- **Bar Plot:** Top skills among employees.  
- **Stacked Bar Plot:** Skill specialization across departments.  
- Revealed the **most in-demand skills** and department-wise expertise.

---

### **2. Salary Insights**
- **Bar Plot:** Average salary by **department** and **designation**.  
- **Box Plot:** Salary spread across departments to identify variations and outliers.  
- Showed compensation trends across the company.

---

### **3. Age Distribution**
- Visualized employee age spread using **histograms** and **KDE plots**.  
- Compared **male vs female** distributions.  
- Gave demographic insights into the employee base.

---

### **4. Training & Promotion Relationship**
- Analyzed if **completing training** increases chances of **promotion eligibility**.  
- Used a **stacked bar chart** with training status (Yes / No / Pending) vs promotion status (Eligible / Not Eligible).  
- Showed the link between training completion and career growth.

---

### **5. Performance vs Salary**
- Cleaned and standardized the **performance score** column.  
- Removed invalid salaries (e.g., 0).  
- Plotted a **scatter plot with regression trendline** to test correlation between **performance score** and **salary**.  
- Helped check if better performers earn more.

---

## **How to Run**

1. **Clone the repository:**

```bash
git clone https://github.com/Indukurivigneshvarma/Data_Analytics_Employees.git
cd Data_Analytics_Employees
