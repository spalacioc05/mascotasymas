<%-- 
    Document   : gestionarProductos
    Created on : 22/11/2024, 6:50:30 p. m.
    Author     : spala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestionar productos - MASCOTAS & MÁS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/gestionarProductos.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">MASCOTAS & MÁS - ADMININISTRADOR</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="gestionarProductos.jsp">Productos</a></li>
                            <!-- <li class="nav-item"><a class="nav-link" href="">Facturas</a></li>
                            <li class="nav-item"><a class="nav-link" href="">Facturar</a></li> -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownPerfil" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="bi bi-person"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPerfil">
                                    <li><a class="dropdown-item" href="perfilAdmin.jsp">Perfil</a></li>
                                    <li><a class="dropdown-item" href="index.jsp">Vista de Usuario</a></li>
                                    <li><a class="dropdown-item" href="login.jsp">Iniciar sesión</a></li>
                                    <li><a class="dropdown-item">Cerrar sesión</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Page Content-->
            <section class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-6">
                            <div class="text-center mb-5">
                                <h1 class="fw-bolder">Gestionar productos</h1>
                                <p class="lead fw-normal text-muted mb-0">enunciado.</p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Botones de acción -->
                    <div class="mb-3 text-end">
                        <button class="btn btn-warning" id="editarProductoBtn" style="display: none;" data-bs-toggle="modal" data-bs-target="#editarProductoModal">Editar</button>
                        <button class="btn btn-danger" id="eliminarProductoBtn" style="display: none;">Eliminar</button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarProductoModal">Agregar</button>
                    </div>
                    <!-- Campo de búsqueda -->
                    <div class="mb-3">
                        <input type="text" class="form-control" id="buscarProducto" placeholder="Buscar...">
                    </div>
                    <!-- Tabla de productos-->
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="selectAll"></th>
                                    <th>SKU</th>
                                    <th>Nombre</th>
                                    <th>Descripción</th>
                                    <th>Código de barras</th>
                                    <th>Categoría</th>
                                    <th>Marca</th>
                                    <th>Proveedor</th>
                                    <th>Cantidad disponible</th>
                                    <th>Precio unitario</th>
                                    <th>% Impuesto</th>
                                    <th>Impuesto</th>
                                    <th>Precio de venta</th>
                                    <th>Peso</th>
                                    <th>Imagen</th>
                                </tr>
                            </thead>
                            <tbody id="productosTabla">
                                <tr>
                                    <td><input type="checkbox" class="selectRow"></td>
                                    <td>12345</td>
                                    <td>Producto 1</td>
                                    <td>Descripción del producto 1</td>
                                    <td>1234567890123</td>
                                    <td>Categoría 1</td>
                                    <td>Marca 1</td>
                                    <td>Proveedor 1</td>
                                    <td>100</td>
                                    <td>$10.00</td>
                                    <td>10%</td>
                                    <td>$1.00</td>
                                    <td>$11.00</td>
                                    <td>1kg</td>
                                    <td><img src="ruta/a/imagen1.jpg" alt="Imagen del producto 1" width="50"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="selectRow"></td>
                                    <td>12346</td>
                                    <td>Producto 2</td>
                                    <td>Descripción del producto 2</td>
                                    <td>1234567890124</td>
                                    <td>Categoría 2</td>
                                    <td>Marca 2</td>
                                    <td>Proveedor 2</td>
                                    <td>200</td>
                                    <td>$20.00</td>
                                    <td>15%</td>
                                    <td>$3.00</td>
                                    <td>$23.00</td>
                                    <td>2kg</td>
                                    <td><img src="ruta/a/imagen2.jpg" alt="Imagen del producto 2" width="50"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="selectRow"></td>
                                    <td>12347</td>
                                    <td>Producto 3</td>
                                    <td>Descripción del producto 3</td>
                                    <td>1234567890125</td>
                                    <td>Categoría 3</td>
                                    <td>Marca 3</td>
                                    <td>Proveedor 3</td>
                                    <td>150</td>
                                    <td>$15.00</td>
                                    <td>12%</td>
                                    <td>$1.80</td>
                                    <td>$16.80</td>
                                    <td>1.5kg</td>
                                    <td><img src="ruta/a/imagen3.jpg" alt="Imagen del producto 3" width="50"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="selectRow"></td>
                                    <td>12348</td>
                                    <td>Producto 4</td>
                                    <td>Descripción del producto 4</td>
                                    <td>1234567890126</td>
                                    <td>Categoría 4</td>
                                    <td>Marca 4</td>
                                    <td>Proveedor 4</td>
                                    <td>300</td>
                                    <td>$30.00</td>
                                    <td>8%</td>
                                    <td>$2.40</td>
                                    <td>$32.40</td>
                                    <td>3kg</td>
                                    <td><img src="ruta/a/imagen4.jpg" alt="Imagen del producto 4" width="50"></td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="selectRow"></td>
                                    <td>12349</td>
                                    <td>Producto 5</td>
                                    <td>Descripción del producto 5</td>
                                    <td>1234567890127</td>
                                    <td>Categoría 5</td>
                                    <td>Marca 5</td>
                                    <td>Proveedor 5</td>
                                    <td>50</td>
                                    <td>$5.00</td>
                                    <td>5%</td>
                                    <td>$0.25</td>
                                    <td>$5.25</td>
                                    <td>0.5kg</td>
                                    <td><img src="ruta/a/imagen5.jpg" alt="Imagen del producto 5" width="50"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </main>
        <!-- Modal para agregar producto -->
        <div class="modal fade" id="agregarProductoModal" tabindex="-1" aria-labelledby="agregarProductoModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="agregarProductoModalLabel">Agregar Producto</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="agregarProductoForm">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="sku" class="form-label">SKU</label>
                                        <input type="text" class="form-control" id="sku" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="nombre" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" id="nombre" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="descripcion" class="form-label">Descripción</label>
                                        <input type="text" class="form-control" id="descripcion" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="codigoBarras" class="form-label">Código de barras</label>
                                        <input type="text" class="form-control" id="codigoBarras" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="categoria" class="form-label">Categoría</label>
                                        <input type="text" class="form-control" id="categoria" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="marca" class="form-label">Marca</label>
                                        <input type="text" class="form-control" id="marca" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="proveedor" class="form-label">Proveedor</label>
                                        <input type="text" class="form-control" id="proveedor" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="cantidadDisponible" class="form-label">Cantidad disponible</label>
                                        <input type="number" class="form-control" id="cantidadDisponible" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="precioUnitario" class="form-label">Precio unitario</label>
                                        <input type="number" step="0.01" class="form-control" id="precioUnitario">
                                    </div>
                                    <div class="mb-3">
                                        <label for="porcentajeImpuesto" class="form-label">% Impuesto</label>
                                        <input type="number" step="0.01" class="form-control" id="porcentajeImpuesto" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="impuesto" class="form-label">Impuesto</label>
                                        <input type="number" step="0.01" class="form-control" id="impuesto" readonly>
                                    </div>
                                    <div class="mb-3">
                                        <label for="precioVenta" class="form-label">Precio de venta</label>
                                        <input type="number" step="0.01" class="form-control" id="precioVenta">
                                    </div>
                                    <div class="mb-3">
                                        <label for="peso" class="form-label">Peso</label>
                                        <input type="text" class="form-control" id="peso" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="imagen" class="form-label">Imagen</label>
                                        <input type="file" class="form-control" id="imagen" accept="image/*" required>
                                        <img id="imagenPreview" src="#" alt="Previsualización de la imagen" class="img-thumbnail mt-2" style="display: none; max-width: 100px;">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Modal para editar producto -->
        <div class="modal fade" id="editarProductoModal" tabindex="-1" aria-labelledby="editarProductoModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editarProductoModalLabel">Editar Producto</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form id="editarProductoForm">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="editarSku" class="form-label">SKU</label>
                                        <input type="text" class="form-control" id="editarSku" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarNombre" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" id="editarNombre" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarDescripcion" class="form-label">Descripción</label>
                                        <input type="text" class="form-control" id="editarDescripcion" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarCodigoBarras" class="form-label">Código de barras</label>
                                        <input type="text" class="form-control" id="editarCodigoBarras" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarCategoria" class="form-label">Categoría</label>
                                        <input type="text" class="form-control" id="editarCategoria" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarMarca" class="form-label">Marca</label>
                                        <input type="text" class="form-control" id="editarMarca" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarProveedor" class="form-label">Proveedor</label>
                                        <input type="text" class="form-control" id="editarProveedor" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="editarCantidadDisponible" class="form-label">Cantidad disponible</label>
                                        <input type="number" class="form-control" id="editarCantidadDisponible" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarPrecioUnitario" class="form-label">Precio unitario</label>
                                        <input type="number" step="0.01" class="form-control" id="editarPrecioUnitario">
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarPorcentajeImpuesto" class="form-label">% Impuesto</label>
                                        <input type="number" step="0.01" class="form-control" id="editarPorcentajeImpuesto" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarImpuesto" class="form-label">Impuesto</label>
                                        <input type="number" step="0.01" class="form-control" id="editarImpuesto" readonly>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarPrecioVenta" class="form-label">Precio de venta</label>
                                        <input type="number" step="0.01" class="form-control" id="editarPrecioVenta">
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarPeso" class="form-label">Peso</label>
                                        <input type="text" class="form-control" id="editarPeso" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="editarImagen" class="form-label">Imagen</label>
                                        <input type="file" class="form-control" id="editarImagen" accept="image/*" required>
                                        <img id="editarImagenPreview" src="#" alt="Previsualización de la imagen" class="img-thumbnail mt-2" style="display: none; max-width: 100px;">
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; MASCOTAS & MÁS 2023</div></div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="js/agregarProducto.js"></script>
        <script src="js/editarProducto.js"></script>
        <script src="js/eliminarProducto.js"></script>
        <script src="js/buscarProducto.js"></script>
        <script src="js/imagenPreview.js"></script>
    </body>
</html>
