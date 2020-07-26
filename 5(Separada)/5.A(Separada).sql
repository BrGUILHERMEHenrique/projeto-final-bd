Use FamiliaJonsons_Varejo--Iniciando a query indicamos qual é o banco de dados que ela deve usar para seguir com os comandos

Go
Select * From Funcionario
Go
/*Usando o comando update para atualizar o salário de todos os funcionários para receberem 500 reais a mais*/
Update Funcionario Set SalarioFuncionario = (SalarioFuncionario + 500)
Select * From Funcionario