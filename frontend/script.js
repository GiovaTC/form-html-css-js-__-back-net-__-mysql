document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("data-form");
    const tableBody = document.querySelector("#data-table tbody");

    // Función para cargar datos desde la API
    function cargarDatos() {
        fetch("http://localhost:5000/api/datos")
            .then(response => response.json())
            .then(data => {
                tableBody.innerHTML = "";
                data.forEach(item => {
                    const row = document.createElement("tr");
                    row.innerHTML = `
                        <td>${item.id}</td>
                        <td>${item.col1}</td>
                        <td>${item.col2}</td>
                        <td>${item.col3}</td>
                        <td>${item.col4}</td>
                        <td>${item.col5}</td>
                        <td>${item.col6}</td>
                        <td>${item.col7}</td>
                        <td>${item.col8}</td>
                        <td>${item.col9}</td>
                        <td>${item.col10}</td>
                        <td>
                            <button onclick="editarFila(${item.id})">Editar</button>
                            <button onclick="eliminarFila(${item.id})">Eliminar</button>
                        </td>
                    `;
                    tableBody.appendChild(row);
                });
            })
            .catch(error => console.error("Error cargando datos:", error));
    }

    // Enviar datos del formulario
    form.addEventListener("submit", event => {
        event.preventDefault();
        
        const id = document.getElementById("row-id").value;
        const formData = {
            col1: document.getElementById("col1").value,
            col2: document.getElementById("col2").value,
            col3: document.getElementById("col3").value,
            col4: document.getElementById("col4").value,
            col5: document.getElementById("col5").value,
            col6: document.getElementById("col6").value,
            col7: document.getElementById("col7").value,
            col8: document.getElementById("col8").value,
            col9: document.getElementById("col9").value,
            col10: document.getElementById("col10").value
        };

        const url = id ? `http://localhost:5000/api/datos/${id}` : "http://localhost:5000/api/datos";
        const method = id ? "PUT" : "POST";

        fetch(url, {
            method: method,
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(formData)
        })
        .then(() => {
            form.reset();
            cargarDatos();
        })
        .catch(error => console.error("Error al guardar:", error));
    });

    // Función para eliminar un dato
    window.eliminarFila = function(id) {
        fetch(`http://localhost:5000/api/datos/${id}`, { method: "DELETE" })
            .then(() => cargarDatos())
            .catch(error => console.error("Error al eliminar:", error));
    };

    // Función para cargar los datos en el formulario para edición
    window.editarFila = function(id) {
        fetch(`http://localhost:5000/api/datos/${id}`)
            .then(response => response.json())
            .then(data => {
                document.getElementById("row-id").value = data.id;
                document.getElementById("col1").value = data.col1;
                document.getElementById("col2").value = data.col2;
                document.getElementById("col3").value = data.col3;
                document.getElementById("col4").value = data.col4;
                document.getElementById("col5").value = data.col5;
                document.getElementById("col6").value = data.col6;
                document.getElementById("col7").value = data.col7;
                document.getElementById("col8").value = data.col8;
                document.getElementById("col9").value = data.col9;
                document.getElementById("col10").value = data.col10;
            })
            .catch(error => console.error("Error al cargar fila para editar:", error));
    };

    // Cargar datos al iniciar
    cargarDatos();
});
