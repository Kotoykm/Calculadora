//===========LIBRERIAS==================

import fl.controls.Label;
import flash.text.TextField;
import fl.controls.TextInput;
import flash.events.MouseEvent;
import fl.controls.TextArea;

//===========VARIABLES=================

//11-09-2018
var num_inicial:Number;
var num_final:Number;
var resultado:Number;
var operador:String;


//Botones de numeros
var tecla1:boton = new boton;
var tecla2:boton = new boton;
var tecla3:boton = new boton;
var tecla4:boton = new boton;
var tecla5:boton = new boton;
var tecla6:boton = new boton;
var tecla7:boton = new boton;
var tecla8:boton = new boton;
var tecla9:boton = new boton;
var tecla0:boton = new boton;

//Botones de operaciones

var teclamas:boton = new boton;
var teclamenos:boton = new boton;
var teclamul:boton = new boton;
var tecladiv:boton = new boton;
var teclaigual:boton = new boton;
var teclace:boton = new boton;

//Formatos

var formatoteclas:TextFormat = new TextFormat; 
var formatotitulos:TextFormat = new TextFormat;


var fondoc:TextField = new TextField;

//Numeros

var tnum1:TextField = new TextField;
var tnum2:TextField = new TextField;
var tnum3:TextField = new TextField;
var tnum4:TextField = new TextField;
var tnum5:TextField = new TextField;
var tnum6:TextField = new TextField;
var tnum7:TextField = new TextField;
var tnum8:TextField = new TextField;
var tnum9:TextField = new TextField;
var tnum0:TextField = new TextField;

//Operadores

var topmas:TextField = new TextField;
var topmen:TextField = new TextField;
var topmul:TextField = new TextField;
var topdiv:TextField = new TextField;
var topigu:TextField = new TextField;
var topcee:TextField = new TextField;

var texti:TextArea = new TextArea;
//var texti:TextField = new TextField;


//NUEVOS

var numerol:Number;

//============DECLARACIONES=============

//Formato

formatoteclas.size = 40; 
formatoteclas.align = TextFormatAlign.CENTER; 
formatoteclas.bold = true;
formatoteclas.color = 0xFFFFFF; 
formatoteclas.italic = false; 
formatoteclas.font = "Century Gothic";


//Fondo

addChild(fondoc);

fondoc.x=235;
fondoc.y=100;
fondoc.height=400;
fondoc.width=300;
fondoc.background = true;
fondoc.backgroundColor = 0xffebee;
//fondoc.border = true;
//fondoc.borderColor = 0x669966;
//fondoc.text = "Titulo";
fondoc.defaultTextFormat = formatotitulos;



//Botones

addChild(tecla1);

tecla1.x=250;
tecla1.y=200;
tecla1.width=60;
tecla1.height=60;

addChild(tecla2);

tecla2.x=320;
tecla2.y=200;
tecla2.width=60;
tecla2.height=60;

addChild(tecla3);

tecla3.x=390;
tecla3.y=200;
tecla3.width=60;
tecla3.height=60;

//Fila2

addChild(tecla4);

tecla4.x=250;
tecla4.y=270;
tecla4.width=60;
tecla4.height=60;

addChild(tecla5);

tecla5.x=320;
tecla5.y=270;
tecla5.width=60;
tecla5.height=60;

addChild(tecla6);

tecla6.x=390;
tecla6.y=270;
tecla6.width=60;
tecla6.height=60;

//Fila3

addChild(tecla7);

tecla7.x=250;
tecla7.y=340;
tecla7.width=60;
tecla7.height=60;

addChild(tecla8);

tecla8.x=320;
tecla8.y=340;
tecla8.width=60;
tecla8.height=60;

addChild(tecla9);

tecla9.x=390;
tecla9.y=340;
tecla9.width=60;
tecla9.height=60;

addChild(tecla0);

tecla0.x=250;
tecla0.y=410;
tecla0.width=60;
tecla0.height=60;

//===============
//Operadores

addChild(teclamul);

teclamul.x=460;
teclamul.y=200;
teclamul.width=60;
teclamul.height=60;

addChild(tecladiv);

