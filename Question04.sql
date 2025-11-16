CREATE TABLE Sales(
    sale_id SERIAL PRIMARY KEY,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    amount NUMERIC
);

-- Chèn dữ liệu vào bảng
INSERT INTO Sales (customer_id, product_id, sale_date, amount)
VALUES 
(1, 1, '2024-01-01', 100.00),
(2, 2, '2024-01-02', 200.00),
(3, 3, '2024-01-03', 300.00),
(4, 4, '2024-01-04', 400.00),
(5, 5, '2024-01-05', 500.00),
(1, 2, '2024-01-06', 150.00),
(2, 3, '2024-01-07', 250.00),
(3, 4, '2024-01-08', 350.00),
(4, 5, '2024-01-09', 450.00),
(5, 1, '2024-01-10', 550.00),
(1, 3, '2024-01-11', 120.00),
(2, 4, '2024-01-12', 220.00),
(3, 5, '2024-01-13', 320.00),
(4, 1, '2024-01-14', 420.00),
(5, 2, '2024-01-15', 520.00),
(1, 4, '2024-01-16', 180.00),
(2, 5, '2024-01-17', 280.00),
(3, 1, '2024-01-18', 380.00),
(4, 2, '2024-01-19', 480.00);

SELECT * FROM Sales; 

CREATE VIEW CustomerSales AS
    SELECT customer_id, SUM(amount) Total_Amount FROM 
    Sales GROUP BY customer_id;

SELECT * FROM CustomerSales WHERE Total_amount > 1000;

/* Lưu ý không được cập nhật qua VIEW trong những trường hợp sau:
1. VIEW bao gồm các hàm tổng hợp như SUM, AVG, COUNT, v.v.
2. VIEW sử dụng DISTINCT để loại bỏ các bản ghi trùng lặp.
3. VIEW kết hợp nhiều bảng (JOIN).
4. VIEW sử dụng các phép toán tập hợp như UNION, INTERSECT, v.v.
5. VIEW có các cột tính toán hoặc biểu thức phức tạp.
*/





