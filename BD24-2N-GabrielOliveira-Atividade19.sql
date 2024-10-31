ALTER TABLE cliente ADD email VARCHAR(255) NOT NULL;
ALTER TABLE produto RENAME preco TO "money";

CREATE TABLE categoria (
	ID_Categoria INT primary key
);

DROP TABLE categoria;

TRUNCATE TABLE pedido;
TRUNCATE TABLE cliente CASCADE;