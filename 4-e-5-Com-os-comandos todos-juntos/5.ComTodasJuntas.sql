Use FamiliaJonsons_Varejo--Iniciando a query indicamos qual � o banco de dados que ela deve usar para seguir com os comandos

Go

Select * From  Funcionario--antes
Go
--5.A) Muda o dal�rio de todos os funcion�rios somando 500 reais a eles
Update Funcionario Set SalarioFuncionario = (SalarioFuncionario + 500)
Go
Select * From Funcionario--depois

--5.B) Escolhe um cliente e muda e-mail e telefone
Select * From Cliente Where NomeCliente = 'Maria L�via da Luz'--antes do comando
Go
Update Cliente Set EmailCliente = 'Exemplo@Exemplo.com', TelefoneCliente = '21171991719' Where NomeCliente = 'Maria L�via da Luz'
Go
Select * From Cliente Where NomeCliente = 'Maria L�via da Luz'--depois do comando


