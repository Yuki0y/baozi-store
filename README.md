# Baozi Store API REST

**Disciplina:** Desenvolvimento Web Back-End  
**Instituição:** Centro Universitário Internacional UNINTER  
**Professora:** Me. Luciane Kanashiro  
**Aluno:** Gilberto Ribeiro Souza  
**RU:** 5256762  

---

## 📌 Descrição do Projeto
API REST desenvolvida em Java com Spring Boot para controle básico de clientes, produtos e pedidos da **Baozi Store**, uma pequena loja especializada na venda de pãezinhos chineses (*baozi*).

A aplicação segue a arquitetura **MVC (Model-View-Controller)** do Spring, persistência via **Spring Data JPA** e banco de dados relacional **H2 em memória**.

---

## 🛠️ Tecnologias Utilizadas
* **Java 17**
* **Spring Boot 3.2.5**
  * Spring Web (Endpoints RESTful)
  * Spring Data JPA (Mapeamento Objeto-Relacional)
* **H2 Database** (Banco relacional em memória)
* **Maven** (Gerenciamento de dependências e build)
* **Postman** (Testes de integração da API)

---

## 📁 Estrutura do Projeto
```
baozi-store/
├── pom.xml
└── src/
    └── main/
        ├── java/com/baozistore/
        │   ├── BaoziStoreApplication.java
        │   ├── model/
        │   │   ├── Cliente.java
        │   │   ├── Produto.java
        │   │   └── Pedido.java
        │   ├── repository/
        │   │   ├── ClienteRepository.java
        │   │   ├── ProdutoRepository.java
        │   │   └── PedidoRepository.java
        │   └── controller/
        │       ├── ClienteController.java
        │       ├── ProdutoController.java
        │       └── PedidoController.java
        └── resources/
            └── application.properties
```

---

## 🚀 Como Executar o Projeto

### Pré-requisitos
* Java JDK 17+ instalado
* Maven 3.8+ instalado

### Passos:
1. Clone o repositório ou navegue até a pasta do projeto:
   ```bash
   cd baozi-store
   ```
2. Compile e execute com Maven:
   ```bash
   mvn spring-boot:run
   ```
3. A API estará disponível em: `http://localhost:8080`
4. O Console do banco H2 pode ser acessado em: `http://localhost:8080/h2-console`
   * **JDBC URL:** `jdbc:h2:mem:baozidb`
   * **User Name:** `sa`
   * **Password:** *(deixar em branco)*

---

## 📡 Endpoints da API

### 👤 Clientes (`/clientes`)
| Método | Endpoint | Descrição |
|---|---|---|
| `POST` | `/clientes` | Cadastra um novo cliente |
| `GET` | `/clientes` | Lista todos os clientes |
| `GET` | `/clientes/{id}` | Consulta cliente por ID |
| `PUT` | `/clientes/{id}` | Atualiza dados do cliente |
| `DELETE` | `/clientes/{id}` | Remove cliente por ID |

### 🥟 Produtos (`/produtos`)
| Método | Endpoint | Descrição |
|---|---|---|
| `POST` | `/produtos` | Cadastra um novo produto |
| `GET` | `/produtos` | Lista todos os produtos |
| `GET` | `/produtos/{id}` | Consulta produto por ID |
| `PUT` | `/produtos/{id}` | Atualiza dados do produto |
| `DELETE` | `/produtos/{id}` | Remove produto por ID |

### 🛒 Pedidos (`/pedidos`)
| Método | Endpoint | Descrição |
|---|---|---|
| `POST` | `/pedidos` | Registra um novo pedido |
| `GET` | `/pedidos` | Lista todos os pedidos |
| `GET` | `/pedidos/{id}` | Consulta pedido por ID |
| `PUT` | `/pedidos/{id}` | Atualiza dados do pedido |
| `DELETE` | `/pedidos/{id}` | Remove pedido por ID |
