--Criando Database
Create Database FamiliaJonsons_Varejo

GO 
--Indicando seu uso para cria��o de tabelas
Use FamiliaJonsons_Varejo

go
--Criando tabela de Funcionarios
Create Table Funcionario (
IdFuncionario int not null Identity Primary Key,
NomeFuncionario VarChar(60) not null,
CPFFuncionario Char(11),
SalarioFuncionario float Not Null
)

go 
--Criando tabela de Categoria, que ser� referenciada na tabela de produtos para explicar sua categoria
Create Table Categoria (
IdCategoria int Not Null Primary Key Identity,
NomeCategoria VarChar(50) Not Null
)

Go 
--Criando tabela Especial de endere�os, j� que v�rios clientes podem ter o mesmo endere�o
Create Table Endereco (
IdEndereco int Not Null Primary Key Identity,
ModeloEndereco VarChar(40),
Logradouro VarChar(60) Not Null,
NumeroLogradouro int Not Null,
CEP Char(8),
Bairro VarChar(40) Not Null,
Cidade VarChar(40) not Null,
UF Char(2) Not Null
)

Go 
--Criando tabela de Clientes, Armazenando todos os dados do mesmo
Create Table Cliente (
IdCliente int Not Null Primary Key Identity,
NomeCliente VarChar(100) Not Null,
CPFCLiente Char(11) not null,
DataNascimento date not null,
LoginCliente Varchar(20) Not Null,
SenhaCliente VarChar(20) Not Null,
EmailCliente VarChar(80) Not Null,
TelefoneCliente Char(11) Not Null,
IdEndereco int Foreign Key References Endereco(IdEndereco)
)

Go
--Criando tabela de Criando a tabela de Pedidos, que armazer� o id do cliente e ser� mandada para tabela de ordem de servi�o para receber seus respectivos produtos
Create Table Pedido (
IdPedido int Not Null Primary Key Identity,
DataPedido Date Default Getdate(),
IdCliente int Foreign Key References Cliente(IdCliente) On Delete Cascade On Update Cascade Not Null ,
/*Com o comando on delete e on update casacade, qualquer altera��o que for feita na tabela de clientes que afetaria
o resto das tabelas ligadas a ela por foreing keys ocorer� sem problemas, no caso do delete, todos os refistros 
relacionados ao id que foi excluido ser�o exluidos tamb�m, arricado, por�m menos que desligar as chaves e correr
os risco de quando as ligar novamente o erro do id do cliente aparecer e n�o existir na tabela de clientes e
isso geraria um grande erro.*/
)

go
--Criando tabela de Produtos
Create Table Produto (
IdProduto int Not Null Primary Key Identity,
NomeProduto VarChar(60) Not Null,
QuantidadeEstoque int Not Null,
DataFabricacao Date Not Null,
ValorUnitario Float Not Null,
IdFuncionario int Foreign Key References Funcionario(IdFuncionario),
IdCategoria int Foreign Key References Categoria(IdCategoria),
DataCadastro Date Default GetDate()
)
go
--Criando tabela que referenciar� os itens por pedido, ou seja, aqui ser� armazenada os pedidos feitos e seus respectivos produtos
Create Table OrdemServico (
IdOrdemServico int Not Null Primary Key Identity,
IdPedido int Foreign key References Pedido(IdPedido) On Delete Cascade On Update Cascade Not Null,
IdProduto int Foreign Key References Produto(IdProduto),
QuantidadeProdutos int not null
)
