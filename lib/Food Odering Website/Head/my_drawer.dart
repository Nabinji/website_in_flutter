import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Sita Kumari"),
            accountEmail: Text("sitaKumari12@gmail.con"),
            currentAccountPicture: ClipOval(
              child: Image(
                image: NetworkImage(
                  "https://media.istockphoto.com/id/927570754/photo/beautiful-woman.jpg?s=1024x1024&w=is&k=20&c=vqLr2Gnv3M44AlknZESOF6dUkZbNNavcXYEcodRdZ2c=",
                ),
                fit: BoxFit.cover,
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgJLOn3IcO_61EyNeYniN2N2GidJbMHRXVhzjSgYIYvg&s"),
              fit: BoxFit.cover,
            )),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Home"),
            leading: const Icon(Icons.home),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Favorite"),
            leading: const Icon(Icons.favorite),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Them"),
            leading: const Icon(Icons.dark_mode),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Message"),
            leading: const Icon(Icons.message),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Review"),
            leading: const Icon(Icons.reviews),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Share"),
            leading: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}
