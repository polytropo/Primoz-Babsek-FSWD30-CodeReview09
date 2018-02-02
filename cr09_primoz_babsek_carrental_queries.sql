SELECT contract.contract_date AS "contract created", 
CONCAT (employees.first_name, " ", employees.last_name) AS "Full Name" FROM employees 
INNER JOIN contract ON contract.fk_empl_id = employees.empl_id ORDER BY contract_date DESC;


SELECT customer.last_name, customer.first_name, reservation.start_location FROM customer 
LEFT JOIN reservation ON customer.cust_id = reservation.fk_cust_id 
WHERE reservation.start_location = "Linz";

SELECT customer.last_name, customer.first_name, car.car_type FROM customer 
INNER JOIN reservation ON customer.cust_id = reservation.fk_cust_id
INNER JOIN car ON reservation.fk_car_id = car.car_id
ORDER BY car.car_type;


SELECT customer.last_name, customer.first_name, car.car_type, insurance.type AS "Type of insurance", car.car_id FROM customer 
INNER JOIN reservation ON customer.cust_id = reservation.fk_cust_id
INNER JOIN car ON reservation.fk_car_id = car.car_id
INNER JOIN insurance ON insurance.insu_id = car.fk_insu_id
ORDER BY car.car_type;


SELECT * FROM employees 
WHERE YEAR(join_date) < 2010 AND age > 40
ORDER BY age DESC;