#!/bin/bash

# Version 2: color de fondo leído desde un fichero

DIR_SCRIPT="$(dirname "$(readlink -f "$0")")"
DESTINO="$DIR_SCRIPT/web"
FICHERO_COLOR="$DIR_SCRIPT/colores.txt"

COLOR=$(cat "$FICHERO_COLOR")

mkdir -p "$DESTINO"

cat > "$DESTINO/index.html" << EOF
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi primera web con Bash</title>
</head>
<body style="background-color: $COLOR; color: black; font-family: Arial, sans-serif; text-align: center; padding-top: 80px;">
    <h1>Práctica de Bash, Git y Docker</h1>
    <p>Esta página ha sido generada automáticamente por un script Bash.</p>
</body>
</html>
EOF

echo "Página generada en $DESTINO/index.html con fondo $COLOR"
