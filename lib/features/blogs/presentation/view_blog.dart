import 'package:flutter/material.dart';

class ViewBlogPage extends StatefulWidget {
  const ViewBlogPage({super.key});

  @override
  State<ViewBlogPage> createState() => _ViewBlogPageState();
}

class _ViewBlogPageState extends State<ViewBlogPage> {
  String userImageUrl = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 2, 165),
        title: Text(
          "Blog Title",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), // change color here
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity, // 👈 full width
                height: 220,
                child: Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                  fit: BoxFit.fill,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Getting Started with Flutter Development',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: const Color.fromARGB(
                            255,
                            201,
                            197,
                            197,
                          ),
                          backgroundImage: userImageUrl != ""
                              ? NetworkImage(userImageUrl)
                              : null,
                          child: userImageUrl == ""
                              ? const Icon(Icons.person, color: Colors.black54)
                              : null,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cedrick Lemuel Cabansag',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),

                            Text(
                              '02-04-2024',
                              style: TextStyle(
                                color: Color.fromARGB(255, 83, 82, 82),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Divider(
                        color: const Color.fromARGB(255, 209, 206, 206),
                        thickness: 1,
                      ),
                    ),

                    Text(
                      "Lorem ipsum dolor sit amet, conLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiatLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.sectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Divider(
                        color: const Color.fromARGB(255, 209, 206, 206),
                        thickness: 1,
                      ),
                    ),

                    Text("Comments (3)"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          color: const Color.fromARGB(255, 236, 234, 234),
          child: Row(
            children: [
              // Avatar
              CircleAvatar(
                radius: 18,
                backgroundColor: const Color.fromARGB(255, 201, 197, 197),
                child: Icon(Icons.person, color: Colors.black54),
              ),
              const SizedBox(width: 8),

              // Input field
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Write a comment...",
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),

              // Image / action icon
              IconButton(
                icon: Icon(Icons.image_outlined),
                onPressed: () {
                  // pick image
                },
              ),

              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // pick image
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
