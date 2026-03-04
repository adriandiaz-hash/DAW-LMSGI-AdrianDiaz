var monCallback = function(dades) {
    var html = "";

    dades.forEach(office => {
        // Controlamos los nulos para no mostrar la palabra "null" literal en el HTML
        let direccion = office.addressLine1;
        if (office.addressLine2) {
            direccion += ", " + office.addressLine2;
        }
        
        let estat = office.state ? office.state : ""; // Si es null, lo dejamos en blanco

        html += `
        <div class="office-card">
            <div class="office-header">
                <h2>${office.city}</h2>
            </div>
            <div class="office-body">
                <div class="office-image">
                    <img src="${office.picture}" alt="Oficina de ${office.city}">
                </div>
                <div class="office-details">
                    <table class="details-table">
                        <tr>
                            <td><strong>Telèfon:</strong> ${office.phone}</td>
                        </tr>
                        <tr>
                            <td><strong>Direcció:</strong> ${direccion}</td>
                        </tr>
                        <tr>
                            <td><strong>Estat:</strong> ${estat}</td>
                        </tr>
                        <tr>
                            <td><strong>País:</strong> ${office.country} - ${office.territory}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        `;
    });

    document.getElementById("results").innerHTML = html;
}