tecladiv.x=460;
tecladiv.y=270;
tecladiv.width=60;
tecladiv.height=60;

addChild(teclamenos);

teclamenos.x=460;
teclamenos.y=340;
teclamenos.width=60;
teclamenos.height=60;

addChild(teclamas);

teclamas.x=460;
teclamas.y=410;
teclamas.width=60;
teclamas.height=60;
teclamas.mouseEnabled = false;


addChild(teclaigual);

teclaigual.x=390;
teclaigual.y=410;
teclaigual.width=60;
teclaigual.height=60;
teclaigual.mouseEnabled = false;


addChild(teclace);

teclace.x=320;
teclace.y=410;
teclace.width=60;
teclace.height=60;

//Numeros

//Fila 1

addChild(tnum1);

tnum1.defaultTextFormat = formatoteclas;
tnum1.x=250;
tnum1.y=200;
tnum1.text = "1";
tnum1.width = 60;
tnum1.height = 60;
tnum1.selectable = false;



addChild(tnum2);

tnum2.defaultTextFormat = formatoteclas;
tnum2.x=320;
tnum2.y=200;
tnum2.text = "2";
tnum2.width = 60;
tnum2.height = 60;
tnum2.selectable = false;


addChild(tnum3);

tnum3.defaultTextFormat = formatoteclas;
tnum3.x=390;
tnum3.y=200;
tnum3.text = "3";
tnum3.width = 60;
tnum3.height = 60;
tnum3.selectable = false;

addChild(tnum4);

tnum4.defaultTextFormat = formatoteclas;
tnum4.x=250;
tnum4.y=270;
tnum4.text = "4";
tnum4.width = 60;
tnum4.height = 60;
tnum4.selectable = false;

addChild(tnum5);

tnum5.defaultTextFormat = formatoteclas;
tnum5.x=320;
tnum5.y=270;
tnum5.text = "5";
tnum5.width = 60;
tnum5.height = 60;
tnum5.selectable = false;

addChild(tnum6);

tnum6.defaultTextFormat = formatoteclas;
tnum6.x=390;
tnum6.y=270;
tnum6.text = "6";
tnum6.width = 60;
tnum6.height = 60;
tnum6.selectable = false;

addChild(tnum7);

tnum7.defaultTextFormat = formatoteclas;
tnum7.x=250;
tnum7.y=340;
tnum7.text = "7";
tnum7.width = 60;
tnum7.height = 60;
tnum7.selectable = false;

addChild(tnum8);

tnum8.defaultTextFormat = formatoteclas;
tnum8.x=320;
tnum8.y=340;
tnum8.text = "8";
tnum8.width = 60;
tnum8.height = 60;
tnum8.selectable = false;

addChild(tnum9);

tnum9.defaultTextFormat = formatoteclas;
tnum9.x=390;
tnum9.y=340;
tnum9.text = "9";
tnum9.width = 60;
tnum9.height = 60;
tnum9.selectable = false;

addChild(tnum0);

tnum0.defaultTextFormat = formatoteclas;
tnum0.x=250;
tnum0.y=410;
tnum0.text = "0";
tnum0.width = 60;
tnum0.height = 60;
tnum0.selectable = false;

addChild(topmul);

topmul.defaultTextFormat = formatoteclas;
topmul.x=460;
topmul.y=200;
topmul.text = "X";
topmul.width = 60;
topmul.height = 60;
topmul.selectable = false;

addChild(topdiv);

topdiv.defaultTextFormat = formatoteclas;
topdiv.x=460;
topdiv.y=270;
topdiv.text = "÷";
topdiv.width = 60;
topdiv.height = 60;
topdiv.selectable = false;

addChild(topmen);

topmen.defaultTextFormat = formatoteclas;
topmen.x=460;
topmen.y=340;
topmen.text = "-";
topmen.width = 60;
topmen.height = 60;
topmen.selectable = false;

addChild(topmas);

topmas.defaultTextFormat = formatoteclas;
topmas.x=460;
topmas.y=410;
topmas.text = "+";
topmas.width = 60;
topmas.height = 60;
topmas.mouseEnabled = false;
topmas.selectable = false;


