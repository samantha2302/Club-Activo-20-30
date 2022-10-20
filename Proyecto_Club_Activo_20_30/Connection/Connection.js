// Requerimos de pg
    // Client es para hacer una conexion de un cliente 
    // Pool es para hacer muchas conexiones, que si un asuario pide algo, y luego otra cosa, que lo reciba y asi con el resto de usuarios.
    // La clase Query, nos permite consultar cosas 
const { Pool } = require('pg');


// Este Pool acepta ciertas cosas 
// En la parte del host, como la base de datos y la conexion estan en la misma computadora, en un mismo lugar por decirlo asi
// coloco logalhost
const pool = new Pool({
    user     : 'postgres', 
    host     : 'localhost',
    password : '12345', // Aqui tienen que poner la contrasennna que ustedes pusieron en PgAdmin 
    database : 'club_activo_20_30'
});

// Lo del async y await  
const getVol = async() => {
    const respuesta = await pool.query('SELECT * FROM volunteer')
    console.log(respuesta.rows) // Si no le pongo el rows me devuelve cositas que casi no nos interesa jaja. 
};

getVol();


