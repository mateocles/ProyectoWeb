function validar() {
  
    var nombre = document.getElementById("nombre").value;
    var apellidos = document.getElementById("apellidos").value;
    var cedula = document.getElementById("cedula").value;
    var nacionalidad = document.getElementById("nacionalidad").value;
    var correo = document.getElementById("coreeo").value;
    var telefono = document.getElementById("telefono").value;
    var fechanacimiento = document.getElementById("fechanacimiento").value;
    var usuario = document.getElementById("usuario").value;
    var clave = document.getElementById("clave").value;
	
    var expresion = /\w+@\w+\.+[a-z]/;
		

    if(nombre === "" || apellidos === "" || cedula === "" || nacionalidad === "" || correo === "" || telefono === "" || fechanacimiento === "" || usuario === "" || clave === "" ){
        alert ("Todos los campos son obligatorios");
        return false;
    }
    else if(nombre.length>45){
        alert("nombres muy largos");
        return false;
    }
    else if(apellidos.length>45){
        alert("apellidos muy largos");
        return false;
    }
    else if(nacionalidad.length>45){
        alert("nacionalidad muy larga");
        return false;
    }
    else if(!expresion.test(correo)){
        alert("correo no valido");
        return false;
    }
    else if(correo.length>45){
        alert("correo muy largo");
        return false;
    }
    else if(telefono.length>13){
        alert("telefono muy largo");
        return false;
    }
    else if(usuario.length>45){
        alert("usuario demasiado largo");
        return false;
    }
    else if(clave.length>45){
        alert("clave demasiado larga largo");
        return false;
    }
    else if(isNaN.apply(telefono)){
        alert("El teléfono ingresado no es un número");
        return false;
    }
	
}