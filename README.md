# Automation API QAOps ServeRest

Este repositório contém testes automatizados para a API [ServeRest.dev](https://serverest.dev/), focando em operações de CRUD de usuários com abordagem QAOps, integração contínua (CI/CD), geração de relatórios visuais e metodologia Page Object estruturada com passos DADO / QUANDO / ENTÃO em português.

---

## Objetivo

Garantir qualidade, estabilidade e confiabilidade das operações CRUD (criação, leitura, atualização, exclusão) da API ServeRest, utilizando autenticação via token JWT e uma estrutura clara de testes automatizados.

---

## Público-Alvo

- Equipes de QA e Testes
- Desenvolvedores responsáveis pela API
- Gestores interessados em qualidade contínua e relatórios claros sobre status dos testes

---

## Escopo dos Testes

- **Auth**
  - Login: `/login`
- **Users**
  - Listar: `GET /usuarios`
  - Criar: `POST /usuarios`
  - Consultar: `GET /usuarios/:id`
  - Atualizar: `PUT /usuarios/:id`
  - Excluir: `DELETE /usuarios/:id`

---

## Metodologia

- QAOps: testes integrados com pipeline de CI/CD.
- Page Object com requests estruturados claramente no Postman.
- Passos em português com DADO / QUANDO / ENTÃO para facilitar entendimento e manutenção.

---

## Tecnologias e Ferramentas

- [Node.js](https://nodejs.org/) v16+
- [Newman](https://www.npmjs.com/package/newman)
- [newman-reporter-html](https://www.npmjs.com/package/newman-reporter-html)
- [GitHub Actions](https://docs.github.com/actions)

---

## Estrutura do Projeto

```bash
api-tests-serverest/
├── postman
│   ├── Serverest.postman_collection.json
│   └── Serverest.postman_environment.json
├── scripts
│   └── run_tests.sh
├── .github
│   └── workflows
│       └── ci.yml
├── README.md
└── .gitignore
```

---

## Como Executar Localmente

### 1. Pré-Requisitos

- Node.js e npm instalados

### 2. Instalar Dependências

```bash
npm init -y
npm install --save-dev newman newman-reporter-html
```

### 3. Rodar os Testes

```bash
npx newman run postman/Serverest.postman_collection.json --environment postman/Serverest.postman_environment.json --reporters "cli,html" --reporter-html-export report.html
```

Abra o arquivo `report.html` no navegador para ver os resultados visuais dos testes.

---

## Integração Contínua com GitHub Actions

O pipeline CI é definido em `.github/workflows/ci.yml` e realiza os seguintes passos:

- Instala Node.js e dependências
- Executa os testes automatizados com Newman
- Gera relatório HTML e disponibiliza-o como artefato no GitHub Actions

---

## Cenários de Teste

- **Auth**
  - Obtenção de token JWT com usuário válido.

- **Usuários**
  - Listagem completa dos usuários.
  - Criação de novo usuário (gerando id).
  - Consulta de usuário específico usando o id.
  - Atualização dos dados de usuário.
  - Exclusão de usuário pelo id.

---

## Boas Práticas Aplicadas

- Uso de variáveis de ambiente (`base_url`, `authToken`, `userId`).
- Nomes intuitivos em português (DADO, QUANDO, ENTÃO).
- Uso consistente de estrutura Page Object no Postman.

---

## Como Contribuir

1. Faça um fork do projeto.
2. Crie uma branch para suas alterações: `git checkout -b feature/minha-nova-funcionalidade`.
3. Commit suas alterações: `git commit -am 'Minha nova funcionalidade'`.
4. Abra um Pull Request para análise das alterações.

---

## Licença

Este projeto é criado com fins educacionais e demonstrativos. Sinta-se à vontade para copiar, modificar e utilizar conforme suas necessidades de aprendizado.

---

**Contato**

Para dúvidas, sugestões ou melhorias, crie um Issue neste repositório ou entre em contato via [LinkedIn](#) ou [GitHub](#).