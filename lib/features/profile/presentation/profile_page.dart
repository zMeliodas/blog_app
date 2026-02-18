import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _profileFormKey = GlobalKey<FormState>();
  String userImageUrl = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 2, 165),

        title: Text(
          "Profile",
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
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 36, bottom: 12),
              child: CircleAvatar(
                radius: 86,
                backgroundColor: Colors.grey.shade300,
                backgroundImage: userImageUrl != ""
                    ? NetworkImage(userImageUrl)
                    : null,
                child: userImageUrl == ""
                    ? const Icon(Icons.person, color: Colors.black54, size: 100)
                    : null,
              ),
            ),

            GestureDetector(
              onTap: () {
                
              },
              child: RichText(
                text: TextSpan(
                  text: 'Change Photo',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(left: 36, right: 36, top: 24),
              child: Form(
                key: _profileFormKey,
                child: Column(
                  spacing: 16,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Display Name"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      maxLines: 4,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        label: Text("Bio"),
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),

                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          Color.fromARGB(255, 86, 2, 165),
                        ),
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(5),
                          ),
                        ),
                        minimumSize: WidgetStatePropertyAll(
                          Size(double.infinity, 48),
                        ),
                      ),

                      onPressed: () {
                        Navigator.pushNamed(context, '/blogs');
                        // Validate returns true if the form is valid, or false otherwise.
                        // if (_loginFormKey.currentState!.validate()) {
                        //   // If the form is valid, display a snackbar. In the real world,
                        //   // you'd often call a server or save the information in a database.
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Processing Data')),
                        //   );
                        // }
                      },
                      child: Text(
                        "Save Changes",
                        style: TextStyle(
                          color: Color.fromARGB(255, 226, 223, 230),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    // Add TextFormFields and ElevatedButton here.
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
