select restaurants.name, AVG(foods.price) from restaurants
JOIN serves ON restaurants.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY restaurants.name;

select restaurants.name, max(foods.price) from restaurants
JOIN serves ON restaurants.restID =serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY restaurants.name;

select restaurants.name, count(DISTINCT (foods.type)) from restaurants
JOIN serves ON restaurants.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY restaurants.name;

SELECT chefs.name, AVG(foods.price) AS avg_price
FROM chefs
JOIN works ON chefs.chefID = works.chefID
JOIN serves ON works.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY chefs.name;

SELECT restaurants.name, AVG(foods.price) AS avg_price
FROM restaurants
JOIN serves ON restaurants.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY restaurants.name
ORDER BY AVG(foods.price) DESC;

SELECT chefs.name, AVG(foods.price) AS avg_food, GROUP_CONCAT( DISTINCT restaurants.name SEPARATOR ", ") AS restaurants
FROM chefs
JOIN works ON chefs.chefID = works.chefID
JOIN restaurants ON works.restID = restaurants.restID
JOIN serves ON restaurants.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY chefs.name
ORDER BY avg_food DESC;