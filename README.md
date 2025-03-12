# Proyecto Full Stack con .NET, MySQL y Frontend en HTML, CSS y JavaScript
## form-html-css-js-__-backend-net-__-mysql
![image](https://github.com/user-attachments/assets/d93ef2a7-cda8-4754-a814-0e879422790d)

## Descripción
Este proyecto es una aplicación full stack que incluye:
- **Backend**: API REST en .NET 6/8.
- **Base de Datos**: MySQL para almacenar información.
- **Frontend**: Interfaz en HTML, CSS y JavaScript.

## Requisitos Previos
Antes de ejecutar el proyecto, asegúrate de tener instalados:
- [Visual Studio 2022](https://visualstudio.microsoft.com/) con .NET 6/8.
- [MySQL Server](https://dev.mysql.com/downloads/mysql/).
- [Visual Studio Code](https://code.visualstudio.com/) para el frontend.

  ## Configuración del Backend
1. Abre el proyecto en **Visual Studio 2022**.
2. Configura la cadena de conexión en `appsettings.json`:
    ```json
    "ConnectionStrings": {
      "DefaultConnection": "Server=localhost;Database=nombre_bd;User=root;Password=tu_password;"
    }
    ```
3. Instala los paquetes necesarios con:
    ```sh
    dotnet add package MySql.Data
    dotnet add package Microsoft.EntityFrameworkCore
    dotnet add package Microsoft.EntityFrameworkCore.Design
    ```
4. Aplica las migraciones:
    ```sh
    dotnet ef migrations add InitialCreate
    dotnet ef database update
    ```
5. Ejecuta la API con:
    ```sh
    dotnet run
    ```

## Configuración de la Base de Datos
Ejecuta el siguiente script en MySQL para crear la tabla y poblarla con datos de prueba:
```sql
CREATE TABLE datos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    col1 VARCHAR(255), col2 VARCHAR(255), col3 VARCHAR(255), col4 VARCHAR(255),
    col5 VARCHAR(255), col6 VARCHAR(255), col7 VARCHAR(255), col8 VARCHAR(255),
    col9 VARCHAR(255), col10 VARCHAR(255)
);

INSERT INTO datos (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10) VALUES
('Dato1_1', 'Dato1_2', 'Dato1_3', 'Dato1_4', 'Dato1_5', 'Dato1_6', 'Dato1_7', 'Dato1_8', 'Dato1_9', 'Dato1_10'),
-- Repetir hasta 55 filas
('Dato55_1', 'Dato55_2', 'Dato55_3', 'Dato55_4', 'Dato55_5', 'Dato55_6', 'Dato55_7', 'Dato55_8', 'Dato55_9', 'Dato55_10');
```

## Configuración del Frontend
1. Abre la carpeta del frontend en **Visual Studio Code**.
2. Asegúrate de que el archivo `config.js` tenga la URL de la API:
    ```js
    const API_URL = "https://localhost:7090/api/datos";
    ```
3. Ejecuta un servidor local con Live Server o simplemente abre `index.html` en el navegador.

## Solución de Problemas (CORS)
Si el frontend no puede acceder al backend debido a CORS, en `Program.cs` de la API agrega:
```csharp
var MyAllowSpecificOrigins = "_myAllowSpecificOrigins";

builder.Services.AddCors(options =>
{
    options.AddPolicy(MyAllowSpecificOrigins,
        policy => policy.WithOrigins("http://localhost:5500")
                        .AllowAnyMethod()
                        .AllowAnyHeader());
});

var app = builder.Build();
app.UseCors(MyAllowSpecificOrigins);
app.UseAuthorization();
```

## Uso
- **Consultar datos**: `GET /api/datos`
- **Insertar datos**: `POST /api/datos`
- **Modificar datos**: `PUT /api/datos/{id}`

## Contribuciones
Si deseas mejorar la aplicación, puedes hacer un fork del repositorio y enviar un pull request.

## Licencia
Este proyecto está bajo la licencia MIT.

## frontend html-css-js
![image](https://github.com/user-attachments/assets/b07d0b7c-e8ab-4115-9e41-b391d6faf141)

## backend form - api core
![image](https://github.com/user-attachments/assets/3fb5f21a-09d2-4063-ab25-5a69aef13165)

## get api datos - 200 ok
![image](https://github.com/user-attachments/assets/8e085901-a85d-4cf1-a4d6-4319dda36f69)

![image](https://github.com/user-attachments/assets/1a709d02-2f22-4b51-b370-abb9b343614e)

![image](https://github.com/user-attachments/assets/ba809e17-7cdd-4b93-938a-e3ddb6c60a32)

## db gestion_datos
![image](https://github.com/user-attachments/assets/fb002377-1e3a-41fa-ad84-fccf8978143d)

## cors policy
![image](https://github.com/user-attachments/assets/e271c24b-71f6-446a-ab91-724b54699c89)

## frontend
![image](https://github.com/user-attachments/assets/087a9beb-b9bb-454d-bf3e-4ad8666f5610)

## frontend insercion ok
![image](https://github.com/user-attachments/assets/81fb3766-98f8-44f9-b8f2-3e04ef5fa735)

![image](https://github.com/user-attachments/assets/4758d78e-6b9d-41ba-9f8e-46a788ab8bbd)







