CREATE DATABASE Test_View

USE Test_View;

GO
-- CRIANDO AS TABLEAS
CREATE TABLE Paciente (
 Id_Paciente INT PRIMARY KEY NOT NULL IDENTITY(1,1),
 Nome VARCHAR(100) NOT NULL,
 Data_nascimento DATE NOT NULL,
 Sexo CHAR(1) CHECK(Sexo IN('M','F', 'O')) NOT NULL,
 Telefone VARCHAR(15) NOT NULL,
 Email VARCHAR(50),
 Endereco VARCHAR(150) NOT NULL
);


CREATE TABLE Exames (
 id_Exame INT PRIMARY KEY NOT NULL IDENTITY(1,1),
 Tipo_Exame NVARCHAR(100) NOT NULL,
 Descricao NVARCHAR(MAX) NOT NULL,
 Data_Exame DATE NOT NULL,
 Id_Paciente INT,
 FOREIGN KEY(Id_Paciente) REFERENCES Paciente(Id_Paciente)
);

CREATE TABLE Doencas (
 Id_Doenca INT PRIMARY KEY NOT NULL IDENTITY(1,1),
 Nome_Doenca NVARCHAR(100) NOT NULL,
 Descricao NVARCHAR(MAX),
 Sintomas NVARCHAR(MAX)
);

CREATE TABLE Consultas(
Id_Consulta INT PRIMARY KEY IDENTITY(1,1),
Data_Consulta DATE NOT NULL,
Motivo_Consulta NVARCHAR(MAX),
Id_Paciente INT,
Id_Doenca INT,
FOREIGN KEY(Id_Paciente) REFERENCES Paciente(Id_Paciente),
FOREIGN KEY(Id_Doenca) REFERENCES Doencas(Id_Doenca)
);

GO
-- INSERINDO DADOS VIA IA

-- Inserindo dados na tabela Paciente
INSERT INTO Paciente (Nome, Data_nascimento, Sexo, Telefone, Email, Endereco) VALUES 
('Ana Lima', '1980-07-23', 'F', '1111111111', 'ana.lima@example.com', 'Rua Jardim, 321'),
('Fernando Sousa', '1992-10-30', 'M', '2222222222', 'fernando.sousa@example.com', 'Av. Primavera, 654'),
('Gabriela Oliveira', '1985-02-18', 'F', '3333333333', 'gabriela.oliveira@example.com', 'Rua Estrela, 789'),
('Hugo Andrade', '2002-06-15', 'M', '4444444444', 'hugo.andrade@example.com', 'Av. dos P�ssaros, 12'),
('In�s Mendes', '1999-01-22', 'F', '5555555555', NULL, 'Rua Central, 345'),
('Juliano Prado', '1975-11-10', 'M', '6666666666', 'juliano.prado@example.com', 'Rua do Sol, 987'),
('Karla Santos', '1989-04-04', 'F', '7777777777', 'karla.santos@example.com', 'Av. Brasil, 303'),
('Lucas Vieira', '1996-08-08', 'M', '8888888888', 'lucas.vieira@example.com', 'Rua Verde, 556'),
('Mariana Rocha', '1972-09-12', 'F', '9999999999', 'mariana.rocha@example.com', 'Av. Horizonte, 778'),
('Natan Ferreira', '1984-12-24', 'M', '1010101010', 'natan.ferreira@example.com', 'Rua das Orqu�deas, 432');

-- Inserindo dados na tabela Exames
INSERT INTO Exames (Tipo_Exame, Descricao, Data_Exame, Id_Paciente) VALUES 
('Exame de Sangue', 'Analise completa de sangue', '2024-01-05', 1),
('Raio-X do Torax', 'Exame de imagem para verificar problemas pulmonares', '2024-02-17', 2),
('Exame de Colesterol', 'Avalia��o dos n�veis de colesterol', '2024-03-25', 3),
('Ultrassonografia Abdominal', 'Imagem abdominal detalhada', '2024-04-09', 4),
('Exame de Urina', 'Exame b�sico de urina', '2024-05-30', 5),
('Eletrocardiograma', 'Avalia��o da atividade el�trica do cora��o', '2024-06-15', 6),
('Resson�ncia Magn�tica', 'Exame de imagem detalhada do c�rebro', '2024-07-22', 7),
('Endoscopia', 'Exame do trato digestivo', '2024-08-14', 8),
('Exame de Glicose', 'Medi��o do n�vel de a��car no sangue', '2024-09-01', 9),
('Densitometria �ssea', 'Exame para verificar a densidade dos ossos', '2024-10-05', 10);

