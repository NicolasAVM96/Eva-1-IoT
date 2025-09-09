import 'package:flutter/material.dart';

// Definimos la clase GreetingScreen como un widget de tipo StatelessWidget
// porque su contenido no cambia dinámicamente: solo muestra un mensaje
// con el correo recibido desde el login.
class GreetingScreen extends StatelessWidget {
  // Variable para almacenar el correo ingresado en el login.
  // Se recibe como argumento obligatorio (required).
  final String userEmail; //El correo se muestra en la pantalla de bienvenida.

  // Constructor de la clase que requiere el parámetro "userEmail".
  const GreetingScreen({super.key, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    // Scaffold es la estructura básica de la pantalla en Flutter.
    return Scaffold(
      // Barra superior de la pantalla (AppBar).
      appBar: AppBar(
        // Muestra un saludo personalizado con el correo del usuario.
        title: Text("Bienvenido $userEmail"), //Saluda usando el correo ingresado.
        backgroundColor: Colors.red,          
      ),

      // Cuerpo principal de la pantalla.
      body: Center(
        // Centra verticalmente el contenido en la pantalla.
        child: Column(
          // Ajusta la altura mínima necesaria para mostrar los elementos.
          mainAxisSize: MainAxisSize.min,

          // Aquí definimos los widgets que se mostrarán dentro de la columna.
          children: [
            // Ícono visual para indicar éxito en el inicio de sesión.
            const Icon(
              Icons.check_circle_outline,
              size: 72,
              color: Colors.red,
            ),

            // Espaciado vertical entre widgets.
            const SizedBox(height: 12),

            // Mensaje principal indicando que el inicio de sesión fue exitoso.
            Text(
              "¡Inicio de sesión exitoso!",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center, // Centra el texto horizontalmente.
            ),

            const SizedBox(height: 8),

            // Mensaje personalizado que muestra el correo del usuario.
            Text(
              "Bienvenido $userEmail",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 24),

            // Botón para cerrar sesión.
            FilledButton(
              // Cuando el botón se presiona, retorna a la pantalla anterior (login).
              onPressed: () => Navigator.of(context).pop(), // Navegación.

              // Estilo personalizado para el botón.
              style: FilledButton.styleFrom(
                backgroundColor: Colors.red,     
                foregroundColor: Colors.white,   
              ),

              // Texto mostrado dentro del botón.
              child: const Text("Cerrar sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
