#Manipulacion de la BD

# 1-Muestre los salarios de los profesores ordenados por categoría.
SELECT sal_prof FROM profesor order by cate_prof;
  
# 2-Muestre los cursos cuyo valor sea mayor a $500.000.
SELECT * FROM curso where valor_cur > 500000;
  
# 3-Cuente el número de estudiantes cuya edad sea mayor a 22.
SELECT COUNT(*) FROM estudiante where edad_est > 22;
  
# 4-Muestre el nombre y la edad del estudiante más joven.
SELECT nom_est, edad_est FROM estudiante WHERE edad_est = (SELECT MIN(edad_est) FROM estudiante);

SELECT nom_est, edad_est FROM estudiante ORDER BY edad_est ASC LIMIT 1;
  
# 5-Calcule el valor promedio de los cursos cuyas horas sean mayores a 40.
SELECT AVG(valor_cur) FROM curso WHERE horas_cur > 40;
  
# 6-Obtener el sueldo promedio de los profesores de la categoría 1.
SELECT AVG(sal_prof) FROM profesor where cat_prof = 1;
  
# 7-Muestre todos los campos de la tabla curso en orden ascendente según el valor.
SELECT * FROM curso ORDER BY valor_cur ASC;
  
# 8-Muestre el nombre del profesor con menor sueldo.
SELECT nom_prof, sal_prof FROM profesor WHERE sal_prof = (SELECT MIN(sal_prof) FROM profesor);

# 9-Visualizar todos los estudiantes (código y nombre) que iniciaron cursos

  
# 10-el 01/02/2011, del curso debe mostrarse el nombre, las horas y el valor.
  
# 11-Visualice los profesores cuyo sueldo este entre $500.000 y $700.000.
  
# 12-Visualizar el nombre, apellido y dirección de todos aquellos clientes que hayan realizado un pedido el día 25 /02/2012.
  
# 13-Listar todos los pedidos realizados incluyendo el nombre del articulo.
  
# 14-Visualizar los clientes que cumplen años en marzo.
  
# 15-Visualizar los datos del pedido 1, incluyendo el nombre del cliente, la dirección del mismo, el nombre y el valor de los artículos que tiene dicho pedido.
  
# 16-Visualizar el nombre del cliente, la fecha y el valor del pedido más costoso.
  
# 17-Mostrar cuantos artículos se tienen de cada editorial.
  
# 18-Mostrar los pedidos con los respectivos artículos(código, nombre, valor y cantidad pedida).
  
# 19-Visualizar todos los clientes organizados por apellido.
  
# 20-Visualizar todos los artículos organizados por autor.
  
# 21-Visualizar los pedidos que se han realizado para el articulo con id 2, el listado debe mostrar el nombre y dirección del cliente, el respectivo número de pedido y la cantidad solicitada.
  
# 22-Visualizar los datos de las empresas fundadas entre el año 1991 y 1998.
  
# 23-Listar los todos datos de los automotores cuya póliza expira en octubre de 2013, este reporte debe visualizar la placa, el modelo, la marca, número de pasajeros, cilindraje nombre de automotor, el valor de la póliza y el valor asegurado.
  
# 24-Visualizar los datos de los incidentes ocurridos el 30 de septiembre de 2012, con su respectivo número de póliza, fecha de inicio de la póliza, valor asegurado y valor de la póliza.
  
# 25-Visualizar los datos de los incidentes que han tenido un(1) herido, este reporte debe visualizar la placa del automotor, con los respectivos datos de la póliza como son fecha de inicio, valor, estado y valor asegurado.
  
# 26-Visualizar todos los datos de la póliza más costosa.
  
# 27-Visualizar los incidentes con el mínimo número de autos involucrados, de este incidente visualizar el estado de la póliza y el valor asegurado.
  
# 28-Visualizar los incidentes del vehículo con placas " FLL420", este reporte debe visualizar la fecha, el lugar, la cantidad de heridos del incidente, la fecha de inicio la de expiración de la póliza y el valor asegurado.
  
# 29-Visualizar los datos de la empresa con nit 899999999-5.
  
# 30-Visualizar los datos de la póliza cuyo valor asegurado es el más costoso, este reporte además de visualizar todos los datos de la póliza, debe presentar todos los datos del vehículo que tiene dicha póliza.
  
# 31-Visualizar los datos de las pólizas de los automotores tipo 1, este reporte debe incluir placa, marca, modelo, cilindraje del vehículo junto con la fecha de inicio, de finalización y estado de la póliza.
  
