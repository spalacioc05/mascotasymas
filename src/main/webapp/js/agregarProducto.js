/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.getElementById('agregarProductoForm').addEventListener('submit', function(event) {
    event.preventDefault();

    // Obtener los valores del formulario
    const sku = document.getElementById('sku').value;
    const nombre = document.getElementById('nombre').value;
    const descripcion = document.getElementById('descripcion').value;
    const codigoBarras = document.getElementById('codigoBarras').value;
    const categoria = document.getElementById('categoria').value;
    const marca = document.getElementById('marca').value;
    const proveedor = document.getElementById('proveedor').value;
    const cantidadDisponible = document.getElementById('cantidadDisponible').value;
    const precioUnitario = document.getElementById('precioUnitario').value;
    const porcentajeImpuesto = document.getElementById('porcentajeImpuesto').value;
    const impuesto = document.getElementById('impuesto').value;
    const precioVenta = document.getElementById('precioVenta').value;
    const peso = document.getElementById('peso').value;
    const imagen = document.getElementById('imagen').value;

    // Crear una nueva fila en la tabla
    const nuevaFila = `
        <tr>
            <td>${sku}</td>
            <td>${nombre}</td>
            <td>${descripcion}</td>
            <td>${codigoBarras}</td>
            <td>${categoria}</td>
            <td>${marca}</td>
            <td>${proveedor}</td>
            <td>${cantidadDisponible}</td>
            <td>$${precioUnitario}</td>
            <td>${porcentajeImpuesto}%</td>
            <td>$${impuesto}</td>
            <td>$${precioVenta}</td>
            <td>${peso}</td>
            <td><img src="${imagen}" alt="Imagen del producto" width="50"></td>
        </tr>
    `;

    // Agregar la nueva fila a la tabla
    document.getElementById('productosTabla').insertAdjacentHTML('beforeend', nuevaFila);

    // Cerrar el modal
    const modal = bootstrap.Modal.getInstance(document.getElementById('agregarProductoModal'));
    modal.hide();

    // Limpiar el formulario
    document.getElementById('agregarProductoForm').reset();
});

function calcularValores() {
    const precioUnitario = parseFloat(document.getElementById('precioUnitario').value) || 0;
    const porcentajeImpuesto = parseFloat(document.getElementById('porcentajeImpuesto').value) || 0;
    const precioVenta = parseFloat(document.getElementById('precioVenta').value) || 0;

    if (precioUnitario && porcentajeImpuesto) {
        const impuesto = (precioUnitario * porcentajeImpuesto) / 100;
        const precioVentaCalculado = precioUnitario + impuesto;
        document.getElementById('impuesto').value = impuesto.toFixed(2);
        document.getElementById('precioVenta').value = precioVentaCalculado.toFixed(2);
    } else if (precioVenta && porcentajeImpuesto) {
        const precioUnitarioCalculado = precioVenta / (1 + porcentajeImpuesto / 100);
        const impuesto = precioVenta - precioUnitarioCalculado;
        document.getElementById('precioUnitario').value = precioUnitarioCalculado.toFixed(2);
        document.getElementById('impuesto').value = impuesto.toFixed(2);
    }
}

document.getElementById('precioUnitario').addEventListener('input', calcularValores);
document.getElementById('porcentajeImpuesto').addEventListener('input', calcularValores);
document.getElementById('precioVenta').addEventListener('input', calcularValores);
