CLASS zcl_carga_datos_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CARGA_DATOS_0631 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lt_acc_categ TYPE TABLE OF ztb_acc_cat_0631,
          lt_catego    TYPE TABLE OF ztb_catego_0631,
          lt_clientes  TYPE TABLE OF ztb_clientes_631,
          lt_clnts_lib TYPE TABLE OF ztb_clnts_lib631,
          lt_libros    TYPE TABLE OF ztb_libros_0631.

"ztb_acc_cat_0631
  lt_acc_categ = VALUE #( ( bi_categ = 'A' tipo_acceso = '1' )
                          ( bi_categ = 'B' tipo_acceso = '1' )
                          ( bi_categ = 'C' tipo_acceso = '2' )
                          ( bi_categ = 'D' tipo_acceso = '2' )
                          ( bi_categ = 'E' tipo_acceso = '2' )
                          ( bi_categ = 'F' tipo_acceso = '3' )
                          ( bi_categ = 'G' tipo_acceso = '3' )
                          ( bi_categ = 'H' tipo_acceso = '4' ) ).

   DELETE FROM ztb_acc_cat_0631.
   INSERT ztb_acc_cat_0631 FROM TABLE @lt_acc_categ.
   out->write( sy-dbcnt ).

"ztb_catego_0631

   lt_catego = VALUE #( ( bi_categ = 'A' descripcion = 'Filosofía, psicología' )
                        ( bi_categ = 'B' descripcion = 'Religión, mitología' )
                        ( bi_categ = 'C' descripcion = 'Ciencias sociales (derecho, política,economía)' )
                        ( bi_categ = 'D' descripcion = 'Ciencias naturales (matemáticas, astronomía, física)' )
                        ( bi_categ = 'E' descripcion = 'Ciencias aplicadas (tecnología, informática)' )
                        ( bi_categ = 'F' descripcion = 'Arte, música, deporte' )
                        ( bi_categ = 'G' descripcion = 'Lengua, poesía, teatro' )
                        ( bi_categ = 'H' descripcion = 'Geografía, historia' ) ).

   DELETE FROM ztb_catego_0631.
   INSERT ztb_catego_0631 FROM TABLE @lt_catego.
   out->write( sy-dbcnt ).

