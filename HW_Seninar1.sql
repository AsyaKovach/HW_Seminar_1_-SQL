CREATE DATABASE  IF NOT EXISTS hw_seminar1;
USE hw_seminar1;

-- Создаем таблицу с телефонами
DROP TABLE IF EXISTS phone;
CREATE TABLE phone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phonename VARCHAR(40) NOT NULL,
    maker VARCHAR(30),
    product_count VARCHAR(30),
    rate CHAR(45)
);


 -- Заполнение таблицы
 INSERT phone(phonename, maker, product_count, rate)
VALUES 
    ("iphone 11", "Apple", "22", "60000"),
    ("iphone 12", "Apple", "12", "70000"),
    ("iphone 14", "Apple", "8", "110000"),
    ("honor 8", "Huawei", "7", "37000"),
	("oppo reno 8", "Oppo", "12", "34000"),
	("galaxy 24 pro", "Samsung", "12", "130000"),
	("galaxy 22", "Samsung", "4", "45000"),
    ("xiaomi poco f5", "Xiaomi", "1", "34000");
   
   --  1 Вывели таблицу
     SELECT *
     FROM phone;
      
      --  2 Выведите название, производителя и цену для товаров, количество которых превышает 2
      SELECT phonename, maker, rate FROM phone
      WHERE product_count > 2;
	
    -- 3 Выведите весь ассортимент товаров марки “Samsung”
     SELECT * FROM phone
      WHERE maker = "SAMSUNG";
    
    