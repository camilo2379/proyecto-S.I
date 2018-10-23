
body{
	margin: 0;
}
img{
	display: block;
	max-width: 100%
}
.logo{
	opacity: 0.8;
}
/* --------------Estilo Header*/
.header.contenedor{
	display: flex;
	justify-content: space-between;
}
.logo, .icon-menu{
	margin:5px;
}	
.icon-menu{
	display: block;
	width: 40px;
	height: 40px
	font-size: 40px;
	background: orange;
	color: #fff;
	text-align: center;
	line-height: 45px;
	border-radius: 5px;
	margin-left:auto;
	cursor: pointer;
}
/*Estilo Menu*/
.nav{
	position: absolute;
	top:60;
	right: -110%;
	width: 100%;
	transition: all 0,2s;
}
.menu{
	list-style: none;
	padding:20px;
	margin:0;
	width: 100%
}
.menu_link{
	display: block;
	padding: 20px;
	background:orange;
	text-decoration: none;
	color: #fff;
}
.menu_link:hover,.select{
	background: orange;
	color: white;
}	
.mostrar{
	right:0;
}
/*----ESTILO BANNER--------*/

.banner{
	margin-top:-120px;
	position: relative;
	z-index: -1000;
	margin-bottom:30px;
	padding: 10px;
}
.banner img{
	width: 100%;
}
.banner .contenedor{
	position:absolute;
	top:50%;
	left:50%;
	transform: translateX(-50%) translateY(-50%);
	background:white;
	opacity:0.7;
	width: 100%;
	color: #000;
	text-align:center;
	font-family: cooper,sans-serif;
}
.banner_txt{
	display: none;
}


.banner_img{
	width: auto;
}
/*----------Estilo Contacto-------- */
.encabezado {
	font-size: 22px;
	font-family: 'Source Sans Pro', sans-serif;
	text-decoration: underline;
	margin: 0px 0px;
}
 
p {
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 16px;
	margin-bottom: 0px;
}

label {
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 16px;
	margin-bottom: 0px;
	font-weight: bold;
}
 
input[type=text], input[type=tel], input[type=email] {
	width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
}
 
textarea {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    resize: none;
}
 
input[type=button], input[type=submit], input[type=reset] {
    background-color: orange;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    margin-top: 10px;
}
 
input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover {
    background-color: #333;
}
 /*----------Estilo FOOTER-------- */
 .footer{
 	background: #2E2E2E;
 	color:#fff;
 	padding: 10px;
 	text-align: center;
 	margin-top: 50px;
 }
.footer .social [class^="icon-"]{
	display: inline-block;
	color: #333;
	text-decoration: none;
	font-size: 30px;
	padding: 10px;
	background: white;
	border-radius: 50%;
	width:40px;
	height: 40px;
	line-height: 40px;
}
.footer .social [class^="icon-"]:hover{
 		background: black;
 		color: white;
}
/*------------ESTILO RESPONSIVE-------*/

@media(min-width: 480px){
	.logo{
		font size: 40px;
	}
	.banner_titulo{
		font-size: 30px;
		margin: 5px 0;
	}
	.banner_txt{
		display: block;
		font-size:20px;
		margin: 5px 0;
	}
	.info{
		display: flex;
		justify-content: space-between;
	}
	.info_columna{
		width: 32%;
	}
	.info_titulo{
		font-size: 30px;
		margin: 5px 0;
	}
	.info_img{
		width: 300px;
		height: 100px;
	}
	.menu_link:hover,.select{
	background: white;
	color: orange;
}	

@media(min-width: 768px){
.logo{
		font size: 50px;
	}
	.banner_titulo{
		font-size: 30px;
		margin: 5px 0;
	}
	.banner_txt{
		display: block;
		font-size:25px;
		margin: 5px 0;
	}
	.info{
		display: flex;
		justify-content: space-between;
	}
	.info_columna{
		width: 40%;
	}
	.info_titulo{
		font-size: 40px;
		margin: 5px 0;
	}
	.info_img{
		width: 400px;
		height: 200px;
	}
	.menu_link:hover,.select{
	background: white;
	color: orange;
}	
}
@media(min-width: 1024px){
	.nav{
		position:static;
	}
	.menu{
		display:flex;
		margin-right: 50px
	}
	.select {
		background: orange;
		color: white;
	}
	.icon-menu{
		display: none;	
	}
	.banner_titulo{
		font-size: 60px;
	}

}
