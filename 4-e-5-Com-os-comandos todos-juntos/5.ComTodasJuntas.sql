Use FamiliaJonsons_Varejo--Iniciando a query indicamos qual é o banco de dados que ela deve usar para seguir com os comandos

Go

Select * From  Funcionario--antes
Go
--5.A) Muda o dalário de todos os funcionários somando 500 reais a eles
Update Funcionario Set SalarioFuncionario = (SalarioFuncionario + 500)
Go
Select * From Funcionario--depois

--5.B) Escolhe um cliente e muda e-mail e telefone
Select * From Cliente Where NomeCliente = 'Maria Lívia da Luz'--antes do comando
Go
Update Cliente Set EmailCliente = 'Exemplo@Exemplo.com', TelefoneCliente = '21171991719' Where NomeCliente = 'Maria Lívia da Luz'
Go
Select * From Cliente Where NomeCliente = 'Maria Lívia da Luz'--depois do comando


