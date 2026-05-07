async function cargarDiscografia() {

    const contenedor = document.getElementById("contenedor-canciones");

    try {

        // Cargar JSON
        const respuesta = await fetch("datos.json");

        // Verificar respuesta
        if (!respuesta.ok) {
            throw new Error("No se pudo cargar el archivo JSON.");
        }

        // Convertir a objeto JS
        const datos = await respuesta.json();

        // Extraer canciones
        const canciones = datos.discografia.cancion;

        // Limpiar contenedor
        contenedor.innerHTML = "";

        // Recorrer canciones
        canciones.forEach((cancion) => {

            const tarjeta = document.createElement("article");
            tarjeta.className = "tarjeta-cancion";

            // Generar lista de integrantes
            let integrantesHTML = "";

            cancion.integrantes.integrante.forEach((integrante) => {

                integrantesHTML += `
                    <li>
                        <strong>${integrante.nombre}</strong> - ${integrante.rol}
                    </li>
                `;
            });

            // HTML de la tarjeta
            tarjeta.innerHTML = `
                <h2>${cancion.titulo}</h2>

                <p><strong>Disco:</strong> ${cancion.disco.nombre}</p>

                <p><strong>Año:</strong> ${cancion.disco.fecha_publicacion}</p>

                <p><strong>Discográfica:</strong> ${cancion.disco.discografica}</p>

                <p><strong>Posición:</strong> ${cancion.posicion_disco}</p>

                <p><strong>Duración:</strong> ${cancion.duracion} min</p>

                <div class="integrantes">
                    <h3>Integrantes</h3>

                    <ul>
                        ${integrantesHTML}
                    </ul>
                </div>
            `;

            // Añadir tarjeta al contenedor
            contenedor.appendChild(tarjeta);

        });

    } catch (error) {

        // Mostrar error
        contenedor.innerHTML = `
            <p class="error">
                Error: ${error.message}
            </p>
        `;
    }
}

// Ejecutar función
cargarDiscografia();