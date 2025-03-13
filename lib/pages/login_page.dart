import 'package:flutter/material.dart';
import '../widgets/social_login_button.dart'; // Importa o widget reutilizável

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fundo com imagem desfocada
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/transferir.png'), // Imagem de fundo
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), 
                  BlendMode.darken,
                ),
              ),
            ),
          ),

          // Conteúdo principal
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Botão de voltar
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  onPressed: () {},
                ),
                
                SizedBox(height: 20),

                // Texto de boas-vindas
            Center(
                child: Text(
                  "Welcome back!\nGlad to see you, Again!",
                  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )
                ),
                ),

                SizedBox(height: 30),

                // Campo de e-mail
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Campo de senha
                TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(Icons.visibility, color: Colors.white70),
                  ),
                ),

                SizedBox(height: 20),

                // Botão de login
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Texto "Or Login with"
                Center(
                  child: Text(
                    "Or Login with",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),

                SizedBox(height: 10),

                // Botões de login social
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialLoginButton(icon: Icons.facebook, color: Colors.blue),
                    SizedBox(width: 15),
                    SocialLoginButton(icon: Icons.g_translate, color: Colors.red),
                    SizedBox(width: 15),
                    SocialLoginButton(icon: Icons.apple, color: Colors.white),
                  ],
                ),

                SizedBox(height: 20),

                // Link para registro
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register Now",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
