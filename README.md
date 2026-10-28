# Supply Chain Analytics | MySQL & Power BI



## Project Overview



This project analyzes supply chain operations using MySQL and Microsoft Power BI. It focuses on inventory management, procurement performance, sales order outcomes, and shipment logistics.



The objective is to transform raw operational data into cleaned, validated datasets and an interactive dashboard that helps identify inventory risks, evaluate purchase-order delivery performance, and understand sales and logistics outcomes.



**Project Type:** End-to-End Data Analytics

**Tools:** MySQL 8.0, Microsoft Power BI, DAX

**Dataset:** Synthetic supply chain data covering January 2024 to December 2025



---



## Business Objectives



* Analyze inventory availability and stock status.

* Evaluate purchase-order delivery performance against expected delivery dates.

* Monitor sales order outcomes and delivered sales value.

* Analyze shipment delays, delivery duration, and shipping costs.

* Examine logistics performance and shipment delay reasons.

* Present operational KPIs through an interactive Power BI dashboard.



---



## Tools & Technologies



| Tool               | Purpose                                                 |

| ------------------ | ------------------------------------------------------- |

| MySQL 8.0          | Data profiling, cleaning, querying, and validation      |

| Microsoft Power BI | Data modeling, dashboard development, and visualization |

| DAX                | KPI calculations and business measures                  |

| Git \& GitHub       | Version control and project portfolio management        |



---



## Data Structure



The dataset contains seven tables representing different aspects of supply chain operations.



| Table             |    Records | Purpose                                                                                   |

| ----------------- | ---------: | ----------------------------------------------------------------------------------------- |

| `products`        |        600 | Product information and product-level analysis                                            |

| `suppliers`       |        122 | Supplier information and procurement analysis                                             |

| `warehouses`      |         20 | Warehouse information and warehouse-level analysis                                        |

| `inventory`       |      6,000 | Stock quantities, reserved quantities, available stock, inventory dates, and stock status |

| `purchase\_orders` |      5,000 | Purchase-order records and procurement delivery performance                               |

| `sales\_orders`    |     18,000 | Sales order records, order statuses, and sales performance                                |

| `shipments`       |      5,000 | Shipment records, delivery performance, shipping costs, and delay analysis                |

| **Total**         | **35,722** | **Records across seven tables**                                                           |



---



## Data Model



The project uses a relational data model to organize information across products, suppliers, warehouses, inventory, purchase orders, sales orders, and shipments.



The data model was configured in Power BI to support the dashboard's analytical requirements. Relationships and filter directions were defined to support analysis across the relevant tables.



---



## Project Workflow



### 1. Data Profiling



* Examined the source tables and their structures.

* Reviewed record counts and data-quality issues.

* Checked identifiers, missing values, and relationships between tables.

* Identified inconsistencies requiring cleaning or validation.



### 2. Data Cleaning



* Standardized inconsistent product-category names.

* Reviewed invalid and negative product prices.

* Examined missing and inconsistent values.

* Checked key fields and relationships between tables.

* Recalculated purchase-order delivery statuses using expected and actual delivery dates.



### 3. Data Validation



* Compared original and cleaned table record counts.

* Checked for missing identifiers and orphan records.

* Validated purchase-order delivery classifications against the underlying dates.

* Confirmed that the key data-quality and relationship checks passed.



The cleaned tables retained their expected record counts, and the key validation checks passed.



### 4. Power BI Dashboard Development



* Connected the cleaned data to Power BI.

* Configured the data model.

* Created DAX measures for business KPIs.

* Developed a four-page interactive dashboard.

* Presented operational metrics and business findings through visualizations.



---



## Dashboard Pages



### Page 1: Executive Overview



Provides a high-level summary of supply chain performance through key performance indicators and overview visuals.



### Page 2: Inventory & Warehouses



Analyzes inventory availability, stock status, and warehouse-level inventory patterns to help identify potential stock-management issues.



### Page 3: Procurement & Suppliers



Evaluates purchase-order delivery performance by comparing actual delivery dates with expected delivery dates.



### Page 4: Sales & Logistics



Analyzes sales order outcomes, shipment performance, delivery delays, shipping costs, and shipment delay reasons.



