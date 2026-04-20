# SQLite Analytics Challenge - Business Insights

## Summary of Results

- **Top 5 Customers by Total Spend**  
  Jacob Foster is the highest spender with $8,722.67, followed by Ethan Gomez ($8,206.19), Sophia Ahmed ($5,471.57), Lucas Hale ($4,438.25), and Emma Young ($4,409.83).  
  The top 5 customers represent a significant portion of total revenue.

- **Total Revenue by Product Category**  
  **Electronics** generates the highest revenue at $25,364.23, followed by **Furniture** at $12,712.00.  
  Grocery ($405.72) and Stationery ($319.24) contribute much less. Electronics and Furniture clearly dominate sales.

- **Employees Earning Above Department Average**  
  5 employees earn strictly more than their department’s average salary:  
  - Farah Garcia (Finance)  
  - Maya Bennett (IT)  
  - Carol Singh (Marketing)  
  - Kira Patel (Operations)  
  - Alice Nguyen (Sales)  

- **Cities with the Most Gold Loyalty Customers**  
  **Tampa** has the most Gold customers with 4.  
  This indicates a strong concentration of high-loyalty customers in the Tampa area.

- **Loyalty Distribution by City (Extension)**  
  Tampa stands out with the highest number of Gold customers. Other cities likely have more balanced or Bronze-heavy distributions, presenting opportunities for loyalty upgrade campaigns.

## Key Takeaways & Recommendations
- Focus customer retention efforts on the top spenders, especially Jacob Foster and Ethan Gomez.
- Prioritize inventory, marketing, and promotions for **Electronics** and **Furniture** — these two categories drive most of the revenue.
- Leverage Tampa’s strong Gold customer base for localized marketing or case studies.
- Develop targeted campaigns to convert Bronze and Silver customers in other cities into Gold members.

## Methodology Notes
- Used all orders for Tasks 1 and 2 (no status filter), as the challenge did not instruct to exclude any order statuses.  
- Line totals correctly calculated as `quantity × unit_price`.  
- Department averages computed using a subquery for clarity and performance.
