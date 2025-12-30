--- Operações CRUD: Insert e SELECT

CREATE TABLE usuario (
    id INT,
    nome VARCHAR(230) NOT NULL,
    email VARCHAR(30) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    data_nacimento DATE NOT NULL
);

COMMENT ON COLUMN usuario.nome IS 'nome do usuário'; -- adicionando comentário na coluna nome
COMMENT ON COLUMN usuario.email IS 'email do usuário'; -- adicionando comentário na coluna email
COMMENT ON COLUMN usuario.endereco IS 'endereço do usuário';
COMMENT ON COLUMN usuario.data_nacimento IS 'data de nascimento do usuário';

SELECT * FROM usuario;

CREATE TABLE destinos (
   id INT,
   nome varchar(225) not null unique,
   descricao varchar(225) not null
);

COMMENT ON COLUMN destinos.nome IS 'nome do usuário';
COMMENT ON COLUMN destinos.descricao IS 'nome do usuário';


CREATE TABLE reservas (
    id INT,
    id_usuario INT,
    id_destino INT,
    data DATE,
    status VARCHAR(225) DEFAULT 'pendente'
);


COMMENT ON COLUMN reservas.id IS 'id identificador único da reserva';
COMMENT ON COLUMN reservas.id_usuario IS 'referência ao ID do usuário que faz a reserva';
COMMENT ON COLUMN reservas.id_destino IS 'referência ao ID do destino da reserva';
COMMENT ON COLUMN reservas.data IS 'data da reserva';
COMMENT ON COLUMN reservas.status IS 'status da reserva (confirmada, pendente, cancelada, etc.)';


select * from usuario;

-- Inserts --
INSERT INTO usuario (id, nome, data_nacimento, email, endereco)
VALUES (1, 'Jhon Manuel', '2025-10-25', 'gata@gmail.com', 'Av los petra casa 1452 São Paulo SP');

select * from usuario;



INSERT INTO usuario (id, nome, email, data_nacimento, endereco) VALUES 
(2, 'João Silva', 'joa3o@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
(3, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
(4, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

select * from usuario;


INSERT INTO destinos (id, nome, descricao) VALUES 
(1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

select * from destinos;


INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUES 
(1, 1, 2, '2023-07-10', 'confirmada'),
(2, 2, 1, '2023-08-05', 'pendente'),
(3, 3, 3, '2023-09-20', 'cancelad');


select * from reservas;




-- Operação de Select

select * from usuario;


select * from usuario
where id = 1;


select * from usuario
where id = 1 and nome like '%Jhon Manuel%';


select * from usuario
where id = 1 or nome like '%M%';


select * from usuario
where id = 1 or nome like '%a';

select * from usuario
where id = 1 or nome like '%M%';



select * from usuario;

 
UPDATE usuario
SET id = 4
WHERE email = 'pedro@example.com';



select * from destinos;

--- Alterando e Excluindo Tabelas


CREATE TABLE usuarios_nava(
    id INT,
	nome varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	data_nacimento DATE NOT NULL,
	endereco VARCHAR(100) NOT NULL
);


COMMENT ON COLUMN usuarios_nava.nome IS 'Nome de usuarios_nava';
COMMENT ON COLUMN usuarios_nava.email IS 'Enderaço de Email do usuarios_nava';
COMMENT ON COLUMN usuarios_nava.data_nacimento IS 'Data de nacimiento usuarios_nava';
COMMENT ON COLUMN usuarios_nava.endereco IS 'Endereço do usuarios_nava';


select * from usuarios_nava;


-- emigraçao dos dato da Table
INSERT INTO usuarios_nava (id, nome, email, data_nacimento, endereco)
SELECT id, nome, email, data_nacimento, endereco
FROM usuario;

-- elimina a table antigua
DROP TABLE usuario;

-- Alterar o nome de uma tabela
ALTER TABLE usuarios_nava RENAME TO usuarios;

SELECT * FROM usuarios;


ALTER TABLE usuarios ALTER COLUMN endereco TYPE VARCHAR(350);


















