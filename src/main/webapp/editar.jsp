<%-- 
    Document   : editar
    Created on : 6 may. 2024, 12:39:58
    Author     : Iván
--%>

<%@page import="Logica.Usuario"%>
<%@page import="Logica.Usuario"%>
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
            background-color: #f0f0f0;
            padding: 20px;
        }

        .container {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Usuario a editar</h2>
    <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>
    <form action="SvEditar" method="post">
        <div class="form-group">
            <label for="identificacion">Identificación:</label>
            <input type="text" name="identificacion" value=<%=usu.getIdentificacion()%>>
        </div>
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombres" value=<%=usu.getNombres()%>>
        </div>
        <div class="form-group">
            <label for="apellidos">Apellidos:</label>
            <input type="text" name="apellidos" value=<%=usu.getApellidos()%>>
        </div>
        <div class="form-group">
            <label for="telefono">Teléfono:</label>
            <input type="tel" name="telefono" value=<%=usu.getTelefono()%>>
        </div>
        <div class="form-group">
            <button type="submit">Enviar</button>
        </div>
        <hr>
        <hr>
    </form>

</div>

</body>
</html>