---



## Business Rules: Purchase-Order Delivery Status



Purchase-order delivery status was validated using a strict comparison between the actual delivery date and the expected delivery date.



| Condition                                 | Delivery Status |

| ----------------------------------------- | --------------- |

| Actual date is earlier than expected date | Early           |

| Actual date equals expected date          | On Time         |

| Actual date is later than expected date   | Delayed         |



During validation, **372 purchase orders initially classified as On Time were found to have actual delivery dates one day later than their expected dates**. These records were reclassified as Delayed to ensure consistency with the defined business rule.



### Final Purchase-Order Delivery Performance



| Delivery Status | Purchase Orders | Percentage |

| --------------- | --------------: | ---------: |

| Delayed         |           2,399 |     47.98% |

| Early           |           1,807 |     36.14% |

| On Time         |             794 |     15.88% |

| **Total**       |       **5,000** |   **100%** |



This correction demonstrates the importance of validating business classifications against the underlying data rather than relying solely on existing status labels.



---



## Key Performance Indicators



| KPI                                        |    Result |

| ------------------------------------------ | --------: |

| Total Sales Orders                         |    18,000 |

| Delivered Orders                           |    15,286 |

| Delivered Order Rate                       |    84.92% |

| Delivered Sales Value                      |   191.95M |

| Average Delivery Days for Delivered Orders | 3.62 days |

| Total Shipping Cost                        |      346K |

| Delayed Shipment Rate                      |     17.5% |

| Total Inventory Records                    |     6,000 |

| Low-Stock Records                          |     3,216 |

| Out-of-Stock Records                       |       442 |

| Total Purchase Orders                      |     5,000 |



*Sales value and shipping cost are expressed in the units used by the dataset and dashboard.*



---



## Key Business Insights



### 1. Purchase-Order Delays



Of the 5,000 purchase orders, 2,399 (47.98%) were delivered after their expected dates under the strict date-comparison rule. This highlights procurement delivery performance as an area for further investigation.



### 2. Early Deliveries



A total of 1,807 purchase orders (36.14%) arrived before their expected dates, while 794 (15.88%) arrived on the exact expected date.



### 3. Inventory Availability



The inventory analysis identified 3,216 low-stock records and 442 out-of-stock records. These records can help prioritize further investigation into inventory availability and replenishment needs.



### 4. Sales Order Performance



Of the 18,000 sales orders, 15,286 were delivered, resulting in a delivered order rate of 84.92%.



### 5. Shipment Delays



The delayed shipment rate was 17.5%. Investigating shipment delay patterns and recorded delay reasons can help identify opportunities to improve logistics performance.



### 6. Data Quality and Validation



Comparing actual delivery dates against expected delivery dates identified 372 purchase orders requiring reclassification. This demonstrates how data validation can improve the reliability of business reporting.



*These findings describe the synthetic dataset and should not be interpreted as actual company performance.*



---



## Repository Structure



```text

Supply-Chain-Analytics

│

├── Dashboard_Screenshots

│   ├── 01_Executive_Overview.png

│   ├── 02_Inventory_Warehouses.png

│   ├── 03_Procurement_Suppliers.png

│   └── 04_Sales_Logistics.png

│

├── PowerBI

│   └── SupplyChain_Dashboard.pbix

│

├── SQL

│   ├── 01_SupplyChain_Data_Profiling.sql

│   ├── 02_SupplyChain_Data_Cleaning.sql

│   └── 03_SupplyChain_Data_Validation.sql

│

└── README.md

```



*Ensure the filenames shown above match the actual files in your project folders.*



---



## Skills Demonstrated



* SQL querying and data profiling

* Data cleaning and validation

* Business-rule implementation

* Relational data analysis

* Power BI data modeling

* DAX measures and KPI development

* Dashboard design and data visualization

* Business performance analysis

* Translating data findings into actionable areas for investigation

* GitHub project organization



---



## Project Disclaimer



This project uses synthetic data for educational and portfolio purposes. The analysis demonstrates data analytics techniques and should not be interpreted as the actual performance of a real company.



**Dataset Period:** January 2024 – December 2025



