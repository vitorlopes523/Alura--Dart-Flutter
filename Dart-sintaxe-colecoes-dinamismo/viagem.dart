import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = 'VITOR1999';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print('Vou de CARRO para a aventura!');
        break;
      case Transporte.bike:
        print('Vou de BIKE para a aventura!');
        break;
      case Transporte.skate:
        print('Vou de SKATE para a aventura!');
        break;
      default:
        print('Vou para a aventura, não importa como!');
        break;
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisitas(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados (int novaQnt) {
    if (novaQnt < 10) {
      _totalLocaisVisitados = novaQnt;
    } else {
      print('Não é possível');
    }
  }
}
