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

select chefs.name, AVG(foods.price) from chefs
JOIN chefs ON works.chefID = chefs.chefID
JOIN serves ON works.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY chefs.name;

SELECT restaurants.name, AVG(foods.price)
FROM restaurants
JOIN serves ON restaurants.restID = serves.restID
JOIN foods ON serves.foodID = foods.foodID
GROUP BY restaurants.name
ORDER BY AVG(foods.price) DESC;