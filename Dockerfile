# Usa la imagen oficial de Python como base
FROM python:3.9

# Establece el directorio de trabajo en /usr/src/app
WORKDIR /usr/src/app

# Copia el archivo de dependencias al directorio de trabajo
COPY requirements.txt ./

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código del proyecto al directorio de trabajo
COPY . .

# Expone el puerto 8000
EXPOSE 8000

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
