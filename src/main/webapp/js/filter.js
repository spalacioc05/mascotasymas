/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


// filter.js
document.addEventListener('DOMContentLoaded', () => {
    const filterButtons = document.querySelectorAll('.btn-outline-dark');
    const products = document.querySelectorAll('.product');

    filterButtons.forEach(button => {
        button.addEventListener('click', () => {
            const category = button.textContent.toLowerCase();
            products.forEach(product => {
                if (category === 'todos' || product.getAttribute('data-category') === category) {
                    product.style.display = 'block';
                } else {
                    product.style.display = 'none';
                }
            });
        });
    });
});