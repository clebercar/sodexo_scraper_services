<h1 align="center">
    <img alt="sodexo_scraper" src="https://res.cloudinary.com/clebercarvalho-dev/image/upload/c_scale,w_419/v1594844669/imagens%20de%20resposit%C3%B3rios/sodexo.png" />
    <br>
    Sodexo Scraper
</h1>

<h4 align="center">
  Extraia as informações do seu cartão sodexo.
</h4>

<p align="center">
  <a href="#rocket-tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#information_source-como-utilizar"> Como utilizar</a>&nbsp;&nbsp;&nbsp;
</p>

## :rocket: Tecnologias

Este projeto foi construído utilizando as seguintes tecnologias:

-  [NodeJS](https://nodejs.org/en/)
-  [Typscript](https://www.typescriptlang.org/)
-  [Express](https://expressjs.com/pt-br/)
-  [ReactJS](https://pt-br.reactjs.org/)
-  [Docker](https://docs.docker.com/get-docker/)
-  [Docker Compose](https://docs.docker.com/compose/gettingstarted/)

## :information_source: Como utilizar

Para clonar e executar essa aplicação, você irá precisar do [Git](https://git-scm.com), [Docker](https://docs.docker.com/get-docker/) e [Docker Compose](https://docs.docker.com/compose/) instalados em seu computador.

Após isso atribua permissão de execução ao arquivo **setup.sh** e o execute em seguida.

```bash
chmod +x ./setup.sh
./setup.sh
```

Feito isso, dentro do diretório ./apps/api, faça uma cópia do arquivo **.env.sample** utilizando o nome **.env**.

```bash
cp .env.sample .env
```

Caso deseje utilizar o serviço do MongoDB que já se encontra no arquivo docker-compose.yml, não será preciso fazer mais nada, caso contrário altere as váriaveis **DB_HOST**, **DB_PORT**, **DB_NAME** no arquivo **.env**.

### Inicializando os serviços

```bash
docker-compose up --build
```

Após todos os serviços estarem rodando, será possível visualizar a tela inicial atrávés da url http://localhost:3000.

---

Feito por [Cleber Carvalho](https://www.linkedin.com/in/cleber-carvalho/)