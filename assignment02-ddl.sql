CREATE TABLE IF NOT EXISTS products(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DECIMAL(14, 2) NOT NULL,
    serial_number VARCHAR(20) NOT NULL UNIQUE,
    description VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS clients(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    rfc VARCHAR(13) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS transactions(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(14, 2) NOT NULL,
    payment_method VARCHAR(10) NOT NULL,
    client_id INT NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE IF NOT EXISTS receipts(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    folio_number VARCHAR(10) NOT NULL,
    receipt_date DATE NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id),
    transaction_id INT NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES transactions(id)
);