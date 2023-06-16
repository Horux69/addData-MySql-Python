import mysql.connector

# Estabecer conexion con la base de datos

conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="eje01"
)

# Crear cursor para ejecutar consulta
cursor = conexion.cursor()



# Verificar si la tabla existe
cursor.execute("SHOW TABLES")
tablas = [tabla[0] for tabla in cursor.fetchall()]

for gtablas in tablas:
    print(f"Tabla: {gtablas}.\n")

# Solicitar el nombre de la tabla
nombreTabla = input("Ingrese el nombre de la tabla que desea llenar: ")

if nombreTabla in tablas:

    while True:
    # Obtener los nombres de los campos de la tabla seleccionada
    # Obtener los nombres de los campos de la tabla 
        cursor.execute(f"DESCRIBE {nombreTabla}")
        campos = [campo[0] for campo in cursor.fetchall()]

        # Solicitar los valores de los campos por consola
        valores = {}
        for campo in campos:
            valor = input(f"Ingrese el valor para el campo '{campo}': ")
            valores[campo] = valor

        # Insertar los valores en la tabla usuarios 
        consulta = f"INSERT INTO {nombreTabla} ({', '.join(campos)}) VALUES ({', '.join(['%s'] * len(campos))})"
        valoresOrdenados = [valores[campo] for campo in campos]
        cursor.execute(consulta, valoresOrdenados)

        # Guardar los cambios en la base de datos
        conexion.commit()

        print("Los datos se han insertado correctamente.")

else:
    print(f"La tabla '{nombreTabla}' no existe en la base de datos.")

# Cerrar la conexion y el cursor
cursor.close()
conexion.close()
