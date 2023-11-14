CREATE TABLE `usuario` (
  `cpf` int(11) PRIMARY KEY NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `cep` int(8) NOT NULL,
  `data_Nasc` varchar(10) NOT NULL,
  `telefone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `Seguro` (
  `id_seguro` int(10) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL, 
  `dta_validade` varchar(8) NOT NULL,
  FOREIGN KEY (cpf) REFERENCES usuario(cpf)
)

CREATE TABLE `Sinistro` (
  `cpf` int(11) PRIMARY KEY NOT NULL,
  `id_seguro` int(10) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL, 
  `dta_validade` varchar(8) NOT NULL,
  FOREIGN KEY (cpf) REFERENCES usuario(cpf)
)










