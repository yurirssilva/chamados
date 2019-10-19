

db.createCollection('chamado');

db.chamado.insert([
{"_id": 1, "descricao": 'Computador lento', "status": 'Aberto', "funcionario_id": 20180004, "data_hora_abertura": '2018-06-15 12:22:14', "servico_id": 6 },
{"_id": 2, "descricao": 'Programa travou ', "status": 'Aberto', "funcionario_id": 20180001, "data_hora_abertura": '2018-06-16 19:21:34', "servico_id": 11},
{"_id": 3, "descricao": 'email não está abrindo', "status": 'Aberto', "funcionario_id": 20180006, "data_hora_abertura": '2018-06-23 13:34:12', "servico_id": 7},
{"_id": 4, "descricao": 'Falha no sistema de ponto', "status": 'Aberto', "funcionario_id": 20180003, "data_hora_abertura": '2018-07-01 14:52:36', "servico_id": 16},
{"_id": 5, "descricao": 'Sistema do sus travou', "status": 'Aberto', "funcionario_id": 20180009, "data_hora_abertura": '2018-08-02 14:27:59', "servico_id": 17},
{"_id": 6, "descricao": 'Sem conexão com a internet', "status": 'Resolvido', "funcionario_id": 20180002, "data_hora_abertura": '2018-07-11 11:40:17', "servico_id": 9},
{"_id": 7, "descricao": 'Troca de toner', "status": 'Resolvido', "funcionario_id": 20180005, "data_hora_abertura": '2018-07-17 13:56:18', "servico_id": 24},
{"_id": 8, "descricao": 'Ramal não está funcionando', "status": 'Resolvido', "funcionario_id": 20180005, "data_hora_abertura": '2018-07-20 20:11:04', "servico_id": 12},
{"_id": 9, "descricao": 'Câmeras não funcionam ', "status": 'Resolvido', "funcionario_id": 20180003, "data_hora_abertura": '2018-08-02 14:37:56', "servico_id": 5},
{"_id": 10, "descricao": 'Sistema do sus travou', "status": 'Resolvido', "funcionario_id": 20180007, "data_hora_abertura": '2018-08-02 14:54:24', "servico_id": 17},
{"_id": 11, "descricao": 'Nova impressora ', "status": 'Resolvido', "funcionario_id": 20180008, "data_hora_abertura": '2018-08-02 14:34:00', "servico_id": 22},
{"_id": 12, "descricao": 'Troca de mouse', "status": 'Resolvido', "funcionario_id": 20180001, "data_hora_abertura": '2018-08-04 15:30:45', "servico_id": 6},
{"_id": 13, "descricao": 'Troca de toner', "status": 'Resolvido', "funcionario_id": 20180001, "data_hora_abertura": '2018-08-06 12:30:59', "servico_id": 24},
{"_id": 14, "descricao": 'Troca de toner', "status": 'Resolvido', "funcionario_id": 20180009, "data_hora_abertura": '2018-08-06 20:43:55', "servico_id": 24},
{"_id": 15, "descricao": 'Troca de teclado', "status": 'Resolvido', "funcionario_id": 20180004, "data_hora_abertura": '2018-08-10 15:33:12', "servico_id": 6},
{"_id": 16, "descricao": 'Troca de monitor', "status": 'Resolvido', "funcionario_id": 20180005, "data_hora_abertura": '2018-08-11 16:10:29', "servico_id": 6},
{"_id": 17, "descricao": 'Email voltou a funcionar', "status": 'Cancelado', "funcionario_id": 20180010, "data_hora_abertura": '2018-07-09 17:02:23', "servico_id": 7},
{"_id": 18, "descricao": 'Sistema voltou a funcionar', "status": 'Cancelado', "funcionario_id": 20180011, "data_hora_abertura": '2018-08-02 14:46:19', "servico_id": 17}
]);


db.createCollection('chamado_resolvido');

