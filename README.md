Almoxarifado
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.3
- Rails 4.2.6

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).


Documentation and Support
-------------------------

Sistema para controle de almoxarifado com as seguintes funcionalidades:

- Cadastro de usuário (login e senha apenas)
- Após efetuado o login o usuário poderá:
  - CRUD de materiais: criar, listar, apagar, editar (nome do material)
  - Dar entrada no material (material e quantidade)
  - Retirar material (material e quantidade)

  - Ao adicionar ou retirar material deve ser salvo um log de alterações informando qual o usuário responsável, material e quantidade retirada/adicionada

  - Tela de lista dos materiais (nome, quantidade (mesmo que 0), link para um log de entrada/retirada com as informações do log)

Observações:
- se um material já tiver qualquer registro de retirada ou entrada não permitir que o mesmo seja excluído
- o nome de um material deve ser único
- o saldo dos materiais não pode ser negativo
- a retirada de materiais só pode ser feita entre 9h e 18h de segunda a sexta
- Um usuário não pode ser excluído


Credits
-------

License
-------
