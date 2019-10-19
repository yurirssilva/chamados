const Produto = require('../models/produto.model');

module.exports = {

  async index(req, res) {
    const { id } = req.params;
    
    const produto = await Produto.findById(id);

    return res.json(produto);
  },

  async show(req, res) {
    const produtos = await Produto.find();

    return res.json(produtos);
  },

  async store(req, res) {
    const { nome, descricao, quantidade } = req.body;
    
    produto = await Produto.create({ nome, descricao, quantidade });
    
    return res.json({
      sucess: true,
      msg: 'Produto criado com sucesso!',
      produto: produto
    });
  }
}