# Orcamento (Flask + MySQL via XAMPP)

Aplicação Flask simples para gerenciar itens de orçamento. O MySQL pode ser o do XAMPP (inicie o serviço MySQL no painel do XAMPP).

## Estrutura relevante
- Orcamento/
  - app.py (entrypoint)
  - templates/        -> arquivos HTML (usa `static/style.css`)
  - static/style.css  -> estilos (já existe)
  - Readme.txt        -> script SQL para criar DB/tabela

## Requisitos
- Python 3.8+
- XAMPP (MySQL)
- Bibliotecas Python:
  - Flask
  - mysql-connector-python

Instalar dependências:
```
python -m venv venv
venv\Scripts\activate
pip install Flask mysql-connector-python
```

## Configurar banco de dados
No XAMPP, inicie o MySQL. O SQL para criar o banco e a tabela está em `Orcamento/Readme.txt`. Exemplo de configurações esperadas (ajuste conforme seu ambiente):

- DB_HOST=127.0.0.1
- DB_PORT=3306
- DB_USER=root
- DB_PASSWORD=(sua senha, pode ser vazia se default)
- DB_NAME=rack_management

Você pode executar o conteúdo de `Readme.txt` via phpMyAdmin (XAMPP) ou cliente MySQL para criar o banco e a tabela.

## Variáveis de ambiente (Windows - cmd)
```
set FLASK_APP=app.py
set FLASK_ENV=development
set DB_HOST=127.0.0.1
set DB_USER=root
set DB_PASSWORD=
set DB_NAME=rack_management
```

(Em PowerShell use `$env:VAR = 'valor'`.)

## Executando a aplicação
1. Ative o virtualenv:
```
venv\Scripts\activate
```
2. Inicie o servidor Flask:
```
python app.py
```
ou
```
flask run
```
Acesse: http://127.0.0.1:5000/

