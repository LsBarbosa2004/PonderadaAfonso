DROP TABLE IF EXISTS `Clientes`;

CREATE TABLE `Clientes` (
  `ClienteID` VARCHAR(20) NOT NULL,    
  `Nome` VARCHAR(255) NULL,           
  `TipoCliente` CHAR(1) NULL,         
  `Telefone` VARCHAR(20) NULL,        
  `Celular` VARCHAR(20) NULL,          
  `Email` VARCHAR(255) NULL,          
  `Status` VARCHAR(20) NULL DEFAULT 'Ativo', 
  PRIMARY KEY (`ClienteID`)          
);

DROP TABLE IF EXISTS `EnderecosClientes`;

CREATE TABLE `EnderecosClientes` (
  `EnderecoID` INT AUTO_INCREMENT,     
  `ClienteID` VARCHAR(20) NULL,        
  `TipoEndereco` CHAR(1) NULL,        
  `Logradouro` VARCHAR(255) NULL,     
  `Cidade` VARCHAR(100) NULL,          
  `Estado` VARCHAR(50) NULL,           
  `CEP` VARCHAR(20) NULL,             
  PRIMARY KEY (`EnderecoID`),          
  FOREIGN KEY (`ClienteID`) REFERENCES `Clientes` (`ClienteID`)  
);


DROP TABLE IF EXISTS `InformacoesFiscais`;

CREATE TABLE `InformacoesFiscais` (
  `FiscalID` INT AUTO_INCREMENT,       
  `ClienteID` VARCHAR(20) NULL,        
  `CPF_CNPJ` VARCHAR(20) NULL,        
  `RegimeTributario` VARCHAR(50) NULL, 
  `CodAtividade` VARCHAR(10) NULL,    
  PRIMARY KEY (`FiscalID`),            
  FOREIGN KEY (`ClienteID`) REFERENCES `Clientes` (`ClienteID`)  
);


DROP TABLE IF EXISTS `ContasBancarias`;

CREATE TABLE `ContasBancarias` (
  `ContaID` INT AUTO_INCREMENT,       
  `ClienteID` VARCHAR(20) NULL,       
  `Banco` VARCHAR(100) NULL,          
  `Agencia` VARCHAR(20) NULL,         
  `NumeroConta` VARCHAR(20) NULL,     
  `TitularConta` VARCHAR(255) NULL,    
  PRIMARY KEY (`ContaID`),            
  FOREIGN KEY (`ClienteID`) REFERENCES `Clientes` (`ClienteID`)  
);
