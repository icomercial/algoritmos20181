Proceso sin_titulo
	//definir variables
	Definir cantidadAlumnos, contadorAprobados, contadorReprobados,contador, i Como Entero;
	definir nota, notaAcumulada, promedio Como Real;
		
	notaAcumulada=0;
	cantidadAlumnos=3;
	contador=0;
	contadorAprobados=0;
	contadorReprobados=0;
	Repetir
		Escribir 'Ingrese la nota del alumno';
		leer nota;
		Si nota <1 || nota >7 Entonces
			Escribir "Error en nota ingresada. Debe ser entre 1 y 7";
		FinSi
		contador=contador+1;
		notaAcumulada=notaAcumulada+nota;
		Si nota>=4 Entonces
			contadorAprobados=contadorAprobados+1;
		SiNo
			contadorReprobados=contadorReprobados+1;
		FinSi
	Hasta Que contador == cantidadAlumnos;
	promedio = notaAcumulada/cantidadAlumnos;
	Escribir "El promedio es: ", promedio;
	Escribir "Han aprobado: ",contadorAprobados," alumnos";
FinProceso
