Use FamiliaJonsons_Varejo--Iniciando a query indicamos qual � o banco de dados que ela deve usar para seguir com os comandos

Go

Select * From Cliente Where NomeCliente = 'Maria L�via da Luz' -- mostra como estava antes do comando
Go
/*5.B) Com o comando update, novamente, pegamos um cliente qualquer para que seu email e telefone sejam atualizados*/
Update Cliente 
Set EmailCliente = 'mariazinhaluzdarua@outlook.com', 
TelefoneCliente = '21171991719' 
Where NomeCliente = 'Maria L�via da Luz'

Go

Select * From Cliente Where NomeCliente = 'Maria L�via da Luz' --mostramos a atualiza��o aqui

