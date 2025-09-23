USE v_art;

-- 1. Insert a record on artist table
INSERT INTO artist (artist_id, fname, mname, lname, dob, dod, country, local) VALUES (10, "Johannes", null, "Vermeer", 1632, 1674, "Netherlands", "n");
SELECT t2.artist_id FROM artist t2 WHERE t2.fname = "Johannes" and t2.lname = "Vermeer";

-- 2. Select all artit with order by last name
SELECT artist_id, fname, mname, lname, dob, dod, country, local from artist order by lname;

-- 3. Update an record from artist table
UPDATE artist SET dod = 1674 WHERE artist_id = 10;

-- 4. Delete an record from artist table
DELETE FROM artist WHERE artist_id = 10;

USE bike;

-- 5. Select all customers from Houston Texas with first_name, last_name, and phone
SELECT first_name, last_name, phone FROM customer WHERE city = "Houston" and state = "TX";

-- 6. Select all bikes that have list price of 5000 or more with fields product name, list price and Discount Price, this must order by higher price.
SELECT product_name, list_price, (list_price - 500) as "Discount Price" FROM product WHERE list_price >= 5000 ORDER BY list_price DESC;

-- 7. Select all staff members that do not belong wo store id 1 with fields first name, last name, and email
SELECT first_name, last_name, email FROM staff WHERE NOT store_id = 1;

-- 8. Search for a bike with the word spider and list the fields name, model_year, and list price
SELECT product_name, model_year, list_price FROM product WHERE product_name LIKE "%spider%";

-- 9. You need to list all bike names that have a range of prices from $500 and $550 sorted with the lowest price first.
SELECT product_name, list_price FROM product WHERE list_price BETWEEN 500 AND 550 ORDER BY list_price;

-- 10. Show the customers first_name, last_name, phone, street, city, state, zip_code who have phone number, and whose city has letters ach or och, or whose last name is William.
SELECT first_name, last_name, phone, street, city, state, zip_code FROM customer WHERE (phone IS NOT NULL and city REGEXP "ach|och") or (last_name = "William") LIMIT 5;

-- 11. We need a list of all the products without the year at the end of the product_name string. Notice that some
-- have two years listed, make sure you take those off as well. Order your results by product_id and limit your results to the first 14.
SELECT TRIM(REGEXP_REPLACE(product_name, "-[[:space:]]*[0-9]{4}(/?[0-9]{4})*$", "")) as "Product Name without Year" FROM product ORDER BY product_id LIMIT 14;

-- 12. List the product name and then take the 2019 model year bikes and divide the price into 3 equal payments.
-- Display the payment with a dollar sign, comma at the thousands place and two decimal places.
SELECT product_name, CONCAT("$ ", FORMAT(list_price/3,2)) as "One of 3 payments" FROM product WHERE model_year = 2019 LIMIT 5;

USE magazine;

-- 13. List the magazine name and then take 3% off the magazine price and round to 2 decimal places. 
SELECT magazineName, FORMAT(magazinePrice * 0.97, 2) as "3% off" from magazine LIMIT 10;

-- 14. Show the primary key of id from the subscriber table and using the date of 2020-12-20 as if it were today date,
-- how long in years, ROUNDED to the nearest year, has it been since their subscription started?
SELECT t1.subscriberKey, CEIL(DATEDIFF("2020-12-20", t2.subscriptionStartDate) / 365) as "Years since subscription" FROM subscriber t1 JOIN subscription t2 ON t1.subscriberKey = t2.subscriberKey;

-- 15. Show the subscriptionStartDate and subscriptionLength and add the  subscriptionLength to the subscriptionStartDate
-- to see the date of how long their subscription will go. Format that date so it takes the format of Month name, number day with comma and then a 4 digit year.
SELECT subscriptionStartDate, subscriptionLength, DATE_FORMAT(DATE_ADD(subscriptionStartDate, INTERVAL subscriptionLength MONTH), "%M %e, %Y") as "Subscription end" FROM subscription;
