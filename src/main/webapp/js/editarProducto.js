/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// editarProducto.js
document.addEventListener('DOMContentLoaded', () => {
    const productosTabla = document.getElementById('productosTabla');
    const editarProductoBtn = document.getElementById('editarProductoBtn');
    const eliminarProductoBtn = document.getElementById('eliminarProductoBtn');
    const editarProductoForm = document.getElementById('editarProductoForm');
    const selectAllCheckbox = document.getElementById('selectAll');
    window.selectedRows = [];

    productosTabla.addEventListener('click', (event) => {
        if (event.target.classList.contains('selectRow')) {
            const row = event.target.closest('tr');
            row.classList.toggle('selected');
            updateSelectedRows(row);
            updateButtons();
        }
    });

    selectAllCheckbox.addEventListener('change', () => {
        const checkboxes = productosTabla.querySelectorAll('.selectRow');
        checkboxes.forEach(checkbox => {
            checkbox.checked = selectAllCheckbox.checked;
            const row = checkbox.closest('tr');
            if (selectAllCheckbox.checked) {
                row.classList.add('selected');
                if (!window.selectedRows.includes(row.cells[1].innerText)) {
                    window.selectedRows.push(row.cells[1].innerText);
                }
            } else {
                row.classList.remove('selected');
                window.selectedRows = [];
            }
        });
        updateButtons();
    });

    function updateSelectedRows(row) {
        const sku = row.cells[1].innerText;
        if (row.classList.contains('selected')) {
            window.selectedRows.push(sku);
        } else {
            window.selectedRows = window.selectedRows.filter(item => item !== sku);
        }
    }

    function updateButtons() {
        if (window.selectedRows.length === 1) {
            editarProductoBtn.style.display = 'inline-block';
            eliminarProductoBtn.style.display = 'inline-block';
        } else if (window.selectedRows.length > 1) {
            editarProductoBtn.style.display = 'none';
            eliminarProductoBtn.style.display = 'inline-block';
        } else {
            editarProductoBtn.style.display = 'none';
            eliminarProductoBtn.style.display = 'none';
        }
    }

    editarProductoBtn.addEventListener('click', () => {
        const sku = window.selectedRows[0];
        const row = Array.from(productosTabla.rows).find(row => row.cells[1].innerText === sku);
        if (row) {
            document.getElementById('editarSku').value = row.cells[1].innerText;
            document.getElementById('editarNombre').value = row.cells[2].innerText;
            document.getElementById('editarDescripcion').value = row.cells[3].innerText;
            document.getElementById('editarCodigoBarras').value = row.cells[4].innerText;
            document.getElementById('editarCategoria').value = row.cells[5].innerText;
            document.getElementById('editarMarca').value = row.cells[6].innerText;
            document.getElementById('editarProveedor').value = row.cells[7].innerText;
            document.getElementById('editarCantidadDisponible').value = row.cells[8].innerText;
            document.getElementById('editarPrecioUnitario').value = row.cells[9].innerText.replace('$', '');
            document.getElementById('editarPorcentajeImpuesto').value = row.cells[10].innerText.replace('%', '');
            document.getElementById('editarImpuesto').value = row.cells[11].innerText.replace('$', '');
            document.getElementById('editarPrecioVenta').value = row.cells[12].innerText.replace('$', '');
            document.getElementById('editarPeso').value = row.cells[13].innerText;
            document.getElementById('editarImagenPreview').src = row.cells[14].querySelector('img').src;
            document.getElementById('editarImagenPreview').style.display = 'block';
        }
    });

    editarProductoForm.addEventListener('submit', (event) => {
        event.preventDefault();
        const sku = document.getElementById('editarSku').value;
        const row = Array.from(productosTabla.rows).find(row => row.cells[1].innerText === sku);
        if (row) {
            row.cells[2].innerText = document.getElementById('editarNombre').value;
            row.cells[3].innerText = document.getElementById('editarDescripcion').value;
            row.cells[4].innerText = document.getElementById('editarCodigoBarras').value;
            row.cells[5].innerText = document.getElementById('editarCategoria').value;
            row.cells[6].innerText = document.getElementById('editarMarca').value;
            row.cells[7].innerText = document.getElementById('editarProveedor').value;
            row.cells[8].innerText = document.getElementById('editarCantidadDisponible').value;
            row.cells[9].innerText = `$${document.getElementById('editarPrecioUnitario').value}`;
            row.cells[10].innerText = `${document.getElementById('editarPorcentajeImpuesto').value}%`;
            row.cells[11].innerText = `$${document.getElementById('editarImpuesto').value}`;
            row.cells[12].innerText = `$${document.getElementById('editarPrecioVenta').value}`;
            row.cells[13].innerText = document.getElementById('editarPeso').value;
            row.cells[14].querySelector('img').src = document.getElementById('editarImagenPreview').src;
        }
        const modal = bootstrap.Modal.getInstance(document.getElementById('editarProductoModal'));
        modal.hide();
    });
});