-- Inserindo dados na tabela Doencas
INSERT INTO Doencas (Nome_Doenca, Descricao, Sintomas) VALUES 
('Ins�nia', 'Dificuldade para dormir ou manter o sono', 'Fadiga, irritabilidade, dificuldade de concentra��o'),
('Anemia', 'Falta de ferro ou de gl�bulos vermelhos', 'Cansa�o, palidez, falta de ar'),
('Artrite', 'Inflama��o nas articula��es', 'Dor nas articula��es, rigidez, incha�o'),
('Bronquite', 'Inflama��o dos br�nquios', 'Tosse com muco, dificuldade para respirar, cansa�o'),
('Enxaqueca', 'Dor de cabe�a intensa', 'Dor latejante, n�usea, sensibilidade � luz e ao som'),
('Hipotireoidismo', 'Baixa produ��o de horm�nios pela tireoide', 'Fadiga, ganho de peso, queda de cabelo'),
('Obesidade', 'Excesso de gordura corporal', 'Dificuldade para respirar, fadiga, dores nas articula��es'),
('Insufici�ncia Card�aca', 'Incapacidade do cora��o de bombear sangue suficiente', 'Falta de ar, incha�o nas pernas, fadiga'),
('Osteoporose', 'Redu��o da densidade �ssea', 'Fraturas frequentes, dor nos ossos, perda de altura'),
('Ansiedade', 'Transtorno de preocupa��o excessiva', 'Apreens�o, palpita��es, sensa��o de perigo iminente');

-- Inserindo dados na tabela Consultas
INSERT INTO Consultas (Data_Consulta, Motivo_Consulta, Id_Paciente, Id_Doenca) VALUES 
('2024-01-15', 'Dores articulares', 1, 3),
('2024-02-20', 'Tratamento para colesterol alto', 2, NULL),
('2024-03-12', 'Queixas de dor de cabe�a frequente', 3, 5),
('2024-04-08', 'Cansa�o extremo e dificuldade para dormir', 4, 1),
('2024-05-19', 'Acompanhamento de anemia', 5, 2),
('2024-06-21', 'Controle de peso e dieta', 6, 7),
('2024-07-11', 'Avalia��o para hipotireoidismo', 7, 6),
('2024-08-15', 'Exame e tratamento para osteoporose', 8, 9),
('2024-09-10', 'Consulta para problemas de ansiedade', 9, 10),
('2024-10-14', 'Acompanhamento de insufici�ncia card�aca', 10, 8),
('2024-11-07', 'Dificuldade para respirar e dor no peito', 1, 4),
('2024-12-05', 'Controle de sintomas de artrite', 2, 3),
('2024-12-20', 'Tratamento para dor cr�nica de enxaqueca', 3, 5),
('2024-11-02', 'Cansa�o excessivo', 4, 2),
('2024-12-17', 'Consulta para ajuste de medica��o de diabetes', 5, 1),
('2024-01-13', 'Consulta inicial para hipertens�o', 6, NULL),
('2024-01-26', 'Exame de rotina', 7, NULL),
('2024-02-14', 'Acompanhamento de ins�nia', 8, 1),
('2024-02-20', 'Avalia��o de perda de peso', 9, 7),
('2024-03-10', 'Queixas de cansa�o', 10, 8),
('2024-01-11', 'Dores articulares', 11, 3),
('2024-01-12', 'Dores articulares', 12, 3),
('2024-01-13', 'Dores articulares', 13, 3);

GO

-- VIEW PARA VERIFICAR QUAIS DOEN�AS S�O MAIS FRENQUENTES EM CADA MES

CREATE VIEW VW_Doencas_Mais_Frenquente
AS
SELECT 
    MONTH(c.Data_Consulta) AS Mes,
    d.Nome_Doenca,
    COUNT(*) AS Frequencia
FROM 
    Consultas c
JOIN 
    Doencas d ON c.Id_Doenca = d.Id_Doenca
GROUP BY 
    MONTH(c.Data_Consulta), 
    d.Nome_Doenca;

SELECT *
FROM VW_Doencas_Mais_Frenquente
ORDER BY Mes, Frequencia DESC;


-- RANKING DAS PESSOAS QUE MAIS TIVERAM DOE�AS
CREATE VIEW VW_Ranking_Exames
AS
SELECT 
P.Id_Paciente, P.Nome, C.Id_Consulta
	FROM 
	Paciente AS P
JOIN 
	Consultas AS C

ON P.Id_Paciente = C.Id_Paciente


SELECT * FROM VW_Ranking_Exames
ORDER BY Id_Paciente DESC;

