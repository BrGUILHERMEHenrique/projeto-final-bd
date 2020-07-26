Use FamiliaJonsons_Varejo

Go

--Inserindo os dados dos funcionários
Insert Into Funcionario
	   ( NomeFuncionario,CPFFuncionario,SalarioFuncionario )
Values
	   ('Steve Jobs','15926510221', 1200.70),
	   ('Alfred Pennyworth','14865232554', 1400),
	   ('Stan lee','17962553698',2000.80),
	   ('Pepper Potts','18920665889',1500.00),
	   ('Harleen Frances Quinzel','15789665441', 1000.00),
	   ('Thomas Shelby','18920391576',1490.00),
	   ('Bill Gates', '00101001110', 2000.98)
--Inserindo os dados das categorias que serão usados nos produtos	   
Insert Into Categoria 
Values ('Eletrodomésticos'), ('TV & Vídeo'), ('Celulares'), ('Informática'), ('Móveis'), ('Audío'),
	   ('Games'), ('Eletroportáteis'), ('Beleza e perfumaria'), ('Câmera e Drones')

Go
--Inserindo os dados dos produtos que a loja disponibiliza
Insert Into Produto (NomeProduto, QuantidadeEstoque, DataFabricacao, ValorUnitario, IdFuncionario, IdCategoria)
Values ('Motorola Moto G8 Power Lite', 100, '2020-01-30', 1301.07, 6, 3),
	   ('Spider-Man PS4', 50, '2019-06-12', 149.90, 3, 7),
	   ('Sofá 4 Lugares Net Royale Assento Retrátil', 10, '2015-03-21', 1099.99, 5, 5),
	   ('Intel CoreI9(9900k)', 40, '2020-03-09', 4000.50, 7, 4),
	   ('Liquidificador Arno Power Max 700-Preto 5 velocidades', 200, '2019-08-05', 250.30, 5, 5),
	   ('SmartTV 4k Led 65" Samsung', 100, '2020-02-24', 4179.05, 2, 2),
	   ('Mavic Air 2 Fly More Combo DJI com câmera 4k', 20, '2020-06-10', 10900.55 , 1, 10),
	   ('Controle Remoto LG Magic', 200, '2019-12-22', 100, 4, 2),
	   ('Geladeira/Refrigerador Consul Frost Free Duplex', 20, '2020-05-12', 2899.00, 6, 1),
	   ('The last of us 2', 10, '2020-06-19', 252.10, 7, 7),
	   ('Secador De Cabelo Taiff Tourmaline Íon Cerâmica', 50, '2020-03-04', 250.91, 4, 8),
	   ('Xiaomi A3', 30, '2019-06-19', 3000.00, 3, 3),
	   ('Câmera Mini CCD Sony 420L', 100, '2018-10-30', 73.34, 5, 10),
	   ('Escrivaninha 2 Gavetas', 60, '2019-08-12', 199.90, 6, 5)
--Inserindo os dados de endereço

Insert Into Endereco (ModeloEndereco,Logradouro,NumeroLogradouro,CEP,Bairro,Cidade,UF)
Values('Comercial','Rua Bequimão',123,'79106081','Jardim Aeroporto','Campo Grande','MS'),
	  ('Residencial','Travessa Trinta e Um de Julho',1853,'68904405','Novo Buritizal','Amapá','AP'),
	  ('Comercial','Alameda Álvares Maciel',1098,'38411318','City Uberlândia','Uberlândia','MG'),
	  ('Residencial','Rua Araguaia',1876,'76914654','Flórida','Ji-Paraná','RO'),
	  ('Comercial','Rua Topázio',01,'35661265','Jardim Beatriz','Pará de Minas','MG'),
	  ('Residencial','Rua Macapá',324,'68906847','Cabralzinho','Macapá','AP'),
	  ('Comercial','Rua Jhonsons',37362,'54806241','Larangeiras','Cabo verde','CV'),
	  ('Residencial','Rua da Jaqueira',1548,'87456255','Cebo de Diarreia','Buraco do Cabrunco','BC'),
	  ('Comercial','Rua Ângelo Romano',186,'14060680','Presidente Dutra','Rio de Janeiro','RJ'),
	  ('Residencial','Rua Itu', 1120,'14075090','Vila Carvalho','Rio de Janeiro','RJ'),
	  ('Residencial','Rua Pedro Colino,',270,'14079044','Léo Gomes','Rio de Janeiro','RJ'),
	  ('Residencial','Rua Cruz e Souza',3100,'14031560','- Parque Ribeirão Preto ','Rio de Janeiro','RJ'),
	  ('Residencial','Rua Roberto Michellin',95,'14061190','Antônio Marincek','Rio de Janeiro','RJ'),
	  ('Residencial','Rua Genoveva Onofre Barban',851,'58498625','Ipanema','Rio de Janeiro','RJ'),
	  ('Residencial','Av. Alfredo Balthazar da Silveira',60,'25953190','Várzea','Teresópolis','RJ'),
	  ('Residencial','Av. Treze de Maio',12,'20031905','Centro','Teresópolis','RJ')


