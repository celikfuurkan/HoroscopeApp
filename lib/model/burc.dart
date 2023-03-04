class Burc {
  final String _burcAdi;
  final String _burcTarih;
  final String _burdDetay;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this._burcAdi;

  get burcTarih => this._burcTarih;

  get burdDetay => this._burdDetay;

  get burcKucukResim => this._burcKucukResim;

  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarih, this._burdDetay, this._burcKucukResim,
      this._burcBuyukResim);

  /*@override
  String toString() {
    return '$_burcAdi - $_burcBuyukResim';
  }*/
}