"ztb_clientes_631

   lt_clientes = VALUE #( ( id_cliente = '005638984K' tipo_acceso = '1' nombre = 'Andrew'   apellido = 'Roberts'   email = 'STEPHANIE.ROBERTS@EMAIL.COM' url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '049320909Q' tipo_acceso = '2' nombre = 'Natalie'  apellido = 'Clark'     email = 'PETER.CLARK@EMAIL.COM'       url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '049573865T' tipo_acceso = '1' nombre = 'Faith'    apellido = 'Black'     email = 'DAN.BLACK@EMAIL.COM'         url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '203947278B' tipo_acceso = '3' nombre = 'Carolyn'  apellido = 'Wright'    email = 'ADRIAN.WRIGHT@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '234234231T' tipo_acceso = '5' nombre = 'Penelope' apellido = 'King'      email = 'CAROLINE.KING@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '239482309W' tipo_acceso = '5' nombre = 'Julian'   apellido = 'Underwood' email = 'DAN.UNDERWOOD@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '276594867J' tipo_acceso = '5' nombre = 'Olivia'   apellido = 'Allan'     email = 'OWEN.ALLAN@EMAIL.COM'        url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '283748858A' tipo_acceso = '5' nombre = 'Eric'     apellido = 'Knox'      email = 'LILY.KNOX@EMAIL.COM'         url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '324726345S' tipo_acceso = '4' nombre = 'Vanessa'  apellido = 'Baker'     email = 'SUE.BAKER@EMAIL.COM'         url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '340958439D' tipo_acceso = '5' nombre = 'Michael'  apellido = 'Short'     email = 'JASON.SHORT@EMAIL.COM'       url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '345093450E' tipo_acceso = '3' nombre = 'Sue'      apellido = 'Sanderson' email = 'JOAN.SANDERSON@EMAIL.COM'    url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '345838534R' tipo_acceso = '5' nombre = 'Lily'     apellido = 'Langdon'   email = 'ANDREW.LANGDON@EMAIL.COM'    url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '348947597P' tipo_acceso = '5' nombre = 'Lillian'  apellido = 'Davies'    email = 'JULIAN.DAVIES@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '378458844M' tipo_acceso = '5' nombre = 'Joseph'   apellido = 'Smith'     email = 'NATALIE.SMITH@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '423586845G' tipo_acceso = '5' nombre = 'Stephani' apellido = 'Quinn'     email = 'LILLIAN.QUINN@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '430958433A' tipo_acceso = '2' nombre = 'Joan'     apellido = 'Short'     email = 'WENDY.SHORT@EMAIL.COM'       url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '439853453C' tipo_acceso = '5' nombre = 'Wendy'    apellido = 'Newman'    email = 'JOSEPH.NEWMAN@EMAIL.COM'     url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '453532543O' tipo_acceso = '1' nombre = 'Neil'     apellido = 'Wilson'    email = 'VANESSA.WILSON@EMAIL.COM'    url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '489632882D' tipo_acceso = '5' nombre = 'Sonia'    apellido = 'Welch'     email = 'NEIL.WELCH@EMAIL.COM'        url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' )
                          ( id_cliente = '540867547H' tipo_acceso = '5' nombre = 'Adrian'   apellido = 'Young'     email = 'PENELOPE.YOUNG@EMAIL.COM'    url =
'https://st2.depositphotos.com/1738826/5437/v/450/depositphotos_54372545-stock-illustration-business-man-cartoon-presenting.jpg' ) ).

  DELETE FROM ztb_clientes_631.
  INSERT ztb_clientes_631 FROM TABLE @lt_clientes.
  out->write( sy-dbcnt ).

"ztb_clnts_lib631

   lt_clnts_lib = VALUE #( ( id_cliente = '005638984K' id_libros = '000001' )
                           ( id_cliente = '005638984K' id_libros = '000020' )
                           ( id_cliente = '005638984K' id_libros = '000021' )
                           ( id_cliente = '049320909Q' id_libros = '000002' )
                           ( id_cliente = '049573865T' id_libros = '000003' )
                           ( id_cliente = '203947278B' id_libros = '000004' )
                           ( id_cliente = '234234231T' id_libros = '000005' )
                           ( id_cliente = '239482309W' id_libros = '000006' )
                           ( id_cliente = '239482309W' id_libros = '000010' )
                           ( id_cliente = '276594867J' id_libros = '000007' )
                           ( id_cliente = '276594867J' id_libros = '000001' )
                           ( id_cliente = '283748858A' id_libros = '000008' )
                           ( id_cliente = '283748858A' id_libros = '000022' )
                           ( id_cliente = '324726345S' id_libros = '000009' )
                           ( id_cliente = '340958439D' id_libros = '000010' )
                           ( id_cliente = '345093450E' id_libros = '000011' )
                           ( id_cliente = '345838534R' id_libros = '000012' )
                           ( id_cliente = '345838534R' id_libros = '000003' )
                           ( id_cliente = '348947597P' id_libros = '000013' )
                           ( id_cliente = '348947597P' id_libros = '000022' )
                           ( id_cliente = '378458844M' id_libros = '000014' )
                           ( id_cliente = '423586845G' id_libros = '000015' )
                           ( id_cliente = '430958433A' id_libros = '000016' )
                           ( id_cliente = '439853453C' id_libros = '000017' )
                           ( id_cliente = '439853453C' id_libros = '000022' )
                           ( id_cliente = '439853453C' id_libros = '000001' )
                           ( id_cliente = '453532543O' id_libros = '000018' )
                           ( id_cliente = '453532543O' id_libros = '000022' )
                           ( id_cliente = '489632882D' id_libros = '000019' )
                           ( id_cliente = '540867547H' id_libros = '000020' ) ).

  DELETE FROM ztb_clnts_lib631.
  INSERT ztb_clnts_lib631 FROM TABLE @lt_clnts_lib.
  out->write( sy-dbcnt ).

