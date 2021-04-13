-- Cada cajita de Blu-Ray mide 20cm x 13.5cm x 1.5cm
-- para que el brazo pueda manipular adecuadamente cada cajita 
-- debe estar contenida dentro de un arnés que cambia las medidas a 30cm x 21cm x 8cm 
-- para un espacio total de 5040 centímetros cúbicos y un peso de 500 gr por película.
-- Cada cilindro aguanta un peso máximo de 50kg como máximo, o sea, 100 películas

DECLARE @b FLOAT, @h FLOAT, @v FLOAT;  
SET @h = 8;  
SET @b = 21;  
set @v = 30;
SELECT @h * @b * @v AS 'Vol Cajita';    

create table Cilindro(
volumen float;
cantidad bigint;
)

insert into Cilindro values (5040, 100);

select volumen, volumen * cantidad as VolumenCil
from Cilindro;

-- Como aguantan 100 películas, eso quiere decir que el cilindro debe medir 5040 x 100 
-- estos son 504000 cm^3
-- Podemos formar 5 niveles de 20 cajas acomodadas de tal forma que la 
-- base sea de 8 x 21 cm, o sea, 168 cm^2