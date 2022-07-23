import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Image(
          width: double.infinity,
          fit: BoxFit.cover,
          image: AssetImage('assets/paisaje.jpg'),
        ),
        SizedBox(
          height: 30,
        ),
        Title(),
        SizedBox(
          height: 30,
        ),
        ButtonSection(),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Un texto es una composición de signos codificados en un sistema de escritura que forma una unidad de sentido.También es una composición de caracteres imprimibles (con grafema) generados por un algoritmo de cifrado que, aunque no tienen sentido para cualquier persona, sí puede ser descifrado por su destinatario original. En otras palabras, un texto es un entramado de signos con una intención comunicativa que adquiere sentido en determinado contexto.',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                'Kandesteg, Switzerland',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.star,
            color: Colors.red,
            size: 30,
          ),
          const Text(
            '41',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CustomBotton(
          icon: Icons.call,
          title: 'CALL',
        ),
        CustomBotton(
          icon: Icons.map_sharp,
          title: 'ROUTE',
        ),
        CustomBotton(
          icon: Icons.share,
          title: 'SHARE',
        ),
      ],
    );
  }
}

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomBotton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.lightBlue,
          size: 50,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.lightBlue, fontSize: 25),
        )
      ],
    );
  }
}
