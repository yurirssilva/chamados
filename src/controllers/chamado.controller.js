const Chamado = require('../models/chamado.model');
const Funcionario = require('../models/funcionario.model');

module.exports = {
  
  async index(req, res) {
    const { id } = req.params;

    const chamado = await Chamado.findById(id);

    return res.json(chamado);
  },

  async show(req, res) {
    const chamados = await Chamado.find();

    return res.json(chamados);
  },

  async store(req, res) {
    const { descricao, funcionario_matricula, tipo_servico } = req.body;
    
    const status = 'Aberto';
    const data_hora_abertura = Date();

    let funcionario = await Funcionario.findOne({ matricula: funcionario_matricula });

    if (funcionario) {
      chamado = await Chamado.create({ 
        descricao,
        funcionario_matricula,
        status,
        data_hora_abertura,
        tipo_servico
      });
      return res.json({
        sucess: true,
        msg: 'Chamado criado com sucesso!',
        chamado: chamado
      });
    } else {
      return res.status(400).json({
        sucess: false,
        msg: 'Falha na criação do Chamado, matricula já não encontrada!'
      });
    }
  }
}