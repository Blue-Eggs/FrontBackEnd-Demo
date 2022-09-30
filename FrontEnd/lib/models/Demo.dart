class Demo_Lists{
  final String title;
  final String method;
  final String body;
  final String descriptions;

  Demo_Lists({required this.title, required this.method, required this.body, required this.descriptions});

  factory Demo_Lists.fromJson(Map<String,dynamic> json){
    return Demo_Lists(
      title: json['title'],
      method: json['method'],
      body: json['body'],
      descriptions: json['decription'],
    );
  }
}