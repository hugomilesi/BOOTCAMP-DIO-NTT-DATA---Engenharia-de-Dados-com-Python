CREATE DATABASE IF NOT EXISTS escola_dimensional;

USE escola_dimensional;

-- Criando a Tabela de Dimensão: Professores
CREATE TABLE DimProfessores (
    id_professor BIGINT UNSIGNED PRIMARY KEY,
    nome VARCHAR(255),
    titulacao VARCHAR(100),
    data_admissao DATE,
    salario DECIMAL(10, 2)
);

-- Criando a Tabela de Dimensão: Disciplinas
CREATE TABLE DimDisciplinas (
    id_disciplina BIGINT UNSIGNED PRIMARY KEY,
    nome VARCHAR(255),
    carga_horaria INT
);

-- Criando a Tabela de Dimensão: Cursos
CREATE TABLE DimCursos (
    id_curso BIGINT UNSIGNED PRIMARY KEY,
    nome VARCHAR(255),
    duracao INT
);

-- Criando a Tabela de Dimensão: Departamentos
CREATE TABLE DimDepartamentos (
    id_departamento BIGINT UNSIGNED PRIMARY KEY,
    nome VARCHAR(255)
);

-- Criando a Tabela de Dimensão: Tempo
CREATE TABLE DimTempo (
    id_tempo BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    semestre VARCHAR(10),
    ano INT,
    data_inicio DATE,
    data_fim DATE
);

-- Criando a Tabela Fato: OfertasDisciplinas
CREATE TABLE FatoOfertasDisciplinas (
    id_oferta BIGINT UNSIGNED PRIMARY KEY,
    id_professor BIGINT UNSIGNED,
    id_disciplina BIGINT UNSIGNED,
    id_curso BIGINT UNSIGNED,
    id_departamento BIGINT UNSIGNED,
    id_tempo BIGINT UNSIGNED,
    FOREIGN KEY (id_professor) REFERENCES DimProfessores(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES DimDisciplinas(id_disciplina),
    FOREIGN KEY (id_curso) REFERENCES DimCursos(id_curso),
    FOREIGN KEY (id_departamento) REFERENCES DimDepartamentos(id_departamento),
    FOREIGN KEY (id_tempo) REFERENCES DimTempo(id_tempo)
);
