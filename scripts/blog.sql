CREATE DATABASE project;

USE project;
/*
**		Tabla administradores
*/
CREATE TABLE `admins` (
`id` int(99) NOT NULL,
`Name` varchar(300) NOT NULL,
`Email` varchar(300) NOT NULL,
`Password` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `admins`
ADD PRIMARY KEY (`id`);

ALTER TABLE `admins`
MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*
**		Tabla usuarios
*/
CREATE TABLE `turista` (
`id` int(99) NOT NULL,
`admin_id` int(99) NOT NULL,
`Name` varchar(300) NOT NULL,
`Email` varchar(300) NOT NULL,
`Password` varchar(450) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(admin_id) REFERENCES admins(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `turista`
MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*
**		Tabla videojuegos
*/
CREATE TABLE `videojuegos` (
`id` int(99) NOT NULL,
`turista_id` int(99) NOT NULL,
`nombre` varchar(300) NOT NULL,
`precio` varchar(300) NOT NULL,
`consola` varchar(450) NOT NULL,
`descripcion` varchar(450) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(turista_id) REFERENCES turista(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `videojuegos`
MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*
**		Tabla animales
*/
CREATE TABLE `animales` (
`id` int(99) NOT NULL,
`turista_id` int(99) NOT NULL,
`Nombre` varchar(300) NOT NULL,
`Genero` varchar(300) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(turista_id) REFERENCES turista(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `animales`
MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*
**		Tabla país
*/
CREATE TABLE `pais` (
`id` int(99) NOT NULL,
`turista_id` int(99) NOT NULL,
`Nombre` varchar(300) NOT NULL,
`Clima` varchar(300) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(turista_id) REFERENCES turista(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `pais`
MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*
**		Tabla notas
*/
CREATE TABLE `blog` (
`id` int(99) NOT NULL,
`turista_id` int(99) NOT NULL,
`content` varchar(300) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(turista_id) REFERENCES turista(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `blog`
MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


insert into admins values(1, 'Pablo Contreras', 'pablo_contreras_1997@outlook.com', 'Lapatita9');