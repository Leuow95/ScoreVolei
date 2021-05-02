class Time {
  String nomeInterno;
  int pontoInterno;

  void incrementaPonto() {
    this.pontoInterno++;
  }

  void decrementaPonto() {
    this.pontoInterno--;
  }

  void zeraPonto() {
    this.pontoInterno = 0;
  }

  int get ponto {
    return this.pontoInterno;
  }

  set ponto(int novoPonto) {
    this.pontoInterno = novoPonto;
  }

  Time(String nome, int ponto) {
    this.nomeInterno = nome;
    this.pontoInterno = ponto;
  }
}
