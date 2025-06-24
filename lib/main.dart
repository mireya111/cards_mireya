import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class TouristSite {
  final String name;
  final String location;
  final String description;
  final String imageUrl;
  bool isFavorite;
  bool isExpanded;

  TouristSite({
    required this.name,
    required this.location,
    required this.description,
    required this.imageUrl,
    this.isFavorite = false,
    this.isExpanded = false,
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<TouristSite> sites = [
    TouristSite(
      name: 'Mitad del Mundo',
      location:
          'Parroquia San Antonio del cantón de Quito , a 26 km (16 mi) al norte del centro de Quito .',
      description:
          'La Mitad del Mundo es un complejo turístico y cultural ubicado en San Antonio de Pichincha, a pocos kilómetros al norte de Quito, Ecuador. Este lugar es famoso por el monumento que marca la línea ecuatorial, la división imaginaria entre los hemisferios norte y sur del planeta. El complejo incluye atracciones como museos, planetarios, réplicas de ciudades coloniales y áreas interactivas que exploran la geografía y la cultura ecuatoriana. ',
      imageUrl: 'assets/mitad.jpeg',
    ),
    TouristSite(
      name: 'Basílica del Voto Nacional',
      location: 'Centro Histórico',
      description: 'Impresionante iglesia neogótica.',
      imageUrl:
          'assets/basilica.jpg',
    ),
    TouristSite(
      name: 'Islas Galápagos',
      location:
          'Situadas en la línea ecuatorial, a 972 km de la costa continental de Ecuador.',
      description:
          'Las Islas Galápagos, también conocidas como Archipiélago de Colón, son un archipiélago volcánico en el océano Pacífico, a unos 972 km de la costa de Ecuador. Son famosas por su biodiversidad única y la gran cantidad de especies endémicas que albergan, lo que las convierte en un laboratorio natural para el estudio de la evolución.',
      imageUrl:
          'assets/galapagos.jpeg',
    ),
    TouristSite(
      name: 'Baños de Agua Santa',
      location:
          'Se encuentra a una altitud de 1.820 metros sobre el nivel del mar, al pie del volcán Tungurahua. ',
      description:
          'Baños de Agua Santa es una pequeña ciudad ecuatoriana, conocida por sus aguas termales, su cercanía al volcán Tungurahua y sus actividades de aventura. Se encuentra en la provincia de Tungurahua y es considerada la puerta de entrada a la Amazonía ecuatoriana. ',
      imageUrl:
          'assets/banos.webp',
    ),
    TouristSite(
      name: 'Mindo (Bosque Nublado)',
      location:
          'Se encuentra a 22 millas náuticas de Puerto López, un pueblo costero desde donde se puede tomar un tour para visitar la isla. ',
      description:
          'Mindo es un bosque nublado ubicado a aproximadamente dos horas de Quito, Ecuador, conocido por su rica biodiversidad y actividades al aire libre. Es un destino popular para observar aves, practicar senderismo, rafting y disfrutar de la naturaleza. ',
      imageUrl:
          'assets/mindo.jpg',
    ),
    TouristSite(
      name: ' Isla de la Plata (Manabí)',
      location: 'Centro Histórico',
      description:
          'Es una pequeña Isla llena de aves marinas, tortugas, mantarayas gigantes y ballenas frente a las Costas de Puerto López.',
      imageUrl:
          'assets/plata.jpg',
    ),

    TouristSite(
      name: 'Laguna Quilotoa',
      location: 'Provincia de Cotopaxi.',
      description:
          'Cráter volcánico con una impresionante laguna verde turquesa. Ideal para caminatas y camping.',
      imageUrl:
          'assets/quilotoa.jpg',
    ),

    TouristSite(
      name: 'Cuenca (Centro Histórico)',
      location: 'Provincia de Azuay.',
      description:
          'Ciudad colonial declarada Patrimonio de la Humanidad por la UNESCO. Con calles empedradas, iglesias antiguas y arquitectura española.',
      imageUrl: 'assets/cuenca.jpg',
    ),

    TouristSite(
      name: 'Parque Nacional Cajas',
      location: 'Cerca de Cuenca, provincia de Azuay.',
      description:
          'Reserva ecológica con más de 200 lagunas. Ideal para senderismo y avistamiento de flora andina.',
      imageUrl:
          'assets/cajas.jpg',
    ),

    TouristSite(
      name: 'Montañita',
      location: 'Provincia de Santa Elena, costa del Pacífico.',
      description:
          'Pueblo playero conocido por su vida nocturna, surf y ambiente bohemio.',
      imageUrl:
          'assets/montanita.jpg',
    ),

    TouristSite(
      name: 'Ingapirca',
      location: 'Provincia de Cañar.',
      description:
          'Complejo arqueológico inca, el más importante de Ecuador. Incluye el Templo del Sol y ruinas de piedra.',
      imageUrl:
          'assets/ingapirca.jpg',
    ),

    TouristSite(
      name: 'Nariz del Diablo',
      location: 'Alausí, provincia de Chimborazo.',
      description:
          'Tramo de ferrocarril en zigzag considerado una maravilla de la ingeniería. Viaje panorámico por los Andes.',
      imageUrl:
          'assets/nariz.jpg',
    ),

    TouristSite(
      name: 'Puerto López',
      location: 'Provincia de Manabí.',
      description:
          'Pueblo pesquero y punto de partida para visitar Isla de la Plata y avistamiento de ballenas jorobadas.',
      imageUrl:
          'assets/lopez.jpg',
    ),

    TouristSite(
      name: 'Playas de Villamil',
      location: 'Provincia del Guayas.',
      description:
          'Destinadas al turismo familiar, con aguas tranquilas y buena infraestructura turística.',
      imageUrl:
          'assets/villamil.jpg',
    ),

    TouristSite(
      name: 'Parque Nacional Yasuní',
      location: 'Provincia de Orellana, Amazonía ecuatoriana.',
      description:
          'Uno de los ecosistemas más biodiversos del planeta. Ideal para ecoturismo y conocer comunidades indígenas.',
      imageUrl:
          'assets/yasuni.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios turísticos de Quito',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sitios turísticos de Quito')),
        body: ListView.builder(
          itemCount: sites.length,
          itemBuilder: (context, index) {
            final site = sites[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    site.imageUrl,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(
                      site.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(site.location),
                    trailing: IconButton(
                      icon: Icon(
                        site.isFavorite ? Icons.star : Icons.star_border,
                        color: site.isFavorite ? Colors.amber : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          site.isFavorite = !site.isFavorite;
                        });
                      },
                    ),
                    onTap: () {
                      setState(() {
                        site.isExpanded = !site.isExpanded;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.call),
                          onPressed: () {
                            // Aquí puedes agregar funcionalidad de llamada
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Llamando a ${site.name}...'),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.share),
                          onPressed: () {
                            // Aquí puedes agregar funcionalidad de compartir
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Compartiendo ${site.name}...'),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  if (site.isExpanded)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(site.description),
                    ),
                  const SizedBox(height: 8),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
