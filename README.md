# README

# Prerequisites

* Rails 7.0.5

* Ruby 3.1.2

* Postgres 1.1

Clone the repo https://github.com/JulianRodriguez29/admin_eventos.git

Una vez que tenga la copia, ejecute los siguientes comandos dentro del directorio:

Ejecute el bundle install para instalar todas las gemas del proyecto Configure el nombre de usuario y la contraseña en config/database.yml Ejecute los siguientes comandos para crear las bases de datos, ejecute las migraciones iniciales rails db:create && rails db:migrate

Abrimos la consola para agregar unos registros, aquí les dejo unos ejemplos. 

```ruby
Evento.create(nombre: "Taller de Fotografía", descripcion: "Un taller práctico para aprender técnicas de fotografía.", fecha: Date.parse("2023-07-05"), imagen_url:"https://lacuartapared.com.mx/wp-content/uploads/2016/10/canon-989727-e1500506508230-1.jpg") 
Evento.create(nombre: "Feria de Alimentos", descripcion: "Una feria que presenta una variedad de deliciosos alimentos de diferentes culturas.", fecha: Date.parse("2023-06-30"), imagen_url: "https://buenosaires.gob.ar/sites/default/files/media/image/2020/12/09/f1f4e699a6d95780cf6927a468cd829c69b8879c.jpg") 
Evento.create(nombre: "Concierto de Rock", descripcion: "Un concierto en vivo de bandas de rock famosas.", fecha: Date.parse("2023-06-25"), imagen_url: "https://www.sopitas.com/wp-content/uploads/2020/03/GettyImages-130308428-scaled.jpg") 
Evento.create(nombre: "Exposición de Arte Moderno", descripcion: "Una exposición que muestra obras de arte moderno de artistas locales.", fecha: Date.parse("2023-06-20"), imagen_url:"https://media.mundoarti.com/foto_noticia_grande/foto-noticia/71.jpeg") 
Evento.create(nombre: "Conferencia de Tecnología", descripcion: "Una conferencia sobre las últimas tendencias tecnológicas.", fecha: Date.parse("2023-06-15"), imgane_url:"https://colaborativo.net/wp-content/uploads/2018/06/rise-conference-1024x683.jpg") 
Evento.create(nombre: "Danza Folklorica", descripcion: "Una manifestación que realizan un grupo de personas llamados danzantes.", fecha: Date.parse("2023-07-03"), imagen_url: "https://vivesantarosa.com.mx/wp-content/uploads/2019/08/Grupo-de-Danza-Folkl%C3%B3rica-Cultura-y-Tradici%C3%B3n-Mexicana-Nota01-01-imagen-destacada.jpg")
```

Es necesario instalar las dependencisa que tailwind necesita para que se pueda ver el flash de manera correcta, eso se logra con el comando ```rails tailwindcss:install```

Ahora ejecutamos el siguiente comando ```bin/importmap pin tailwindcss-stimulus-components``` esto con el propósito importar y utilizar los componentes de StimulusJS en una aplicación Rails que utiliza TailwindCSS.

Una vez poblada la base de datos con los ejemplos, ya podemos ejecutar el servidor con el comando ```bin/dev.```

Ejecute el siguiente comando bin/webpack-dev-server para habilitar la recarga en vivo. Vaya a su host local http://127.0.0.1:3000

# Información general

Esta es una aplicacion sencilla para realizar reservaciones a eventos. Cuando el usuario se registra correctamente a un evento le llega un correo de confirmacion al evento. Hace uso de bootstrap para los estilos de la aplicación y se le añadio tailwind para manejar el flash y darle estilos.


# Screenshots

La página principal del proyecto donde se despliegan los eventos que han sido incluidos en la base de datos.

![Screenshot](./screenshots/index.png)

Una vez que el usuario selecciona el evento al que se quiere registrar se le al evento en particular

![Screenshot](./screenshots/evento.png)

Cuando el usuario se quiere registrar al evento le aparace un modal para ingresar su información.

![Screenshot](./screenshots/modal.png)

Cuando el usuario se ha registrado correctamente le aparace una notifiacion satisfactoria y es redirigido a la página principal.

![Screenshot](./screenshots/flash_de_confirmacion.png)

Después se le manda un correo con el resumen de su reservación.

![Screenshot](./screenshots/correo_de_confirmacion.png)

Validación para que todos los campos sean obligatorios.

![Screenshot](./screenshots/validacion.png)