db.chamado_resolvido.insert([
{ "_id": 1, "funcionario_id": 20180011, "chamado_id": 6, "data_hora_resolucao": '2018-07-11 11:50:17', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-07-11 11:41:23' },
{ "_id": 2, "funcionario_id": 20180011, "chamado_id": 7, "data_hora_resolucao": '2018-07-17 15:24:44', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-07-17 14:12:05' },
{ "_id": 3, "funcionario_id": 20180011, "chamado_id": 8, "data_hora_resolucao": '2018-07-20 20:21:43', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-07-20 13:58:11' },
{ "_id": 4, "funcionario_id": 20180011, "chamado_id": 9, "data_hora_resolucao": '2018-08-02 14:42:45', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-02 14:33:54' },
{ "_id": 5, "funcionario_id": 20180011, "chamado_id": 10, "data_hora_resolucao": '2018-08-02 15:13:54', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-02 14:40:40' },
{ "_id": 6, "funcionario_id": 20180011, "chamado_id": 11, "data_hora_resolucao": '2018-08-02 14:50:54', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-02 14:37:44' },
{ "_id": 7, "funcionario_id": 20180010, "chamado_id": 12, "data_hora_resolucao": '2018-08-04 15:45:47', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-04 15:33:05' },
{ "_id": 8, "funcionario_id": 20180011, "chamado_id": 13, "data_hora_resolucao": '2018-08-06 12:43:39', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-06 12:36:54' },
{ "_id": 9, "funcionario_id": 20180010, "chamado_id": 14, "data_hora_resolucao": '2018-08-06 20:49:15', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-06 20:45:43' },
{ "_id": 10, "funcionario_id": 20180010, "chamado_id": 15, "data_hora_resolucao": '2018-08-10 15:45:16', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-10 15:37:12' },
{ "_id": 11, "funcionario_id": 20180010, "chamado_id": 16, "data_hora_resolucao": '2018-08-11 16:24:45', "descricao_solucao": 'problema solucionado', "data_hora_vinculo": '2018-08-11 16:19:34' }
]);


db.createCollection('funcionario');

db.funcionario.insert([
{ "_id": 20180001, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'João Santos Araujo', "tipo": 'Outros', "setor_id": 11},
{ "_id": 20180002, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Maria Almeida Rosa', "tipo": 'Outros', "setor_id": 1},
{ "_id": 20180003, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Thiago Aguiar Lopes', "tipo": 'Outros', "setor_id": 25},
{ "_id": 20180004, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Lucia Pereira Amorim', "tipo": 'Outros', "setor_id": 16},
{ "_id": 20180005, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Kelly Oliveira de Deus', "tipo": 'Outros', "setor_id": 27},
{ "_id": 20180006, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Marcelo Santos Ferraz', "tipo": 'Outros', "setor_id": 15},
{ "_id": 20180007, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Lucas Amaral Lima', "tipo": 'Outros', "setor_id": 28},
{ "_id": 20180008, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Deli Oliveira Neto', "tipo": 'Outros', "setor_id": 18},
{ "_id": 20180009, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Jackson Araujo de Carvalho', "tipo": 'Outros', "setor_id": 13},
{ "_id": 20180010, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Daniel Moitinho Pereira', "tipo": 'TI', "setor_id": 33},
{ "_id": 20180011, "senha": 'e7d80ffeefa212b7c5c55700e4f7193e', "nome": 'Luciano Oliveira Santos ', "tipo": 'TI', "setor_id": 33}
]);


db.createCollection('produto');

db.produto.insert([
{ "_id": 1, "nome": 'HD', "descricao": '1 TB', "quantidade": 10 },
{ "_id": 2, "nome": 'HD', "descricao": '500 GB', "quantidade": 10 },
{ "_id": 3, "nome": 'PC', "descricao": 'i7, 1 TB, Dell, W7', "quantidade": 3 },
{ "_id": 4, "nome": 'Impressora', "descricao": 'Hp', "quantidade": 15 },
{ "_id": 5, "nome": 'Toner', "descricao": 'Hp', "quantidade": 20 },
{ "_id": 6, "nome": 'Mouse', "descricao": 'Hp', "quantidade": 30 },
{ "_id": 7, "nome": 'Teclado', "descricao": 'Hp', "quantidade": 30 },
{ "_id": 8, "nome": 'Estabilizador', "descricao": ' 220v', "quantidade": 10 },
{ "_id": 9, "nome": 'Monitor', "descricao": 'Dell 20 polegadas', "quantidade": 10 },
{ "_id": 10, "nome": 'Câmeras', "descricao": 'IntelBras', "quantidade": 10 },
{ "_id": 11, "nome": 'Cabo de Rede', "descricao": '100 metros', "quantidade": 2 },
{ "_id": 12, "nome": 'Cabo telefônico', "descricao": '100 metros', "quantidade": 2 },
{ "_id": 13, "nome": 'Conector', "descricao": 'Para cabo de rede', "quantidade": 200 }
]);


db.createCollection('produto_utilizado');

db.produto_utilizado.insert([
{ "_id": 13,"funcionario_id":  20180010,"chamado_resolvido_id":  1},
{ "_id": 5, "funcionario_id": 20180011, "chamado_resolvido_id": 2},
{ "_id": 12,"funcionario_id":  20180011,"chamado_resolvido_id":  3},
{ "_id": 10,"funcionario_id":  20180011,"chamado_resolvido_id":  4},
{ "_id": 4, "funcionario_id": 20180011, "chamado_resolvido_id": 5},
{ "_id": 6, "funcionario_id": 20180010, "chamado_resolvido_id": 6},
{ "_id": 5, "funcionario_id": 20180011, "chamado_resolvido_id": 7},
{ "_id": 5, "funcionario_id": 20180010, "chamado_resolvido_id": 8},
{ "_id": 7, "funcionario_id": 20180010, "chamado_resolvido_id": 9},
{ "_id": 9, "funcionario_id": 20180010, "chamado_resolvido_id": 10}
]);


db.createCollection('setor');

db.setor.insert([
    {"_id":1,"nome": 'ADMINISTRAÇÃO'},
    {"_id":2,"nome": 'ARQUIVO'},
    {"_id":3,"nome": 'ESTAGIÁRIO'},
    {"_id":4,"nome": 'AUDITÓRIA PRON.'},
    {"_id":5,"nome": 'AUTORIZAÇÃO'},
    {"_id":6,"nome": 'AUDITÓRIO'},
    {"_id":7,"nome": 'BIOIMAGEM'},
    {"_id":8,"nome": 'CENTRO CIRÚRG.'},
    {"_id":9,"nome": 'COLONOSCOPIA'},
    {"_id":10,"nome": 'COMERCIAL'},
    {"_id":11,"nome": 'CONTABIL.  RH'},
    {"_id":12,"nome": 'ELETROCARD.'},
    {"_id":13,"nome": 'COOR. ENFERM.'},
    {"_id":14,"nome": 'FARMÁCIA'},
    {"_id":15,"nome": 'FATURAMENTO'},
    {"_id":16,"nome": 'FINANCEIRO'},
    {"_id":17,"nome": 'INTERNAMENTO'},
    {"_id":18,"nome": 'LABORATÓRIO'},
    {"_id":19,"nome": 'LECO'},
    {"_id":20,"nome": 'MANUTENÇÃO'},
    {"_id":21,"nome": 'HOTELARIA'},
    {"_id":22,"nome": 'MARKET. QUAL.'},
    {"_id":23,"nome": 'MÉDICOS'},
    {"_id":24,"nome": 'PABX'},
    {"_id":25,"nome": 'PORTARIA'},
    {"_id":26,"nome": 'POSTO ENFERM.'},
    {"_id":27,"nome": 'RECEPÇÃO'},
    {"_id":28,"nome": 'MARCAÇÃO'},
    {"_id":29,"nome": 'SND'},
    {"_id":30,"nome": 'ULTRASSOM'},
    {"_id":31,"nome": 'URODINÃMICA'},
    {"_id":32,"nome": 'UROFLUXO'},
    {"_id":33,"nome": 'TI'},
    {"_id":34,"nome": 'SERVIDORES'}
]);


db.createCollection('tipo_de_servico');

db.tipo_de_servico.insert([
{ "_id": 1, "nome": 'ALTERAR CPS', "prioridade": 'Baixa' },
{ "_id": 2, "nome": 'AVISO DE LENTIDÃO', "prioridade": 'Alta' },
{ "_id": 3, "nome": 'DESTRAVAR SAÍDA', "prioridade": 'Baixa' },
{ "_id": 4, "nome": 'GERENCIAR USUÁRIO', "prioridade": 'Media' },
{ "_id": 5, "nome": 'MANUT. DE CÃMERAS', "prioridade": 'Media' },
{ "_id": 6, "nome": 'MANUT. DE COMPUTADOR', "prioridade": 'Alta' },
{ "_id": 7, "nome": 'MANUT. DE EMAIL', "prioridade": 'Media' },
{ "_id": 8, "nome": 'MANUT. DE IMP/SCAN.', "prioridade": 'Alta' },
{ "_id": 9, "nome": 'MANUT. DE INTERNET', "prioridade": 'Alta' },
{ "_id": 10, "nome": 'MANUT. OUTROS EQUIP.', "prioridade": 'Baixa' },
{ "_id": 11, "nome": 'MANUT. OUTROS PROG.', "prioridade": 'Baixa' },
{ "_id": 12, "nome": 'MANUT.DE TEL/RAMAL', "prioridade": 'Baixa' },
{ "_id": 13, "nome": 'MANUT. CALL CENTER', "prioridade": 'Alta' },
{ "_id": 14, "nome": 'MANUT. DO ECG/MAPA', "prioridade": 'Alta' },
{ "_id": 15, "nome": 'MANUT. SISTEMA CPC', "prioridade": 'Alta' },
{ "_id": 16, "nome": 'MANUT. SIS. DE PONTO', "prioridade": 'Alta' },
{ "_id": 17, "nome": 'MANUT. SIS. DO SUS', "prioridade": 'Baixa' },
{ "_id": 18, "nome": 'MANUT. SIS. DOMÍNIO', "prioridade": 'Alta' },
{ "_id": 19, "nome": 'MANUT. UROFLUXO MICA', "prioridade": 'Alta' },
{ "_id": 20, "nome": 'RETIRAR ALTA', "prioridade": 'Baixa' },
{ "_id": 21, "nome": 'SOLICI. DESBLOQUEIOS', "prioridade": 'Baixa' },
{ "_id": 22, "nome": 'SOLICI.EQUIPAMENTOS', "prioridade": 'Baixa' },
{ "_id": 23, "nome": 'SUPORTE AO USUÁRIO', "prioridade": 'Baixa' },
{ "_id": 24, "nome": 'TROCA DE TONER', "prioridade": 'Alta' },
{ "_id": 25, "nome": 'UNIFICAR CADASTRO', "prioridade": 'Baixa' }
]);