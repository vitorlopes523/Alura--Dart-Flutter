void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String corFruta = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  //print(isMadura);
  //print(funcEstaMadura(50));
  //mostrarMadura(nome: nome, dias: diasDesdeColheita, cor: corFruta);
  int diasFaltam = funcQuantosDiasMadura(diasDesdeColheita);
  print(diasFaltam);
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

mostrarMadura({ required String nome, required int dias, required String cor}) {
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está maduara.');
  }

  if (cor != null) {
    print('A $nome é $cor');
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}