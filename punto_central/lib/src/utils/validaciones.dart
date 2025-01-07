String? validarNombre(String? value) {
  if (value == null || value.length < 2) {
    return "Ingrese un nombre válido";
  }
  return null;
}

String? validarInfo(String? value) {
  if (value == null || value.length < 3) {
    return "Ingrese información del establecimiento";
  }
  return null;
}

String? validarContrasena(String? value) {
  if (value == null || value.length < 8) {
    return "Debe tener al menos 8 caracteres";
  }

  final RegExp regexPassword = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  if (!regexPassword.hasMatch(value)) {
    return 'Al menos 1 mayúscula, 1 minúscula y 1 signo.';
  }

  return null;
}

String? validarCorreo(String? value) {
  if (value == null || value.isEmpty) {
    return 'Ingrese un correo electrónico';
  }

  final RegExp regexEmail =
      RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');

  if (!regexEmail.hasMatch(value)) {
    return 'Ingrese un correo electrónico válido';
  }

  return null;
}

String? validarEdad(String? value) {
  if (value == null || value.isEmpty) {
    return 'Ingrese una edad';
  }

  final RegExp regexNumber = RegExp(r'^[0-9]+$');

  if (!regexNumber.hasMatch(value)) {
    return 'Ingrese un número válido';
  }

  int edadValue = int.parse(value);

  if (edadValue <= 12) {
    return 'Ingrese una edad mayor de 12 años';
  }

  return null;
}
