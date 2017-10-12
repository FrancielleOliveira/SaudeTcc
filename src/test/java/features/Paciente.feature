Feature: Pacientes
  Como usuário, desejo cadastrar e pesquisar pacientes.

  Background:
    Given eu estou na home do sistema
    And eu clicar no botão Cadastros
    And eu clicar no botão Cadastro Paciente
    And eu estar na pagina de cadastro do paciente

    Scenario: salvar medico com sucesso
      And eu digitar as informações de paciente completas
        |  nome |  			CPF 	|  telefone | 				email 			|  logradouro| numero | complemento | 	CEP 	| cidade/UF | 
        | teste | 10567900673 |  32326666 | franteste@gmail.com |  rua teste | 		45	| 		apt 5 	| 38414446|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Paciente salvo com sucesso”

    Scenario: salvar paciente sem inserir nome
      And eu digitar as informações do paciente exceto nome
       	|  		CPF 		|  telefone | 				email 			|  logradouro| numero | complemento | 	CEP 	| cidade/UF | 
      	| 10567900673 |  32326666 | franteste@gmail.com |  rua teste | 		45	| 		apt 5 	| 38414446|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo nome” em forma de alert no topo da página

    Scenario: salvar paciente sem inserir CPF 
      And eu digitar todas  as informacoes do paciente exceto CPF
      |  nome |  telefone | 				email 			|  logradouro| numero | complemento | 	CEP 	| cidade/UF | 
      | teste |  32326666 | franteste@gmail.com |  rua teste | 		45	| 		apt 5 	| 38414446|	uberlandia|        
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo CRM” em forma de alert no topo da página

    Scenario: salvar paciente sem inserir telefone
      And eu digitar todas  as informacoes do paciente exceto tefone
        |  nome |  			CPF 	| 				email 			|  logradouro| numero | complemento | 	CEP 	| cidade/UF | 
        | teste | 10567900673 | franteste@gmail.com |  rua teste | 		45	| 		apt 5 	| 38414446|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo telefone” em forma de alert no topo da página

    Scenario: salvar paciente sem inserir email
      And eu digitar todas  as informacoes do paciente exceto email
        |  nome |  			CPF 	|  telefone |  logradouro| numero | complemento | 	CEP 	| cidade/UF | 
        | teste | 10567900673 |  32326666 |  rua teste | 		45	| 		apt 5 	| 38414446|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo email” em forma de alert no topo da página

    Scenario: salvar paciente sem inserir logradouro
      And eu digitar todas  as informacoes do paciente exceto logradouro
        |  nome |  			CPF 	|  telefone | 				email 			| numero | complemento | 	CEP 	 | cidade/UF  | 
        | teste | 10567900673 |  32326666 | franteste@gmail.com | 		45 | 		apt 5 	 | 38414446|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo logradouro” em forma de alert no topo da página


Scenario: salvar paciente sem inserir numero
      And eu digitar todas  as informacoes do paciente exceto numero
        |  nome |  			CPF 	|  telefone | 				email 			|  logradouro| complemento | 	CEP 	 | cidade/UF  | 
        | teste | 10567900673 |  32326666 | franteste@gmail.com |  rua teste | 		apt 5 	 | 38414446|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo numero” em forma de alert no topo da página

    Scenario: salvar paciente sem inserir CEP
      And eu digitar todas  as informacoes do paciente exceto CEP
        |  nome |  			CPF 	|  telefone | 				email 			|  logradouro| numero | complemento | cidade/UF | 
        | teste | 10567900673 |  32326666 | franteste@gmail.com |  rua teste | 		45	| 		apt 5 	|	uberlandia|
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo CEP” em forma de alert no topo da página
      
      
      Scenario: salvar paciente sem inserir cidade/UF
      And eu digitar todas  as informacoes do paciente exceto cidade/UF
        |  nome |  			CPF 	|  telefone | 				email 			|  logradouro| numero | complemento | 	CEP 	| 
        | teste | 10567900673 |  32326666 | franteste@gmail.com |  rua teste | 		45	| 		apt 5 	| 38414446|	
      And eu clicar no botão Salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo cidade/UF” em forma de alert no topo da página
      
    Scenario: salvar paciente sem preencher todos os campos obrigatórios
      And eu clicar no botao salvar
      Then eu devo visualizar a mensagem “Favor preencher o campo nome” em forma de alert no topo da página
      Then eu devo visualizar a mensagem “Favor preencher o campo CPF” em forma de alert no topo da página
      Then eu devo visualizar a mensagem “Favor preencher o campo telefone” em forma de alert no topo da página
      Then eu devo visualizar a mensagem “Favor preencher o campo email” em forma de alert no topo da página
      Then eu devo visualizar a mensagem “Favor preencher o campo logradouro” em forma de alert no topo da página
      Then eu devo visualizar a mensagem “Favor preencher o campo numero” em forma de alert no topo da página
      Then eu devo visualizar a mensagem “Favor preencher o campo CEP” em forma de alert no topo da página
      
