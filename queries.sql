-- write your queries here
--query 1--
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
--query 2--
SELECT first_name, last_name, COUNT(*) FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY owners.id ORDER BY COUNT(*);
--query 3--
SELECT first_name, last_name, CEIL(AVG(price)) AS "average_price", COUNT(*) FRO
M owners JOIN vehicles 
ON owners.id = vehicles.owner_id GROUP BY owners.id 
HAVING COUNT(*) > 1 AND AVG(price) > 10000 
ORDER BY first_name DESC;