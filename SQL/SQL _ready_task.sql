Задания на написание запросов к БД:                
1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а                
2. Удалить всех пользователей, у которых skill меньше 100000                
3. Вывести все данные из таблицы user в порядке убывания по полю skill                 
4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10                
5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000                
6. Выбрать user_name всех пользователей уровня admin используя подзапрос                
7. Выбрать user_name всех пользователей уровня admin используя join



CREATE TABLE users (
  id serial PRIMARY KEY,
  user_name VARCHAR(55) NOT NULL,
  level_id INT,
  skill INT);
 INSERT INTO users(user_name, level_id, skill)
VALUES ('anton', 1, 900000),
       ('denis', 3, 4000), 
       ('petr', 2, 50000), 
       ('andrey', 4, 20),
       ('olga', 1, 600000), 
       ('anna', 1, 1600000);
SELECT * FROM users
CREATE TABLE levels (
  id serial  PRIMARY KEY,
  level_name VARCHAR(55) NOT NULL);
  
  INSERT INTO levels(level_name)
  VALUES ('admin'), ('power_user'),
('user'),('guest');
SELECT * FROM levels

Select * from users
WHERE skill > 799000 
AND level_id = 1
AND user_name LIKE '%a%';

DELETE from users
WHERE skill < 100000;

SELECT * FROM users;


SELECT * FROM users 
ORDER BY skill DESC;


INSERT INTO users(user_name, level_id, skill)
VALUES('oleg', 4, 10);


UPDATE users
SET skill = 2000000
WHERE level_id < 2;

SELECT * FROM users


SELECT user_name FROM users
WHERE level_id in (SELECT id FROM levels 
                     WHERE level_name= 'admin')
 SELECT users.user_name 
FROM users
    INNER JOIN levels
    ON users.level_id= levels.id
    WHERE levels.level_name= 'admin'
                     

