# **Docker Inicial do Projecto Misige (Backend do Sistema de Gestao de Estudantes da cadeira Engenharia de Software II)**

### **Nota:**
A criação da imagens pelo processo atual é lento devido a necessidade de baixar pacotes enormes como `npm`



## **Rodar imagem:**

### **1. Gerar container**
#### ***Windows:*** pelo script [reload_image.bat](./reload_image.bat)
- **cmd**: `reload_missige.bat`
#### ***Linux:*** [reload_image.sh](./reload_image.sh)
- **bash**: `sh ./reload_missige.sh`

### **2. Abrir o browser e acessar:**
* link: ```localhost:2024/misige```



## **A fazer**:
* [x] Instalar `MariaDB` e `Apache` 
* [x] Instalar `php` e `composer`
* [x] Instalar `node.js` and `npm`
* [x] Escutar na porta `2024` (Via remapeamento de portas) 
* [ ] Remover o hack usado para reeniciar servicos via `~/.bashrc`
* [ ] Integrar com [missigi-api](https://github.com/Clifton-f/misige-api)
* [ ] Descobrir como partilhar a imagem 
