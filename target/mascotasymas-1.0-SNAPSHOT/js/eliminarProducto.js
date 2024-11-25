/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// eliminarProducto.js
document.addEventListener('DOMContentLoaded', () => {
    const eliminarProductoBtn = document.getElementById('eliminarProductoBtn');
    const productosTabla = document.getElementById('productosTabla');

    eliminarProductoBtn.addEventListener('click', () => {
        const selectedRows = document.querySelectorAll('#productosTabla tr.selected');
        if (selectedRows.length > 0) {
            const confirmDelete = confirm('¿Está seguro de que desea eliminar los productos seleccionados?');
            if (confirmDelete) {
                selectedRows.forEach(row => row.remove());
                updateSelectedRows();
                updateButtons();
            }
        }
    });

    function updateSelectedRows() {
        const selectedRows = document.querySelectorAll('#productosTabla tr.selected');
        const editarProductoBtn = document.getElementById('editarProductoBtn');
        const eliminarProductoBtn = document.getElementById('eliminarProductoBtn');
        let selectedRowsArray = [];
        selectedRows.forEach(row => {
            const sku = row.cells[1].innerText;
            selectedRowsArray.push(sku);
        });
        window.selectedRows = selectedRowsArray;
    }

    function updateButtons() {
        const selectedRows = document.querySelectorAll('#productosTabla tr.selected');
        const editarProductoBtn = document.getElementById('editarProductoBtn');
        if (selectedRows.length === 1) {
            editarProductoBtn.style.display = 'inline-block';
            eliminarProductoBtn.style.display = 'inline-block';
        } else if (selectedRows.length > 1) {
            editarProductoBtn.style.display = 'none';
            eliminarProductoBtn.style.display = 'inline-block';
        } else {
            editarProductoBtn.style.display = 'none';
            eliminarProductoBtn.style.display = 'none';
        }
    }
});
