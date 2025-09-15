create database bdRestauranteElSabo;
use bdRestauranteElSabo

CREATE TABLE pedidoDelivery (
  codigoUnico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  numPedido varchar(90),
  mtoTotal DECIMAL(10,2),
  direccionEnvio VARCHAR(90),
  metodoPago VARCHAR(30),
  fechaRegistro date,
  cancelado CHAR(1)
);

select * from plato;

CREATE TABLE plato (
    idPlato INT AUTO_INCREMENT PRIMARY KEY,
    tipoPlato varchar(60),
    nombrePlato VARCHAR(100) NOT NULL,
    descripcionPlato VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    linkImg VARCHAR(255)
);

INSERT INTO plato (nombrePlato, descripcionPlato, tipoPlato, precio, linkImg) VALUES
('Ensalada Cesar', 'Palta, brocoli, zanahoria', 'entrada', 15.30, 'https://mandolina.co/wp-content/uploads/2024/08/ensalada_de_brocoli_y_queso_feta-896x896.jpg'),

('Caldo de Gallina', 'Caldo de gallina fresca con finas hiervas', 'entrada', 20.00, 'https://acomer.pe/wp-content/uploads/2016/06/caldodegallinafb.jpg'),

('Papa a la huancaina', 'Papa con huancaina casera', 'entrada', 15.50, 'https://buenazo.cronosmedia.glr.pe/original/2020/09/25/5f6eaf8e2810e95b5c5da50c.jpg'),

('Pollo Brosther', 'Papas doradas con ensalada y vinagreta especial de la casa', 'fondo', 18.50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzvx18v8kWrygKE6TwZQWUv7Z2ew1FLNneMg&s'),

('Tiramisú Casero', 'Clásico tiramisú italiano con mascarpone, café espresso y cacao en polvo. Preparado diariamente.', 'postre', 8.50, 'https://www.paulinacocina.net/wp-content/uploads/2020/01/receta-de-tiramisu-facil-y-economico-1740483918.jpg'),

('Tres leches', 'Leche Americana, leche de vaca y leche de fresca', 'postre', 5.50, 'https://tastesbetterfromscratch.com/wp-content/uploads/2017/04/Tres-Leches-Cake-1-1-500x500.jpg'),

('Helado multisabor', 'Helados de crema del dia', 'postre', 10.50, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLrwZzqdvLF25f_xXytQL_63GJ1q6_91LKdZQXIz1L4JYDinCrQIOMzMWQRL95k-0aDPc&usqp=CAU');


select * from pedidoDelivery;