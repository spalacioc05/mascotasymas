/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// imagenPreview.js
document.addEventListener('DOMContentLoaded', () => {
    const agregarImagenInput = document.getElementById('imagen');
    const agregarImagenPreview = document.getElementById('imagenPreview');
    const editarImagenInput = document.getElementById('editarImagen');
    const editarImagenPreview = document.getElementById('editarImagenPreview');

    agregarImagenInput.addEventListener('change', () => {
        const file = agregarImagenInput.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = (e) => {
                agregarImagenPreview.src = e.target.result;
                agregarImagenPreview.style.display = 'block';
            };
            reader.readAsDataURL(file);
        }
    });

    editarImagenInput.addEventListener('change', () => {
        const file = editarImagenInput.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = (e) => {
                editarImagenPreview.src = e.target.result;
                editarImagenPreview.style.display = 'block';
            };
            reader.readAsDataURL(file);
        }
    });
});