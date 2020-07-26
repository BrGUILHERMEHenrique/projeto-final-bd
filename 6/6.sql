Use FamiliaJonsons_Varejo--Iniciando a query indicamos qual é o banco de dados que ela deve usar para seguir com os comandos

Go
--Como estava antes do comando
Select * From Cliente Where EmailCliente  not like '%@%' or Len(SenhaCliente) < 8
Go
Delete From Cliente --6) Aqui selecionamos todos os clientes que tem email sem @ ou senha menor que 8 digitos para serem excluidos
Where EmailCliente  not like '%@%' or Len(SenhaCliente) < 8
Go
--Depois do comando
Select * From Cliente Where EmailCliente  not like '%@%' or Len(SenhaCliente) < 8