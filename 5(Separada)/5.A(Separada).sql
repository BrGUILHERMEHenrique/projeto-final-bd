Use FamiliaJonsons_Varejo--Iniciando a query indicamos qual � o banco de dados que ela deve usar para seguir com os comandos

Go
Select * From Funcionario
Go
/*Usando o comando update para atualizar o sal�rio de todos os funcion�rios para receberem 500 reais a mais*/
Update Funcionario Set SalarioFuncionario = (SalarioFuncionario + 500)
Select * From Funcionario