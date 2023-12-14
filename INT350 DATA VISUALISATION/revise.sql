use class;
CREATE TABLE table1 (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE table2 (
    id INT PRIMARY KEY,
    table1_id INT,
    FOREIGN KEY (table1_id) REFERENCES table1(id),
    name VARCHAR(50)
);

CREATE TABLE table3 (
    id INT PRIMARY KEY,
    table1_id INT,
    FOREIGN KEY (table1_id) REFERENCES table1(id),
    table2_id INT,
    FOREIGN KEY (table2_id) REFERENCES table2(id),
    name VARCHAR(50)
);
