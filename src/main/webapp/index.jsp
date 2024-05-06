<%-- 
    Document   : index
    Created on : 2 may. 2024, 16:55:35
    Author     : Iván
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            margin-top: 0;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Crear usuario</h2>
    <form id="usuarioForm" action="UsuarioServlet" method="post">
        <div class="form-group">
            <label for="identificacion">Identificación:</label>
            <input type="text" id="identificacion" name="identificacion" required>
        </div>
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombres" required>
        </div>
        <div class="form-group">
            <label for="apellidos">Apellidos:</label>
            <input type="text" id="apellidos" name="apellidos" required>
        </div>
        <div class="form-group">
            <label for="telefono">Teléfono:</label>
            <input type="tel" id="telefono" name="telefono">
        </div>
        <div class="form-group">
            <button type="submit">Enviar</button>
        </div>
        <hr>
    </form>
    <h2>Ver lista de usuarios</h2>
    <form id="usuariosListForm" action="UsuarioServlet" method="get">
        <div class="form-group">
            <button type="submit">Mostrar usuarios</button>
        </div>
        <hr>
    </form>
    <h2>Eliminar usuario</h2>
    <form id="FormEliminar" action="SvEliminar" method="post">
        <div class="form-group">
            <label for="identificacionE">Identificación a eliminar: </label>
            <input type="text" id="identificacionE" name="identificacionE" required>
        </div>
        <div class="form-group">
            <button type="submit">Eliminar usuario</button>
        </div>
        <hr>
    </form>
    <h2>Editar usuario</h2>
    <form id="FormEdi" action="SvEditar" method="get">
        <div class="form-group">
            <label for="identificacionEdi">Identificación a editar: </label>
            <input type="text" id="identificacionEdi" name="identificacionEdi" required>
        </div>
        <div class="form-group">
            <button type="submit">Editar usuario</button>
        </div>
        <hr>
    </form>
</div>

</body>
</html>

