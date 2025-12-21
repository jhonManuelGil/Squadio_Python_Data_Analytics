
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