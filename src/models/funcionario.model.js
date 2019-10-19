const mongoose = require('mongoose');

const FuncionarioSchema = new mongoose.Schema({
  matricula: {
    type: Number,
    required: true,
    unique: true
  },
  nome: {
    type: String,
    required: true
  },
  tipo: {
    type: String,
    enum: ['TI', 'Outros'],
    required: true
  },
  senha: {
    type: String,
    required: true
  },
  setor: {
    type: String,
    enum: [
      'ADMINISTRAÇÃO',
      'ARQUIVO',
      'ESTAGIÁRIO',
      'AUDITÓRIA PRON.',
      'AUTORIZAÇÃO',
      'AUDITÓRIO',
      'BIOIMAGEM',
      'CENTRO CIRÚRG.',
      'COLONOSCOPIA',
      'COMERCIAL',
      'CONTABIL.  RH',
      'ELETROCARD.',
      'COOR. ENFERM.',
      'FARMÁCIA',
      'FATURAMENTO',
      'FINANCEIRO',
      'INTERNAMENTO',
      'LABORATÓRIO',
      'LECO',
      'MANUTENÇÃO',
      'HOTELARIA',
      'MARKET. QUAL.',
      'MÉDICOS',
      'PABX',
      'PORTARIA',
      'POSTO ENFERM.',
      'RECEPÇÃO',
      'MARCAÇÃO',
      'SND',
      'ULTRASSOM',
      'URODINÃMICA',
      'UROFLUXO',
      'TI',
      'SERVIDORES'
    ],
    required: true
  }
});

module.exports = mongoose.model('Funcionario', FuncionarioSchema);