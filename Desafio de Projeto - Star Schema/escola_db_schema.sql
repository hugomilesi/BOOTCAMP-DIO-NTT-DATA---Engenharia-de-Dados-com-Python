-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS escola;

-- Usar o Banco de Dados EscolaDB
USE escola;

-- Tabela: Professores
CREATE TABLE Professores (
    id_professor BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    titulacao VARCHAR(100),
    data_admissao DATE,
    salario DECIMAL(10, 2)
);

-- Tabela: Departamentos
CREATE TABLE Departamentos (
    id_departamento BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    chefe_departamento BIGINT UNSIGNED,
    FOREIGN KEY (chefe_departamento) REFERENCES Professores(id_professor)
);

-- Tabela: Cursos
CREATE TABLE Cursos (
    id_curso BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    duracao INT,  -- Duração em meses
    id_departamento BIGINT UNSIGNED,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);

-- Tabela: Disciplinas
CREATE TABLE Disciplinas (
    id_disciplina BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT,
    id_curso BIGINT UNSIGNED,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabela: Ofertas de Disciplinas
CREATE TABLE OfertasDisciplinas (
    id_oferta BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_disciplina BIGINT UNSIGNED NOT NULL,
    id_professor BIGINT UNSIGNED NOT NULL,
    semestre VARCHAR(10),  -- Ex: 2024.1
    ano INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

-- Tabela: Alunos
CREATE TABLE Alunos (
    id_aluno BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    matricula VARCHAR(50) UNIQUE,
    data_matricula DATE,
    id_curso BIGINT UNSIGNED,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabela: Matrículas em Disciplinas
CREATE TABLE MatriculasDisciplinas (
    id_matricula BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_aluno BIGINT UNSIGNED NOT NULL,
    id_oferta BIGINT UNSIGNED NOT NULL,
    nota_final DECIMAL(5, 2),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_oferta) REFERENCES OfertasDisciplinas(id_oferta)
);

-- Tabela: Avaliações
CREATE TABLE Avaliacoes (
    id_avaliacao BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_matricula BIGINT UNSIGNED NOT NULL,
    tipo_avaliacao VARCHAR(50),  -- Ex: Prova, Trabalho, Projeto
    data_avaliacao DATE,
    nota DECIMAL(5, 2),
    FOREIGN KEY (id_matricula) REFERENCES MatriculasDisciplinas(id_matricula)
);

-- Tabela: Turmas
CREATE TABLE Turmas (
    id_turma BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_curso BIGINT UNSIGNED,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabela: Horários
CREATE TABLE Horarios (
    id_horario BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_turma BIGINT UNSIGNED NOT NULL,
    id_disciplina BIGINT UNSIGNED NOT NULL,
    dia_semana VARCHAR(10),  -- Ex: Segunda, Terça, etc.
    horario_inicio TIME,
    horario_fim TIME,
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina)
);
