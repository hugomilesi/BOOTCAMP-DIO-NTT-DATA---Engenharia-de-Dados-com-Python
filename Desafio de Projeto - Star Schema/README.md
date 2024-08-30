# Modelo Relacional

Metadados das tabelas:

Professores: Dados sobre os professores, incluindo informações pessoais e financeiras.
Departamentos: Dados sobre os departamentos, incluindo o chefe do departamento.
Cursos: Informações sobre os cursos oferecidos, incluindo a duração e o departamento responsável.
Disciplinas: Detalhes das disciplinas, incluindo carga horária e curso associado.
OfertasDisciplinas: Registro das disciplinas oferecidas por professores em períodos específicos.
Alunos: Informações dos alunos, como nome, matrícula e curso.
MatriculasDisciplinas: Dados sobre a matrícula dos alunos em disciplinas e suas notas finais.
Avaliacoes: Informações sobre avaliações dos alunos em disciplinas.
Turmas: Dados sobre as turmas, associadas a cursos.
Horários: Horários das disciplinas nas turmas, incluindo dias e horários de aula.



# Star Schema 

## Tabela Fato (Fato_Professores):

- Armazena informações detalhadas sobre os professores.
- Contém chaves estrangeiras para as tabelas de dimensões.

## Tabelas de Dimensões:

- Dim_Departamentos: Informações sobre departamentos.
- Dim_Cursos: Informações sobre cursos oferecidos.
- Dim_Disciplinas: Informações sobre disciplinas oferecidas.
- Dim_Tempo: Informações temporais relevantes para os professores.


## Benefícios
**Simplicidade**: O modelo é mais simples e segue o padrão do Star Schema.
**Desempenho**: Facilita consultas e relatórios sobre professores e suas associações com departamentos, cursos e disciplinas.
**Flexibilidade**: Permite análises detalhadas e cruzadas entre professores e suas dimensões relacionadas.