const express = require('express');
const { randomUUID } = require('crypto');

const app = express();

// Informo que usarei o formato JSON
app.use(express.json());

const port = 3030;

/* 
  CRUD

  ! Create - POST
  ? Read - GET
  + Update - PUT
  * Delete - DELETE

*/

/* Simular banco de dados */
const clientes = [];

/* Criar um novo cliente */
app.post('/clientes', (request, response) => {
  // Maya Cliente
  const { nome, email, endereco, compra } = request.body;

  // Maya Servidor
  const cliente = {
    id: randomUUID(),
    nome,
    email,
    endereco,
    compra,
  };

  clientes.push(cliente);

  return response.status(201).json(cliente);
});

/* Listar todos os clientes do banco */
app.get('/clientes', (request, response) => {
  return response.json(clientes);
});

/* Atualizar dados do cliente */
app.put('/clientes/:id', (request, response) => {
  // Maya Cliente
  const { id } = request.params;
  const { nome, email, endereco, compra } = request.body;

  const findClient = clientes.find(cliente => cliente.id === id);

  if (!findClient) {
    return response.json({ mensagem: 'Cliente não encontrado' });
  }

  findClient.nome = nome;
  findClient.email = email;
  findClient.endereco = endereco;
  findClient.compra = compra;

  return response.json(findClient);
});

/* Deletar um cliente */
app.delete('/clientes/:id', (request, response) => {
  const { id } = request.params;

  const indexClient = clientes.findIndex(cliente => cliente.id === id);

  if (indexClient === -1) {
    return response.json({ mensagem: 'Cliente não encontrado' });
  }

  clientes.splice(indexClient, 1);

  return response.status(204).send();
});

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
