Algoritmo Registro_turno
	
	// Comentarios y informacion sobre el funcionamiento del software Registro_Turno;
	
	// -Este sofware servira para llevar control de turnos y informacion del pasiente;
	// -Tambien validara imprimira el costo de su consulta si es asegurado o no, mas su turno;
	// -A final del dia todo registro sera eliminado, y si es necesario la propietaria/o en su record llevara;
	// -Datos importante del paciente;
	
	// Declaracion de variables;
	
	Definir Nombre, Apellido Como Caracter;
	Definir seguro, Turno, cedula, contar, cedulac Como real;
	Definir Costo Como Real;
	
	// Asignacion y descripcion de variables;
	
	Repetir
		Escribir ' ';
	Escribir 'Bienvenido/a favor ingrese la informacion para su Ticket o turno'
		Escribir ' ';
		
	Escribir 'Escriba Su Primer Nombre';
	Leer Nombre;
	Escribir 'Escriba Su Primer Apellido';
	Leer Apellido;
	Repetir
		Escribir 'Escriba Su cedula de identidad';
	Leer cedula;
	cedulac <- cedula;
	contar <- 0;
	Mientras cedulac <> 0 Hacer
		cedulac <- trunc (cedulac/10);
		contar<- contar+1;
	Fin Mientras;
	Si contar = 11 Entonces
		Escribir 'Cedula procesada';
	SiNo
		Escribir 'Existe un error en su cedula, favor verificar'
	Fin Si
Hasta que contar = 11;

	Escribir 'tienes seguro medico? Responder 1 para SI o 2 para No';
	Leer seguro;
	
	Escribir ' ';
	
	//Contador de Turno;
	
	Turno<- Turno+1;
	
	// Operaciones;
	
	Si seguro=1 Entonces;
		Escribir 'Datos del paciente';
		Escribir ' ';
		Escribir 'Nombre y Apellido: ',Nombre,' ',Apellido;
		Escribir 'Cedula del paciente: ',cedula;
		Costo <- 1000-500;
		Escribir 'Pago de consulta por descuento del seguro ','RD$',Costo,' Pesos';
		Escribir 'Ticket o Turno del paciente: ',Turno;
		Escribir 'Gracias por la informacion Por favor espere!, pronto sera llamado para su consulta.'
	SiNo
		Escribir 'Datos del paciente';
		Escribir ' ';
		Escribir 'Nombre y Apellido: ',Nombre,' ',Apellido;
		Escribir 'Cedula del paciente: ',cedula;
		Costo <- 1000;
		Escribir 'Pago de consulta sin seguro: ','RD$ ',Costo,' Pesos';
		Escribir 'Ticket o Turno del paciente: ',Turno;
		Escribir 'Gracias por la informacion Por favor espere!, pronto sera llamado para su consulta.';
	FinSi;
	
hasta que Turno =3;
Escribir ' ';
Escribir 'En breve recibiremos mas pacientes'

FinAlgoritmo
