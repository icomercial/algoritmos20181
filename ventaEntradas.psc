Proceso venta_entradas
	Definir opcion,cantidad,totalpago,saldo,tribuna,galeria,palco Como Entero;
	cantidad=0;totalpago=0;saldo=(12*5700)+(4*12000)+(25000*2);galeria=12;tribuna=4;palco=2;
	Escribir "Bienvenido al Sistema de Compra de Entradas";
	Repetir
		Escribir "Seleccione el tipo de entrada a comprar";
		Escribir "1) Galería $12.000.- Disponibles: ",galeria;
		Escribir "2) Tribuna $5.000.- Disponibles: ",tribuna;
		Escribir "3) Palco $25.000.- Disponibles: ",palco;
		Escribir "4) Finalizar";
		Leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Indique el número de Galerías";
				Leer cantidad;
				Si cantidad<=galeria Entonces
					galeria = galeria-cantidad;
					saldo = saldo - (cantidad*5700);
					totalpago = totalpago + (cantidad*5700);
				SiNo
					Si palco == 0 Entonces
						Escribir "Sin galerías disponibles";
					SiNo
						Escribir "No se puede procesar ya que sólo quedan ",galeria," disponibles";
					FinSi
				FinSi
			2:
				Escribir "Indique el número de Tribunas";
				Leer cantidad;
				Si cantidad<=tribuna Entonces
					tribuna = tribuna-cantidad;
					saldo = saldo - (cantidad*12000);
					totalpago = totalpago + (cantidad*12000);
				SiNo
					Si palco == 0 Entonces
						Escribir "Sin tribunas disponibles";
					SiNo
						Escribir "No se puede procesar ya que sólo quedan ",tribuna," disponibles";
					FinSi
				FinSi
			3:
				Escribir "Indique el número de Palcos";
				Leer cantidad;
				Si cantidad<=palco Entonces
					palco = palco-cantidad;
					saldo = saldo - (cantidad*25000);
					totalpago = totalpago + (cantidad*25000);
				SiNo
					Si palco == 0 Entonces
						Escribir "Sin palcos disponibles";
					SiNo
						Escribir "No se puede procesar ya que sólo quedan ",palco," disponibles";
					FinSi
					
				FinSi
			De Otro Modo:
				
		FinSegun
	Hasta Que opcion==4;
	Si (12-galeria )>0 Entonces
		Escribir 12-galeria," galerías";
	SiNo
		
	FinSi
	
	Escribir 12-tribuna," tribunas";
	Escribir 12-palco," palcos";
	Escribir "El total a pagar es $",totalpago;
	Escribir "El total por vender es $", saldo;
	Escribir "Gracias por prefernos.";
FinProceso
