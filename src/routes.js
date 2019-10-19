const express = require('express');
const FuncionarioController = require('./controllers/funcionario.controller');
const ProdutoController = require('./controllers/produto.controller');
const ChamadoController = require('./controllers/chamado.controller');


const routes = express.Router();

routes.get('/funcionarios/:matricula', FuncionarioController.index);
routes.get('/funcionarios', FuncionarioController.show);
routes.post('/funcionarios', FuncionarioController.store);

routes.get('/produtos/:id', ProdutoController.index);
routes.get('/produtos', ProdutoController.show);
routes.post('/produtos', ProdutoController.store);

routes.get('/chamados/:id', ChamadoController.index);
routes.get('/chamados', ChamadoController.show);
routes.post('/chamados', ChamadoController.store);

module.exports = routes;