# JavaWeb
Un trabajo realizado como practica utilizando JavaWeb y base de datos MySQL

La carpeta de Mensajes son los archivos del paquete mensajes el cual contiene  tanto los metodos de conexion con la DB como los objetos y metodos.
Luego la carpeta Web tiene los estilos CSS los archivos HTML y las funcionalidades aplicadas a esas secciones de HTML 

La pagina web se basa en la lectura , escritura , edicion y eliminacion de una Data Base mediante el uso de una pagina web.
El enfoque principal de la parte visible es una interfaz simple que muestra los mensajes en orden de su creacion

![image](https://user-images.githubusercontent.com/108084824/192260809-0bdb8993-00b5-406d-b222-8047f2891e83.png)

Aqui podemos obervar la primera parte la cual conecta a la insercion en la Data Base
![image](https://user-images.githubusercontent.com/108084824/192260861-e7d764ea-747c-4818-a413-626078a6296d.png)

Primero tome el trabajo de crear una base de datos MySQL la cual conecte a mi proyecto web para luego poder modificarla con el sistema CRUD (Create, Read, Update, Delete) 

![image](https://user-images.githubusercontent.com/108084824/192261578-afc97b19-41a7-46fa-b32a-b73a424a9559.png)

Luego cree dentro de Java un objeto llamado Mensaje, utilize la sobrecarga de objetos con diferentes Getters y Setters y cree los metodos para el sistema CRUD.

![image](https://user-images.githubusercontent.com/108084824/192262182-2cde3d1e-3b01-4039-b6cd-c3d5de5eec59.png)

(Metodos)
![image](https://user-images.githubusercontent.com/108084824/192263430-4630d621-08d1-459a-bc3b-a6511e72a26a.png)

Luego los utilize dentro de un archivo JSP en el cual combine mi programacion dentro de Java con el uso de HTML y CSS.

![image](https://user-images.githubusercontent.com/108084824/192262746-594559de-0813-4240-b546-469e30d6b479.png)

Finalizando el proyecto cree una redireccion hacia la edicion del mensaje y su eliminacion el cual envia y lee los datos mediante un FORM y se conecta a mi Data Base el cual luego de efectuar un Update redirecciona al usuario a la pagina principal

![image](https://user-images.githubusercontent.com/108084824/192262998-f5e3a343-ed22-43ef-902e-45b15d0a805b.png)