go
--inserindo os dados dos clientes
Insert Into Cliente(NomeCliente,CPFCliente,DataNascimento,LoginCliente,SenhaCliente,EmailCliente,TelefoneCliente, IdEndereco)
Values('César Ricardo Gomes','01003765505','2000-05-11','Cesarricardo123',' CpfEw1ycXZ','cesarricardogomes_@panevale.com.br','67991609063', 5),
	  ('Nathan Kauê Cavalcanti','15682879848','1989-02-15','nathan157','F5KtzbjmYZ','nathankauecavalcantii@starmidia.tv','96999380686', 2),
	  ('Vera Rafaela Melo','63738585028','1997-08-29','VeraMelo171','OpnzhK3Apa','verarafaelamelo-71@vcp.com.br','34998474437', 3),
	  ('Heitor Benício Davi Brito','53464571947','2001-12-25','HeitorJhonons','3KnXzI2kO1','heitorbeniciodavibrito@truckeixo.com.br','69994422462', 4),
	  ('Henry Giovanni Lorenzo Galvão','49454317105','1970-04-11','henryBoladao','2cgT78mFtz','hhenrygiovannilorenzogalvaohawk.com.br','37981160905', 1),
	  ('Maria Lívia da Luz','47557684540','1973-03-26','Luzdarua','tqQPL82DaZ','mmarialiviadaluz@advogadosempresariais.com.br','96996666825',6),
	  ('Jose Quente De Sousa','14785236901','1986-05-11','JoseOQuente','avsgdvdbte','Josequentedesousa@gmail.com','21985469547',7),
	  ('Carlos Lindoso da Silva','15987463201','1973-06-08','LindodeMorrer','515dasdasd','CarlosLindosodasilva.com','55954875421',8),
      ('Bernardo Carvalho Freitosas', '32178952101','1950-09-17','bernadofreis123','1541sjdh','bernadofreidocarmo@gmail.com','3167334050', 5),
	  ('Jabiula Pereira','23569874510','1956-10-10','jabilson123','15shudga','jabiula@gmail.com', '97034059',16),
	  ('Laurindo da silva','12369874520','1963-04-15','laurindoofamoso','147klaksh','laurindodasilva.com','31981234569', 10),
	  ('Carla Edurada Maria Conceicao da silva','01236547890','1958-12-12','CarlaSilva548','2548lksjs','carlaeduardabondosa@gmai.com','21954864758', 12),
	  ('Falaesão Pedroso Caido','01256987430','1986-02-26','falaesaopedroso','2512lkosp','falaesaopedrosocaido.com.br','25932145698', 14),
	  ('Maria do Bairro','36974125801','1968-03-31','mariadanovela','254jhagsdga','mariadobairro@live.com','21964587946', 11),
	  ('Fausto Silva Beira Marte','00000000001','1995-10-09','faustosilva123','254çlpsd','fautosilvaoApresentador@gmail.com','2196446790', 15),
	  ('Menor da Turma BR','25369874120','1995-10-09','menorbrabo123','241lksjdha','menordaturma.com.br','31964512542', 9),
	  ('Meu amigo Enzo','23698745102','2005-07-14','meuamigoenzo','11154jhsd','meuamigoenzo@gmail.com','31245642154', 13),
	  ('Bielzinho da NASA','32698547801','2001-04-11','bielzinhoboladao','15çlapoq','bielzinhoNASA123.gmail.com','22964532879', 4),
	  ('Carlinhos Amigo do Bielzinho','02145369870','2004-08-29','calinha157','C5rTp9o','carlinhoamigodoBiel@gmail.com','64987546821', 10)

go
--inserindo os dados de pedidos
Insert Into Pedido (IdCliente)
Values (2),(7),(9),(5),(3),(19),(17),(10),(11),(15),(1),(6),(16),(14),(4),(8),(13), (13), (7), (10), (14), (8), (9), (8)
--inserindo os dados das Ordens de Serviços, ou lista de itens
Insert Into OrdemServico (IdPedido, IdProduto, QuantidadeProdutos)
Values (1, 1, 2), 
(2, 7, 1), 
(5 , 5, 2), 
(2, 4, 1), 
(3, 6, 1), 
(3, 1, 2), 
(4, 10, 2), 
(10, 12, 1), 
(12, 13, 5), 
(11, 7, 1), 
(17, 3, 1), 
(14, 2, 2), 
(9, 4, 1), 
(12, 9, 1), 
(12, 10, 2), 
(24, 12, 1),
(18, 6, 1),
(19, 11, 2),
(23, 13, 2),
(20, 14, 1),
(21, 6, 1),
(22, 10, 1)