addChild(topigu);

topigu.defaultTextFormat = formatoteclas;
topigu.x=390;
topigu.y=410;
topigu.text = "=";
topigu.width = 60;
topigu.height = 60;
topigu.mouseEnabled = false;
topigu.selectable = false;


addChild(topcee);

topcee.defaultTextFormat = formatoteclas;
topcee.x=320;
topcee.y=410;
topcee.text = "C";
topcee.width = 60;
topcee.height = 60;
topcee.selectable = false;

addChild(texti);
texti.x=260;
texti.y=125;
texti.width=250;
texti.height=60;

//============= FUNCIONES =================

//Operadores

//Funcion Suma

teclamas.addEventListener(MouseEvent.CLICK,sumar);
topmas.addEventListener(MouseEvent.CLICK,sumar);
function sumar(event:MouseEvent):void{
	num_inicial = Number(texti.text);
	texti.text = "";
	operador = "+";

	
	if(num_inicial > 0){
	teclamas.mouseEnabled = true;
	topmas.mouseEnabled = true;
	}
	//teclamas.mouseEnabled = false;
	//topmas.mouseEnabled = false;
	
	
}


teclamas.addEventListener(MouseEvent.ROLL_OVER,mover_mas);
topmas.addEventListener(MouseEvent.ROLL_OVER,mover_mas);
function mover_mas(event:MouseEvent):void{
	teclamas.width=65;
	teclamas.height=65;
	topmas.width=65;
	topmas.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

teclamas.addEventListener(MouseEvent.ROLL_OUT,devolver_mas);
topmas.addEventListener(MouseEvent.ROLL_OUT,devolver_mas);
function devolver_mas(event:MouseEvent):void{
	teclamas.width=60;
	teclamas.height=60;
	topmas.width=60;
	topmas.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}


//Menos

teclamenos.addEventListener(MouseEvent.CLICK,restar);
topmen.addEventListener(MouseEvent.CLICK,restar);
function restar(event:MouseEvent):void{
texti.text = "-";
}

teclamenos.addEventListener(MouseEvent.ROLL_OVER,mover_menos);
topmen.addEventListener(MouseEvent.ROLL_OVER,mover_menos);
function mover_menos(event:MouseEvent):void{
	teclamenos.width=65;
	teclamenos.height=65;
	topmen.width=65;
	topmen.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

teclamenos.addEventListener(MouseEvent.ROLL_OUT,devolver_menos);
topmen.addEventListener(MouseEvent.ROLL_OUT,devolver_menos);
function devolver_menos(event:MouseEvent):void{
	teclamenos.width=60;
	teclamenos.height=60;
	topmen.width=60;
	topmen.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}



//Multiplicar

teclamul.addEventListener(MouseEvent.CLICK,multiplicar);
topmul.addEventListener(MouseEvent.CLICK,multiplicar);
function multiplicar(event:MouseEvent):void{
texti.text = "*";
}

teclamul.addEventListener(MouseEvent.ROLL_OVER,mover_multip);
topmul.addEventListener(MouseEvent.ROLL_OVER,mover_multip);
function mover_multip(event:MouseEvent):void{
	teclamul.width=65;
	teclamul.height=65;
	topmul.width=65;
	topmul.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

teclamul.addEventListener(MouseEvent.ROLL_OUT,devolver_multip);
topmul.addEventListener(MouseEvent.ROLL_OUT,devolver_multip);
function devolver_multip(event:MouseEvent):void{
	teclamul.width=60;
	teclamul.height=60;
	topmul.width=60;
	topmul.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//Dividir (ME QUEDE AQUI)

tecladiv.addEventListener(MouseEvent.CLICK,dividir);
topdiv.addEventListener(MouseEvent.CLICK,dividir);
function dividir(event:MouseEvent):void{
texti.text = "/";
}

tecladiv.addEventListener(MouseEvent.ROLL_OVER,mover_divi);
topdiv.addEventListener(MouseEvent.ROLL_OVER,mover_divi);
function mover_divi(event:MouseEvent):void{
	tecladiv.width=65;
	tecladiv.height=65;
	topdiv.width=65;
	topdiv.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecladiv.addEventListener(MouseEvent.ROLL_OUT,devolver_divi);
topdiv.addEventListener(MouseEvent.ROLL_OUT,devolver_divi);
function devolver_divi(event:MouseEvent):void{
	tecladiv.width=60;
	tecladiv.height=60;
	topdiv.width=60;
	topdiv.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//FUNCION IGUAL

teclaigual.addEventListener(MouseEvent.CLICK,igual);
topigu.addEventListener(MouseEvent.CLICK,igual);
function igual(event:MouseEvent):void{
	num_final = Number(texti.text);
	texti.text = String(resultado);

	if(operador == "+"){
		resultado = num_inicial + num_final;
	}
	
}


teclaigual.addEventListener(MouseEvent.ROLL_OVER,mover_igua);
topigu.addEventListener(MouseEvent.ROLL_OVER,mover_igua);
function mover_igua(event:MouseEvent):void{
	teclaigual.width=65;
	teclaigual.height=65;
	topigu.width=65;
	topigu.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

teclaigual.addEventListener(MouseEvent.ROLL_OUT,devolver_igua);
topigu.addEventListener(MouseEvent.ROLL_OUT,devolver_igua);
function devolver_igua(event:MouseEvent):void{
	teclaigual.width=60;
	teclaigual.height=60;
	topigu.width=60;
	topigu.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//CE

teclace.addEventListener(MouseEvent.CLICK,limpiar);
topcee.addEventListener(MouseEvent.CLICK,limpiar);
function limpiar(event:MouseEvent):void{
texti.text = "";
}

teclace.addEventListener(MouseEvent.ROLL_OVER,mover_borra);
topcee.addEventListener(MouseEvent.ROLL_OVER,mover_borra);
function mover_borra(event:MouseEvent):void{
	teclace.width=65;
	teclace.height=65;
	topcee.width=65;
	topcee.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

teclace.addEventListener(MouseEvent.ROLL_OUT,devolver_borra);
topcee.addEventListener(MouseEvent.ROLL_OUT,devolver_borra);
function devolver_borra(event:MouseEvent):void{
	teclace.width=60;
	teclace.height=60;
	topcee.width=60;
	topcee.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}


//Numeros

//Funcion TECLA 1

tecla1.addEventListener(MouseEvent.CLICK,insertar_uno);
tnum1.addEventListener(MouseEvent.CLICK,insertar_uno);
function insertar_uno(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "1";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "1";
	}

	
	
}

tecla1.addEventListener(MouseEvent.ROLL_OVER,mover_uno);
tnum1.addEventListener(MouseEvent.ROLL_OVER,mover_uno);
function mover_uno(event:MouseEvent):void{
	tecla1.width=65;
	tecla1.height=65;
	tnum1.width=65;
	tnum1.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla1.addEventListener(MouseEvent.ROLL_OUT,mover_uno);
tnum1.addEventListener(MouseEvent.ROLL_OUT,devolver_uno);
function devolver_uno(event:MouseEvent):void{
	tecla1.width=60;
	tecla1.height=60;
	tnum1.width=60;
	tnum1.height=60;
	Mouse.cursor = MouseCursor.AUTO;
	
}

//TECLA 2

tecla2.addEventListener(MouseEvent.CLICK,insertar_dos);
tnum2.addEventListener(MouseEvent.CLICK,insertar_dos);
function insertar_dos(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "2";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "2";
	}
}

tecla2.addEventListener(MouseEvent.ROLL_OVER,mover_dos);
tnum2.addEventListener(MouseEvent.ROLL_OVER,mover_dos);
function mover_dos(event:MouseEvent):void{
	tecla2.width=65;
	tecla2.height=65;
	tnum2.width=65;
	tnum2.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla2.addEventListener(MouseEvent.ROLL_OUT,mover_dos);
tnum2.addEventListener(MouseEvent.ROLL_OUT,devolver_dos);
function devolver_dos(event:MouseEvent):void{
	tecla2.width=60;
	tecla2.height=60;
	tnum2.width=60;
	tnum2.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//TECLA 3

tecla3.addEventListener(MouseEvent.CLICK,insertar_tres);
tnum3.addEventListener(MouseEvent.CLICK,insertar_tres);
function insertar_tres(event:MouseEvent):void{

	if(texti.text == ""){
		texti.text = "3";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "3";
	}
}

tecla3.addEventListener(MouseEvent.ROLL_OVER,mover_tres);
tnum3.addEventListener(MouseEvent.ROLL_OVER,mover_tres);
function mover_tres(event:MouseEvent):void{
	tecla3.width=65;
	tecla3.height=65;
	tnum3.width=65;
	tnum3.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla3.addEventListener(MouseEvent.ROLL_OUT,mover_tres);
tnum3.addEventListener(MouseEvent.ROLL_OUT,devolver_tres);
function devolver_tres(event:MouseEvent):void{
	tecla3.width=60;
	tecla3.height=60;
	tnum3.width=60;
	tnum3.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}


//TECLA 4


tecla4.addEventListener(MouseEvent.CLICK,insertar_cuatro);
tnum4.addEventListener(MouseEvent.CLICK,insertar_cuatro);
function insertar_cuatro(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "4";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "4";
	}
}

tecla4.addEventListener(MouseEvent.ROLL_OVER,mover_cuatro);
tnum4.addEventListener(MouseEvent.ROLL_OVER,mover_cuatro);
function mover_cuatro(event:MouseEvent):void{
	tecla4.width=65;
	tecla4.height=65;
	tnum4.width=65;
	tnum4.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla4.addEventListener(MouseEvent.ROLL_OUT,mover_cuatro);
tnum4.addEventListener(MouseEvent.ROLL_OUT,devolver_cuatro);
function devolver_cuatro(event:MouseEvent):void{
	tecla4.width=60;
	tecla4.height=60;
	tnum4.width=60;
	tnum4.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//TECLA 5

tecla5.addEventListener(MouseEvent.CLICK,insertar_cinco);
tnum5.addEventListener(MouseEvent.CLICK,insertar_cinco);
function insertar_cinco(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "5";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "5";
	}
}

tecla5.addEventListener(MouseEvent.ROLL_OVER,mover_cinco);
tnum5.addEventListener(MouseEvent.ROLL_OVER,mover_cinco);
function mover_cinco(event:MouseEvent):void{
	tecla5.width=65;
	tecla5.height=65;
	tnum5.width=65;
	tnum5.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla5.addEventListener(MouseEvent.ROLL_OUT,mover_cinco);
tnum5.addEventListener(MouseEvent.ROLL_OUT,devolver_cinco);
function devolver_cinco(event:MouseEvent):void{
	tecla5.width=60;
	tecla5.height=60;
	tnum5.width=60;
	tnum5.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//TECLA 6

tecla6.addEventListener(MouseEvent.CLICK,insertar_seis);
tnum6.addEventListener(MouseEvent.CLICK,insertar_seis);
function insertar_seis(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "6";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "6";
	}
}

tecla6.addEventListener(MouseEvent.ROLL_OVER,mover_seis);
tnum6.addEventListener(MouseEvent.ROLL_OVER,mover_seis);
function mover_seis(event:MouseEvent):void{
	tecla6.width=65;
	tecla6.height=65;
	tnum6.width=65;
	tnum6.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla6.addEventListener(MouseEvent.ROLL_OUT,mover_seis);
tnum6.addEventListener(MouseEvent.ROLL_OUT,devolver_seis);
function devolver_seis(event:MouseEvent):void{
	tecla6.width=60;
	tecla6.height=60;
	tnum6.width=60;
	tnum6.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//TECLA 7

tecla7.addEventListener(MouseEvent.CLICK,insertar_siete);
tnum7.addEventListener(MouseEvent.CLICK,insertar_siete);
function insertar_siete(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "7";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "7";
	}
}

tecla7.addEventListener(MouseEvent.ROLL_OVER,mover_siete);
tnum7.addEventListener(MouseEvent.ROLL_OVER,mover_siete);
function mover_siete(event:MouseEvent):void{
	tecla7.width=65;
	tecla7.height=65;
	tnum7.width=65;
	tnum7.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla7.addEventListener(MouseEvent.ROLL_OUT,mover_siete);
tnum7.addEventListener(MouseEvent.ROLL_OUT,devolver_siete);
function devolver_siete(event:MouseEvent):void{
	tecla7.width=60;
	tecla7.height=60;
	tnum7.width=60;
	tnum7.height=60;
	Mouse.cursor = MouseCursor.AUTO;

}

//TECLA 8

tecla8.addEventListener(MouseEvent.CLICK,insertar_ocho);
tnum8.addEventListener(MouseEvent.CLICK,insertar_ocho);
function insertar_ocho(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "8";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "8";
	}
}

tecla8.addEventListener(MouseEvent.ROLL_OVER,mover_ocho);
tnum8.addEventListener(MouseEvent.ROLL_OVER,mover_ocho);
function mover_ocho(event:MouseEvent):void{
	tecla8.width=65;
	tecla8.height=65;
	tnum8.width=65;
	tnum8.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla8.addEventListener(MouseEvent.ROLL_OUT,mover_ocho);
tnum8.addEventListener(MouseEvent.ROLL_OUT,devolver_ocho);
function devolver_ocho(event:MouseEvent):void{
	tecla8.width=60;
	tecla8.height=60;
	tnum8.width=60;
	tnum8.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//TECLA 9

tecla9.addEventListener(MouseEvent.CLICK,insertar_nueve);
tnum9.addEventListener(MouseEvent.CLICK,insertar_nueve);
function insertar_nueve(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "9";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "9";
	}
}

tecla9.addEventListener(MouseEvent.ROLL_OVER,mover_nueve);
tnum9.addEventListener(MouseEvent.ROLL_OVER,mover_nueve);
function mover_nueve(event:MouseEvent):void{
	tecla9.width=65;
	tecla9.height=65;
	tnum9.width=65;
	tnum9.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla9.addEventListener(MouseEvent.ROLL_OUT,mover_nueve);
tnum9.addEventListener(MouseEvent.ROLL_OUT,devolver_nueve);
function devolver_nueve(event:MouseEvent):void{
	tecla9.width=60;
	tecla9.height=60;
	tnum9.width=60;
	tnum9.height=60;
	Mouse.cursor = MouseCursor.AUTO;
	
}

//TECLA 0

tecla0.addEventListener(MouseEvent.CLICK,insertar_cero);
tnum0.addEventListener(MouseEvent.CLICK,insertar_cero);
function insertar_cero(event:MouseEvent):void{
	if(texti.text == ""){
		texti.text = "0";
	}else{
		numerol = Number(texti.text);
		texti.text = String(numerol) + "0";
	}
}

tecla0.addEventListener(MouseEvent.ROLL_OVER,mover_cero);
tnum0.addEventListener(MouseEvent.ROLL_OVER,mover_cero);
function mover_cero(event:MouseEvent):void{
	tecla0.width=65;
	tecla0.height=65;
	tnum0.width=65;
	tnum0.height=65;
	Mouse.cursor = MouseCursor.BUTTON;
}

tecla0.addEventListener(MouseEvent.ROLL_OUT,devolver_cero);
tnum0.addEventListener(MouseEvent.ROLL_OUT,devolver_cero);
function devolver_cero(event:MouseEvent):void{
	tecla0.width=60;
	tecla0.height=60;
	tnum0.width=60;
	tnum0.height=60;
	Mouse.cursor = MouseCursor.AUTO;
}

//FRAGMENTOS DE CÓDIGO
/*
if(num_inicial > 0 && num_final == 0){
	texti.text = num_inicial;
}
*/

var variableContador:Number;

tecla1.addEventListener(MouseEvent.CLICK, contador);
function contador(event:MouseEvent):void{
		variableContador = variableContador + 1;
}

function activarOperadores(Number variableContador):void{

	teclamas.mouseEnabled = true;
	teclamenos.mouseEnabled = true;
	teclamul.mouseEnabled = true;
	tecladiv.mouseEnabled = true;

	if(variableContador == 2){
		teclaigual.mouseEnabled = true;
		variableContador == 0;
	}	
	else{
		teclaigual.mouseEnabled = false;
	}
}