-- Usar o Banco de Dados
USE escola;

-- Inserir Dados na Tabela: Professores
INSERT INTO Professores (nome, titulacao, data_admissao, salario)
VALUES 
('Ana Costa', 'Doutorado', '2015-03-01', 8500.00),
('Carlos Souza', 'Mestrado', '2017-08-15', 7500.00),
('Beatriz Lima', 'Doutorado', '2012-05-10', 9000.00),
('Diego Alves', 'Especialista', '2020-01-20', 6000.00),
('Fernanda Oliveira', 'Mestrado', '2018-09-25', 7200.00);

-- Inserir Dados na Tabela: Departamentos
INSERT INTO Departamentos (nome, chefe_departamento)
VALUES 
('Matemática', 1),
('Computação', 2),
('Física', 3);

-- Inserir Dados na Tabela: Cursos
INSERT INTO Cursos (nome, duracao, id_departamento)
VALUES 
('Matemática Aplicada', 48, 1),
('Engenharia de Software', 60, 2),
('Física Teórica', 48, 3);

-- Inserir Dados na Tabela: Disciplinas
INSERT INTO Disciplinas (nome, carga_horaria, id_curso)
VALUES 
('Cálculo Diferencial', 60, 1),
('Álgebra Linear', 60, 1),
('Programação Avançada', 80, 2),
('Banco de Dados', 70, 2),
('Mecânica Quântica', 80, 3),
('Eletromagnetismo', 60, 3);

-- Inserir Dados na Tabela: Ofertas de Disciplinas
INSERT INTO OfertasDisciplinas (id_disciplina, id_professor, semestre, ano, data_inicio, data_fim)
VALUES 
(1, 1, '2024.1', 2024, '2024-02-01', '2024-06-30'),
(2, 1, '2024.1', 2024, '2024-02-01', '2024-06-30'),
(3, 2, '2024.1', 2024, '2024-02-01', '2024-06-30'),
(4, 2, '2024.1', 2024, '2024-02-01', '2024-06-30'),
(5, 3, '2024.1', 2024, '2024-02-01', '2024-06-30'),
(6, 3, '2024.1', 2024, '2024-02-01', '2024-06-30');

-- Inserir Dados na Tabela: Alunos
INSERT INTO Alunos (nome, data_nascimento, matricula, data_matricula, id_curso)
VALUES 
('João Silva', '2001-06-15', '20240001', '2024-01-10', 1),
('Mariana Souza', '2000-09-30', '20240002', '2024-01-10', 2),
('Lucas Ferreira', '2002-11-20', '20240003', '2024-01-10', 1),
('Aline Santos', '2001-03-22', '20240004', '2024-01-10', 3),
('Paulo Almeida', '1999-07-07', '20240005', '2024-01-10', 2);

-- Inserir Dados na Tabela: Matrículas em Disciplinas
INSERT INTO MatriculasDisciplinas (id_aluno, id_oferta, nota_final)
VALUES 
(1, 1, 8.5),
(1, 2, 7.0),
(2, 3, 9.0),
(2, 4, 8.0),
(3, 1, 7.5),
(4, 5, 9.5),
(5, 4, 6.5);

-- Inserir Dados na Tabela: Avaliações
INSERT INTO Avaliacoes (id_matricula, tipo_avaliacao, data_avaliacao, nota)
VALUES 
(1, 'Prova', '2024-03-15', 8.0),
(1, 'Trabalho', '2024-05-10', 9.0),
(2, 'Prova', '2024-03-20', 6.5),
(2, 'Trabalho', '2024-05-12', 7.5),
(3, 'Prova', '2024-03-22', 9.0),
(4, 'Prova', '2024-03-15', 8.5),
(5, 'Projeto', '2024-04-15', 9.5);

-- Inserir Dados na Tabela: Turmas
INSERT INTO Turmas (nome, id_curso)
VALUES 
('Matemática 2024.1', 1),
('Engenharia de Software 2024.1', 2),
('Física 2024.1', 3);

-- Inserir Dados na Tabela: Horários
INSERT INTO Horarios (id_turma, id_disciplina, dia_semana, horario_inicio, horario_fim)
VALUES 
(1, 1, 'Segunda', '08:00', '10:00'),
(1, 2, 'Terça', '08:00', '10:00'),
(2, 3, 'Segunda', '10:00', '12:00'),
(2, 4, 'Quarta', '10:00', '12:00'),
(3, 5, 'Quinta', '08:00', '10:00'),
(3, 6, 'Sexta', '08:00', '10:00');
