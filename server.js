// server.js
const express = require('express');
const path = require('path');
const app = express();

// Define el directorio estático
app.use(express.static(path.join(__dirname, 'public')));

// Escucha en el puerto 8080
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
