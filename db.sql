 CREATE DATABASE car_store;

 USE car_store;
 
 CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quilometragem INT NOT NULL,
    cor VARCHAR(30) NOT NULL,
    combustível VARCHAR(30),
    data_entrada DATETIME NOT NULL DEFAULT NOW(),
    ultima_atualizacao DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW());

 UPDATE car_store
    SET data_entrada = '2023-09-04 17:34:00';

 INSERT INTO product (marca, modelo, ano, preco, quilometragem, cor, combustível) VALUES
    ('Toyota', 'Corolla', 2020, 75000.00, 15000, 'Prata', 'Gasolina'),
    ('Honda', 'Civic', 2018, 65000.00, 30000, 'Preto', 'Gasolina'),
    ('Ford', 'Mustang', 2021, 120000.00, 5000, 'Vermelho', 'Gasolina'),
    ('Chevrolet', 'Onix', 2019, 45000.00, 20000, 'Branco', 'Flex'),
    ('Volkswagen', 'Golf', 2017, 70000.00, 25000, 'Azul', 'Gasolina'),
    ('Hyundai', 'HB20', 2020, 55000.00, 10000, 'Cinza', 'Flex'),
    ('BMW', '320i', 2021, 150000.00, 8000, 'Preto', 'Gasolina'),
    ('Mercedes-Benz', 'C180', 2020, 170000.00, 12000, 'Prata', 'Gasolina'),
    ('Audi', 'A3', 2019, 90000.00, 22000, 'Branco', 'Gasolina'),
    ('Renault', 'Duster', 2018, 60000.00, 35000, 'Verde', 'Flex');