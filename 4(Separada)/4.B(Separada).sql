Use FamiliaJonsons_Varejo

GO

/*4. b) Aqui fazemos uma consulta na tabela de pedidos para saber quem foi o cliente que fez o mesmo.
nota: Nesta consulta n�o mostramos os itens que o cliente comprou e sim somente o c�digo do pedido e o cliente que fez*/
Select 
Pe.IdPedido as [C�digo do pedido],--Novamente usando o alias para dar espa�o entre as palavras
C.NomeCliente as Cliente,
C.TelefoneCliente as Contato
From 
Pedido Pe Inner Join Cliente C on (Pe.IdCliente = C.IdCliente)--Juntando as tabelas de pedidos e clientes onde o id do cliente � igual nas duas
