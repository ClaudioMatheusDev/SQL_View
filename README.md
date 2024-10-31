# Projeto SQL - Teste de Views

Este projeto contém a criação de tabelas relacionadas a pacientes, exames, doenças e consultas médicas, além de views que permitem analisar e consultar dados de forma prática.

## Estrutura do Projeto

### Tabelas

As tabelas a serem criadas no banco de dados são as seguintes:

- **Paciente**: Armazena informações sobre os pacientes.
- **Exames**: Contém dados sobre os exames realizados.
- **Doenças**: Registra as doenças cadastradas no sistema.
- **Consultas**: Relaciona-se com as tabelas anteriores para registrar consultas realizadas.

Cada tabela possui seus respectivos campos necessários para armazenar as informações básicas e atender aos requisitos das views.

### Views Criadas

As views permitem consultas frequentes e análises do banco de dados, facilitando o entendimento dos dados. As views incluídas são:

1. **Doenças Mais Frequentes por Mês**: Lista as doenças mais recorrentes, agrupadas por mês de ocorrência.
2. **Ranking de Doenças e Quantidade de Pessoas Acometidas**: Fornece um ranking das doenças de acordo com a quantidade de pessoas afetadas.
3. **Pessoas que Mais Tiveram Doenças**: Mostra as pessoas com o maior número de ocorrências de doenças.

## Instruções de Uso

1. Crie as tabelas no banco de dados conforme as instruções fornecidas no projeto.
2. Execute as queries para criar as views, garantindo que as relações entre as tabelas estejam configuradas corretamente.
3. Utilize as views para realizar consultas e análises dos dados de forma simples e eficiente.

## Tecnologias Utilizadas

- SQL Server

Este projeto visa auxiliar no aprendizado de SQL e na criação de consultas complexas com views, facilitando análises frequentes e otimizando o uso de banco de dados.
