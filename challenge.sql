-- challenge.sql
-- Tool used: VS Code + SQLTools (SQLite driver) connected to bais_sqlite_lab.db
-- Queries validated against the actual database.

-- TASK 1 — Top 5 Customers by Total Spend
SELECT 
    c.first_name || ' ' || c.last_name AS customer_full_name,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS total_spend
FROM customers c
JOIN orders o ON c.id = o.customer_id
JOIN order_items oi ON o.id = oi.order_id
GROUP BY c.id, c.first_name, c.last_name
ORDER BY total_spend DESC
LIMIT 5;

-- TASK 2 — Total Revenue by Product Category
SELECT 
    p.category,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS revenue
FROM products p
JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- TASK 3 — Employees Earning Above Their Department Average
SELECT 
    e.first_name,
    e.last_name,
    d.name AS department_name,
    ROUND(e.salary, 2) AS employee_salary,
    ROUND(dept_avg.avg_salary, 2) AS dept_average
FROM employees e
JOIN departments d ON e.department_id = d.id
JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) dept_avg ON e.department_id = dept_avg.department_id
WHERE e.salary > dept_avg.avg_salary
ORDER BY department_name ASC, employee_salary DESC;

-- TASK 4 — Cities with the Most Loyal Customers (Gold)
SELECT 
    city,
    COUNT(*) AS gold_customer_count
FROM customers
WHERE loyalty_level = 'Gold'
GROUP BY city
ORDER BY gold_customer_count DESC, city ASC;

-- Extension: Full loyalty distribution by city
SELECT 
    city,
    COUNT(CASE WHEN loyalty_level = 'Gold' THEN 1 END)   AS gold_count,
    COUNT(CASE WHEN loyalty_level = 'Silver' THEN 1 END) AS silver_count,
    COUNT(CASE WHEN loyalty_level = 'Bronze' THEN 1 END) AS bronze_count,
    COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY gold_count DESC, city ASC;