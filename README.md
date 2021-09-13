Tarea 3 Base de Datos

# Introducción

Las bases de datos están presentes en casi todos los sistemas que utilizamos ya sea directa o indirectamente, pero realmente nunca llegamos a estar muy al pendientes de esto. Para lograr elaborar estas bases de datos es necesario establecer previamente un modelo a utilizar en la elaboración de la base de datos. Es por esto que me gustaría profundizar un poco en el modelo entidad-relación haciendo mención a algunos estandares que son necesarios a la hora de elaborar uno de estos modelos y poder llegar a entender con mucha más claridad las bases de datos relacionales.

# Indice

-
-
-

# Estandares

## Entidades:

Las entidades representan objetos de nuestra base de datos. Por ejemplo: Usuario, Vehiculo, Estudiante. Estos 3 son ejemplos claros de Entidades los cuales poseen ciertos atributos como por ejemplo nombre. Estos en un diagrama suelen ser representados mediante rectangulos. Una clara excepción puede ser numero_cédula ya que no requiere una tabla completamente para especificar sus atributos o caracteristicas, sino que simplemente es un integer.

## Atributos:

Los atributos son características que nos dan un espectro más amplio de información sobre la entidad. Un ejemplo muy claro es que disponemos de la entidad Estudiante y pues una de sus características o atributos puede ser 'nombre', 'apellido' o 'cédula'. Es deseable que estos atributos sean lo más atomicos posibles, por ejemplo nombre_completo sería un pésimo atributo y en cambio sería mejor 'nombre', 'primer_apellido' y 'segundo_apellido'.

## Tipos de Datos:

Existen diferentes tipos de datos que vamos a atribuir a los atributos de nuestras entidades. Estos tipos de datos vamos a clasificarlos.

### Tipos de datos de valor numérico.
Bit: el cuál es una representación en Bits de un valor ejemplo bit de 111 es equivalente a un 7. Posee un rango de hasta 64 bits o lo que es igual a 9 223 372 036 854 775 807 por lo que almacenar un valor de 65 1s no es posible.

Tinyint: Es capaz de contener un valor desde -128 hasta 128 sin embargo si se decide que es unsigned (ósea no considera los negativos) es capaz de llegar hasta 256. No es capaz de contener un valor como 257

Smallint: Es capaz de contener un valor desde -32768 hasta 32678 sin embargo si se decide que es unsigned es capaz de llegar hasta 65535. No sería capaz de contener un valor como 65536 en el caso de que fuera unsigned.

MediumInt: Es capaz de contener un valor desde -8388608 hasta 8388608 sin embargo si se decide que es unsigned es capaz de llegar hasta 16777215. No sería capaz de contener un valor como 16777216 en el caso de unsigned o 8388609 en el caso de signed.

Int: Es uno de los tipos de datos más utilizados. Es capaz de contener un valor de 4 bytes; ósea desde 2147483648 hasta 2147483648 sin embargo si se decide que es unsigned es capaz de llegar desde 0 hasta 4294967295. Un valor como 214748364 no sería capaz de almacenarse en el caso de ser signed.

BigInt: Es capaz de contener un valor de 8 bytes; ósea desde -2^63 hasta 2^63-1 sin embargo si se decide que es unsigned es capaz de llegar desde 0 hasta 2^64-1 Punto flotante

Decimal: Es capaz de contener un máximo de 65 dígitos de precisión y 30 de punto flotante. Es usual el uso de este tipo de dato en finanzas ya que se requieren cálculos muy exactos y en este tipo de datos se realizan con una precisión de 65 dígitos.

Float: El rango de alcance de este tipo de datos es -3.402823466E+38 a -1.175494351E-38, 0, y 1.175494351E-38 a 3.402823466E+38. Sin embargo puede llegar a ser peor dependiendo del hardware o software. Puede llegar a dar problemas en ciertos cálculos ya que sus cálculos están realizados con apenas doble precisión.

Double: El rango de alcance de este tipo de datos es -1.7976931348623157E+308 a -2.2250738585072014E-308, 0, y 2.2250738585072014E-308 a 1.7976931348623157E+308.Tiene una precisión de aproximadamente 15 espacios decimales.

### Tipos de datos de valor en fechas.
Date: almacena día, mes y año. Ejemplo 12-09-2020. Posee un rango desde '1000-01-01' a '9999-12-31', por lo que un dato como '0999-12-31' no podría ser almacenado.

Time: almacena horas, minutos y segundos 11:59:59. Posee un rango desde '-838:59:59.000000' a '838:59:59.000000' con hasta 6 puntos de precisión en microsegundos. Un valor como '839:59:59:1516311' No podría ser almacenado en este tipo de dato.

DateTime: Almacena las dos anteriores juntas. 12-09-2020 11:59:59. Con la capacidad de agregar 6 digitos de precisión en microsegundos.

TimeStamp: Almacena las dos anteriores juntas. 12-09-2020 11:59:59. Con la capacidad de agregar 6 digitos de precisión en microsegundos.

La diferencia entre estos dos radica principalmente en que el rango de DateTime va desde 1000-01-01 00:00:00' to '9999-12-31 23:59:59 mientras que el TimeStamp va desde 1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07

Year: Almacena la fecha en años. Ejemplo 2010. Con un rango desde 1901 hasta 2155.

### Tipos de datos de valor en strings.
Char: Almacena caracteres, tiene un rango desde 0 hasta 255 y tiene una forma de almacenar y manejo de la información de similar manera que el varchar. Sin embargo en casos por ejemplo de Char(3) donde almacenamos 3 caracteres, si decidimos almacenar ´xy´ tendremos en el campo ´xy ´ (con un espacio vacio al final). Esto no sucede en los varchar.

Varchar: almacena caracteres y tiene un rango desde 0 hasta 65535 caracteres.

## Llaves Primarias.
La llave primaria es un atributo que se le da a una entidad para crear exclusividad en una de sus columnas. Es por esto que debe ser not null y unique, para que esto sea un identificador único para cada valor. Es usual el uso de llaves primarias mediante valores numéricos autoincrementables sin embargo cualquier valor que pueda ser no repetible y unico puede llegar a ser una buena llave primaria para nuestro atributo.

## Llaves Foraneas.
La llave foreanea nos refencia hacía un atributo llave primaria de otra entidad esto para crear una relación entre dos entidades. Obligatoriamente esa llave primaria debe existir en la entidad a la que referenciamos para poder crear esa llave foreanea. Un ejemplo puede ser cédula como llave primaria de una entidad Estudiante y una entidad Tutores posee cédula como llave foreanea además de atributo cédula_profesor al que esté relacionado.
