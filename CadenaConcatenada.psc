Proceso CadenaConcatenada
	definir algo Como Real;
	algo=501501;
	Escribir concatenar("$",Concatenar
	(concatenar(subcadena
	(convertirAtexto(algo),0,2),".")
	,subcadena(convertirAtexto(algo),3,5)));
FinProceso
