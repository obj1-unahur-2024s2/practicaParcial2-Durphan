class Personaje {
  const property fuerza
  var property rol

  method potencialOfensivo() = fuerza*10 + rol.bonif()

  method cambiarRol(nuevoRol) {
    rol = nuevoRol
  }

  method esInteligente()

}

class Humano inherits Personaje {
  const inteligencia

 override method esInteligente() = inteligencia > 50

}

class Orco inherits Personaje {
 override method esInteligente() = false

}



class Mascota {
  const property fuerza
  const edad
  const property tieneGarras = true

  method potencial() = if(tieneGarras) fuerza*2 else fuerza

  method esLongeva() = edad > 10
}

class Aldea {
  const property tamanio

  method cantidadMaximaHabitantes() 
}



class Rol {
  method extraPotencialOfensivo

  method esPersonajeGroso(personaje)

}

class Guerrero inherits Rol {

  override method extraPotencialOfensivo() = 100

  override method esPersonajeGroso(personaje) = personaje.fuerza() > 50


}

class Cazador inherits Rol {
  const mascota

  method initialize() {
    if(mascota == null) throw new DomainException(message = "La mascota agregada no existe")
  }

  override method extraPotencialOfensivo() =  if(not mascota.tieneGarras()) mascota.fuerza() else mascota.fuerza()*2

  override method esPersonajeGroso(personaje) = mascota.esLongeva()
}

class Brujo inherits Personaje {

}