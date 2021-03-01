## Inmetrics challange

Pré requisitos:
-Ruby 2.5 instalado
-Instalar nodejs
-chromedriver na pasta bin do ruby (vide a versão do navegador)
-Rodar os seguintes comandos
```sh
$ gem install win32console
$ gem install bundler -v '1.16.5'
$ gem install ruby-debug-ide
```
-rodar 'bundle install' estando dentro da raiz do projeto para instalar as gems
-para rodar todas as features do desafio, basta executar o comando "cucumber -t @desafio"
### CMDER
More recent version [Cmder](https://cmder.net/)

Gems utilizadas:
-----------------
capybara
cucumber
rspec
selenium-webdriver
site_prism
pry
faker
httparty (testes de backend realizados com esta gem devido ao que foi solicitado no enunciado do desafio (que deveria ser ruby o java), caso eu fosse montar a estrutura, utilizaria POSTMAN ou NodeJs com mochatest e newman!!)


Estrutura de pastas do projeto
------------------------------
Features:
	page_objects: Pasta definida para armazenar os elementos e funções referente a automação web e api.
	
	specs:
	  api/site: pasta principal para armazer as features que por sua vez contém os bdds

	steps_definitions:
	  api/site: o objetivo dessa pasta é armazenar os passos em ruby para os testes 

Support: Algumas pastas e arquivos foram utilizados como destacado abaixo:
   data: contém o arquivo test_data.yaml que sua funcionalidade é armazer as massas de dados para serem utilizada nos testes
 env.rb: este arquivo é utilizado para fazer o require das gems, e também possui a configuração do apphost e baseurl_api
	     default_driver: possui a configuração do selenium_chrome
		        apphost: contém a url principal do site para realizar os testes web
		    baseurl_api: possui o link principal do serviço para realizar os testes de apis.
				outros: poderia contenter diversos outros arquivos como utils para reaproveitamento de metodos, e demais configurações de suma importancia para a automação!
 
 hooks.rb:
	Este arquivo faz a referência para as classes tanto para web quanto para api instanciando as classes no Before 
	e permitindo as mesmas serem utilizadas em qualquer parte do projeto

 
 pasta report:  armazena os relatórios gerados durante a execução dos testes.


 A etapa do desafio relacionada ao pipeline e jenkins não realizei pois não havia conhecimento suficiente

OBRIGADO PELA OPORTUNIDADE!!
