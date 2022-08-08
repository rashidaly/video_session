class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'zoha',
  imageUrl: 'assets/images/fm2.jpeg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Alex',
  imageUrl: 'assets/images/p1.jpeg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'john',
  imageUrl: 'assets/images/p2.jpeg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'adam',
  imageUrl: 'assets/images/ml1.jpeg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Jax',
  imageUrl: 'assets/images/ml3.jpeg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Elena',
  imageUrl: 'assets/images/w3.jpeg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Rossey',
  imageUrl: 'assets/images/w11.jpeg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Thor',
  imageUrl: 'assets/images/ml2.jpeg',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Captain Marvel',
  imageUrl: 'assets/images/fm1.jpeg',
  isOnline: false,
);