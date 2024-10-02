main() {
  Map<String, String> carrosModelo = {
    'Hyunday': 'Tucson',
    'Honda': 'CRV',
    'Toyota': 'SW4',
  };

  for (var chave in carrosModelo.keys) {
    print('chave = $chave');
  }

  for (var valor in carrosModelo.values) {
    print('valor = $valor');
  }

  for (var registro in carrosModelo.entries) {
    print('${registro.key} : ${registro.value}');
  }
}