"ztb_libros_0631

    lt_libros = VALUE #( ( id_libros = '000001' bi_categ = 'A' titulo = 'Diccionario de los sentimientos'        autor = 'CAGIGAL, Jose Maria'      editorial = 'ANAGRAMA'            idioma = 'S' paginas = 350 precio = '84.99'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000002' bi_categ = 'A' titulo = 'La selva del lenguaje'                  autor = 'Hoagland , M.'            editorial = 'LATERZ A'            idioma = 'S' paginas = 486 precio = '146'    moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000027' bi_categ = 'C' titulo = 'Camino al éxito'                        autor = 'Hoagland , M.'            editorial = 'LATERZ A'            idioma = 'S' paginas = 486 precio = '146'    moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000028' bi_categ = 'E' titulo = 'La historia de los Andes'               autor = 'Hoagland , M.'            editorial = 'LATERZ A'            idioma = 'S' paginas = 486 precio = '146'    moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000029' bi_categ = 'G' titulo = 'El Alquimista'                          autor = 'Hoagland , M.'            editorial = 'LATERZ A'            idioma = 'S' paginas = 486 precio = '146'    moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000003' bi_categ = 'A' titulo = 'Ética Para Náufragos'                   autor = 'Vallejo- Nágera, Juan'    editorial = 'LA SOCIAL'           idioma = 'S' paginas = 236 precio = '35'     moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000004' bi_categ = 'B' titulo = 'La Sociedad Global'                     autor = 'Lane, Frank WW'           editorial = 'JOAQUIN MORTIZ'      idioma = 'S' paginas = 189 precio = '18.5'   moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000005' bi_categ = 'B' titulo = 'Evangelio de San Pablo'                 autor = 'DICKSON, David'           editorial = 'EDIBESA'             idioma = 'S' paginas = 475 precio = '25.1'   moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000006' bi_categ = 'B' titulo = 'El Profeta: El jardin del Profeta'      autor = 'Araujo, Joaquín'          editorial = 'ABE BOOKS'           idioma = 'S' paginas = 750 precio = '110.05' moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000007' bi_categ = 'B' titulo = 'Your Growing Child and Religion'        autor = 'Luka Brajnovic'           editorial = 'KELVIN BOOKS'        idioma = 'E' paginas = 380 precio = '65.49'  moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000008' bi_categ = 'B' titulo = 'Carta a la Familias'                    autor = 'Sastre, José Luis'        editorial = 'PPC'                 idioma = 'S' paginas = 265 precio = '19.99'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000009' bi_categ = 'C' titulo = 'The language of science O'              autor = 'MANIQUE, John'            editorial = 'SALVAR EDICION'      idioma = 'E' paginas = 125 precio = '14.99'  moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000010' bi_categ = 'C' titulo = 'Energy in Evolution'                    autor = 'Meade, J. E.'             editorial = 'ROW'                 idioma = 'E' paginas = 276 precio = '39.99'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000011' bi_categ = 'D' titulo = 'Analisis Numerico'                      autor = 'Timothy Sauer'            editorial = 'Addison-wesley'      idioma = 'E' paginas = 390 precio = '54.95'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000012' bi_categ = 'D' titulo = 'Algebra Matricial'                      autor = 'Jose manuel Gamboa'       editorial = 'Anaya'               idioma = 'S' paginas = 160 precio = '8.85'   moneda = 'EUR' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000013' bi_categ = 'D' titulo = 'Matematicas Galdos'                     autor = 'VV.A.A.'                  editorial = 'Cultural'            idioma = 'S' paginas = 220 precio = '30'     moneda = 'EUR' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000014' bi_categ = 'E' titulo = 'Un pequeño pasa para un hombre'         autor = 'Rafael Clemente'          editorial = 'Cúpula'              idioma = 'S' paginas = 328 precio = '18.52'  moneda = 'EUR' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000015' bi_categ = 'E' titulo = 'Mecánica de Materiales'                 autor = 'John T. DeWolf'           editorial = 'MCGRAW-HILL'         idioma = 'E' paginas = 635 precio = '62.51'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000016' bi_categ = 'E' titulo = 'Fundamentos de electricidad'            autor = 'Jorge López Crespo'       editorial = 'Thomson Paraninfo'   idioma = 'S' paginas = 334 precio = '30.4'   moneda = 'EUR' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000017' bi_categ = 'F' titulo = 'La popularización del deporte'          autor = 'García Ferrando, Manuel'  editorial = 'Centro de Investig.' idioma = 'S' paginas = 180 precio = '19'     moneda = 'EUR' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000018' bi_categ = 'F' titulo = 'Ideal democrático y bienestar personal' autor = 'Llopis Goig, Ramón'       editorial = 'Centro de Investig.' idioma = 'S' paginas = 268 precio = '9.5'    moneda = 'EUR' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000019' bi_categ = 'F' titulo = '14 canciones. El viaje del elefante'    autor = 'Pastor, Luis'             editorial = 'El Ángel Caído'      idioma = 'S' paginas = 48  precio = '21'     moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000020' bi_categ = 'F' titulo = '4 notas de jazz'                        autor = 'Fernández Martínez, Gema' editorial = 'ECU'                 idioma = 'S' paginas = 25  precio = '10'     moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000021' bi_categ = 'F' titulo = 'A mil besos. Canciones y poemas'        autor = 'Cohen, Leonard'           editorial = 'Visor Libros'        idioma = 'E' paginas = 250 precio = '16'     moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000022' bi_categ = 'G' titulo = 'Nada tan amargo: Seis poetas Inglesas'  autor = 'VV.A.A.'                  editorial = 'DESVELO EDICIONES'   idioma = 'S' paginas = 208 precio = '17.1'   moneda = 'EUR' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000023' bi_categ = 'G' titulo = 'Poemas'                                 autor = 'Maria Zambrano'           editorial = 'S.L. EDICIONES'      idioma = 'S' paginas = 212 precio = '15.1'   moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000024' bi_categ = 'H' titulo = 'Atlas de los exploradores'              autor = 'VV.A.A.'                  editorial = 'PLANETA'             idioma = 'S' paginas = 320 precio = '34.15'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000025' bi_categ = 'H' titulo = 'El dominio mundial'                     autor = 'Pedro Baños'              editorial = 'Ariel'               idioma = 'S' paginas = 368 precio = '22.7'   moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000026' bi_categ = 'H' titulo = 'Historia Latinoamericana 1700-2005' autor = 'Teresa Eggers Brass'          editorial = 'EDITORIAL MAIPUE'    idioma = 'S' paginas = 620 precio = '11.39'  moneda = 'USD' formato =
'E' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000071' bi_categ = 'G' titulo = 'Los heraldos negros' autor = 'César Vallejo'                               editorial = 'Peisa'               idioma = 'S' paginas = 128 precio = '23'     moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' )
                         ( id_libros = '000072' bi_categ = 'G' titulo = 'Aves sin nido' autor = 'Clorinda Matto de Turner'                          editorial = 'Visor Libros'        idioma = 'S' paginas = 356 precio = '34.15'  moneda = 'USD' formato =
'P' url = 'https://www.eltinteroeditorial.com/wp-content/uploads/2020/03/Tiempo-carretera.jpg' ) ).

  DELETE FROM ztb_libros_0631.
  INSERT ztb_libros_0631 FROM TABLE @lt_libros.
  out->write( sy-dbcnt ).

  ENDMETHOD.
ENDCLASS.
