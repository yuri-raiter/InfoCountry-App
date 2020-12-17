class Country {
  final String code;
  final String name;
  final String capital;
  final String continent;
  final String population;
  final String currency;
  final String language;

  Country(
      {this.code,
      this.name,
      this.capital,
      this.continent,
      this.population,
      this.currency,
      this.language});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      code: json['alpha2Code'],
      name: json['name'],
      capital: json['capital'],
      continent: json['region'],
      population: json['population'].toString(),
      currency: json['currencies'][0]['name'],
      language: json['languages'][0]['name'],
    );
  }
}
