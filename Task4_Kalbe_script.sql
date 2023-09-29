#Create a database with ‘KALBE’ as the name
CREATE DATABASE KALBE;
USE KALBE;

#create a table with the name Inventory
CREATE TABLE Inventory (
    Item_code INT PRIMARY KEY,
    Item_name VARCHAR(255) NOT NULL,
    Item_price DECIMAL(10, 2),
    Item_total INT,
);

#Insert below data into the table:
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES
	(2341, 'Promag Tablet', 3000, 100),
	(2342, 'Hydro Coco 250ML', 7000, 20),
	(2343, 'Nutrive Benecol 100ML', 20000, 30),
	(2344, 'Blackmores Vit C 500Mg', 95000, 45),
	(2345, 'Entrasol Gold 370G', 90000, 120);

#T○ Show Item_name that has the highest number in Item_total.
SELECT Item_name, Item_total 
FROM  Inventory
WHERE Item_total = (
	SELECT MAX(Item_total)
	FROM Inventory
);

#Update the Item_price of the output of question bullet
update Inventory 
SET Item_price = 77500
WHERE Item_total = (
	SELECT MAX(Item_total)
	FROM Inventory
);

#insert another Item_name with Item_code of 2343 into the table? 
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES (2343, 'Nutrive Benecol 100ML', 20000, 30)
-- Jawaban: membuat Item_name lain dengan menggunakan Item_code '2343' yang sudah ada, tidak dapat dilakukan
-- hal tersebut karena Item_code '2343' tersebut sudah dipakai untuk item lain, dan PrimaryKey(PK) hanya dapat menampung 1 data barang saja.
-- sehingga jika ingin mendaftarkan Item_name harus didaftarkan dengan Item_code yang baru 

#Delete the 'Item_name' with the lowest 'Item_total':
DELETE FROM Inventory
WHERE Item_total = (
    SELECT MIN(Item_total)
    FROM Inventory
);
