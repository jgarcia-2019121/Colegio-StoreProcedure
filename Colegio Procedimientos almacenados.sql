use db_colegio;
-- Procedimientos Almacenados

DELIMITER //
create procedure sp_buscarAlumno(in _idAlumno int)
begin
select * from tbl_Alumno
where id_Alumno = _idAlumno;
end //
DELIMITER ;
call sp_buscarAlumno(1); 

DELIMITER //
create procedure sp_enlistarAlumno()
begin
select * from tbl_Alumno;
end //
DELIMITER ;
call sp_enlistarAlumno;
-- drop procedure sp_enlistarAlumno;

DELIMITER //
create procedure sp_agregarAlumno(
in _idAlumno int,
in _nombreAlumno varchar(60),
in _telefonoAlumno int,
in _direccionAlumno varchar(60),
in _correoAlumno varchar(60))
begin
insert into tbl_Alumno(
id_alumno,
nombre_del_alumno,
telefono_del_alumno,
direccion_del_alumno,
correo_del_alumno)
values (_idAlumno,_nombreAlumno,_telefonoAlumno,_direccionAlumno,_correoAlumno);
END //
DELIMITER ;
call sp_agregarAlumno (1, 'Jonathan Garcia', '78012418', '5ta Av zona 5','jjose2019178@kinal.edu.gt');
drop procedure sp_agregarAlumno;

DELIMITER //
create procedure sp_actualizarAlumno(
in _idAlumno int,
in _nombreAlumno varchar(60),
in _telefonoAlumno int,
in _direccionAlumno varchar(60),
in _correoAlumno varchar(60))
begin
update tbl_alumno
set id_alumno = _idAlumno, nombre_del_alumno = _nombreAlumno, telefono_del_alumno = _telefonoAlumno, direccion_del_alumno = _direccionAlumno, correo_del_alumno = _correoAlumno
where id_alumno = _idAlumno;
END //
DELIMITER ;
call sp_actualizarAlumno (1, 'Jonathan Juarez', '49968138','5ta Av zona 5','jgarcia-2019121@kinal.edu.gt');
drop procedure sp_actualizarAlumno;

DELIMITER //
create procedure sp_eliminarAlumno(
in _idAlumno int)
begin
delete from tbl_alumno where id_alumno = _idAlumno;
END //
DELIMITER ;

select * from tbl_alumno;

call sp_eliminarAlumno (5);

DELIMITER //
create procedure sp_buscarProfesor(in _idProfesor int)
begin
select * from tbl_Profesor
where id_Profesor = _idProfesor;
end //
DELIMITER ;
call sp_buscarProfesor(1); 

DELIMITER //
create procedure sp_enlistarProfesor()
begin
select * from tbl_Profesor;
end //
DELIMITER ;
call sp_enlistarProfesor;

DELIMITER //
create procedure sp_agregarProfesor(
in _nombreProfesor varchar(60),
in _asignaturaProfesor varchar(30),
in _telefonoProfesor int,
in _direccionProfesor varchar(60),
in _correoProfesor varchar(60))
begin
insert into tbl_profesor(
nombre_del_profesor,
asignatura_del_profesor,
telefono_del_profesor,
direccion_del_profesor,
correo_del_profesor)
values (_nombreProfesor,_asignaturaProfesor,_telefonoProfesor,_direccionProfesor,_correoProfesor);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarProfesor(
in _idProfesor int,
in _nombreProfesor varchar(60),
in _asignaturaProfesor varchar(30),
in _telefonoProfesor int,
in _direccionProfesor varchar(60),
in _correoProfesor varchar(60))
begin
update tbl_profesor
set id_profesor = _idProfesor, nombre_del_profesor = _nombreProfesor, asignatura_del_profesor = _asignaturaProfesor, telefono_del_profesor = _telefonoProfesor, direccion_del_profesor = _direccionProfesor, correo_del_profesor = _correoProfesor
where id_profesor = _idProfesor;
END //
DELIMITER ;

DELIMITER //
create procedure sp_eliminarProfesor(
in _idProfesor int)
begin
delete from tbl_profesor where id_profesor = _idProfesor;
END //
DELIMITER ;

DELIMITER //
create procedure sp_buscarCurso(in _idCurso int)
begin
select * from tbl_Cursos
where id_cursos = _idCurso;
end //
DELIMITER ;
call sp_buscarCurso(1); 

DELIMITER //
create procedure sp_enlistarCurso()
begin
select * from tbl_cursos;
end //
DELIMITER ;
call sp_enlistarCurso;

call sp_agregarCurso (1, 'Informatica', '2022-01-15', '2022-10-7','1');
select * from tbl_cursos;

DELIMITER //
create procedure sp_agregarCurso(
in _idCurso int,
in _nombreCurso varchar(30),
in _fechaInicioCurso date,
in _fechaFinalCurso date,
in _notas int)
begin
insert into tbl_cursos(
id_cursos,
nombre_del_curso,
fecha_inicio_curso,
fecha_final_curso,
id_notas)
values (_idCurso,_nombreCurso,_fechaInicioCurso,_fechaFinalCurso,_notas);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarCurso(
in _idCurso int,
in _nombreCurso varchar(30),
in _fechaInicioCurso date,
in _fechaFinalCurso date,
in _notas int)
begin
update tbl_Cursos
set id_cursos = _idCurso, nombre_del_curso = _nombreCurso, fecha_inicio_curso = _fechaInicioCurso, fecha_final_curso = _fechaFinalCurso, id_notas = _notas
where id_cursos = _idCurso;
END //
DELIMITER ;

DELIMITER //
create procedure sp_eliminarCurso(
in _idCurso int)
begin
delete from tbl_cursos where id_cursos = _idCurso;
END //
DELIMITER ;

call sp_eliminarCurso (1);
select * from tbl_cursos;


DELIMITER //
create procedure sp_ingresarCarrera(
in _idCarrera int,
in _nombreCarrera varchar(30),
in _gradoCarrera varchar(30))
begin
insert into tbl_carrera(
id_carrera,
nombre_carrera,
grado_carrea)
values (_idCarrera,_nombreCarrera,_gradoCarrera);
END //
DELIMITER ;

drop procedure sp_ingresarCarrera;

call sp_agregarCarrera (1, 'Mecanica', '4to Diversificado');
select * from tbl_carrera;

DELIMITER //
create procedure sp_agregarCarrera(
in _idCarrera int,
in _nombreCarrera varchar(30),
in _gradoCarrera varchar(30))
begin
insert into tbl_carrera(
id_carrera,
nombre_carrera,
grado_carrea)
values (_idCarrera,_nombreCarrera,_gradoCarrera);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarCarrera(
in _idCarrera int,
in _nombreCarrera varchar(30),
in _gradoCarrera varchar(30))
begin
update tbl_carrera
set id_carrera = _idCarrera, nombre_carrera = _nombreCarrera, grado_de_carrea = _gradoCarrera
where id_carrera = _idCarrera;
END //
DELIMITER ;

drop procedure sp_actualizarCarrera;

DELIMITER //
create procedure sp_eliminarCarrera(
in _idCarrera int)
begin
delete from tbl_carrera where id_carrera = _idCarrera;
END //
DELIMITER ;

call sp_eliminarCarrera (1);
select * from tbl_carrera;

drop procedure sp_ingresarCarrera;

call sp_ingresarCarrera (1, 'Mecanica', '4to Diversificado');
select * from tbl_carrera;

DELIMITER // 
create procedure sp_agregarUsuario(
in _idUsuario int,
in _nombreUsuario varchar(30),
in _passwordUsuario varchar (30),
in _estadoUsuario boolean)
begin
insert into tbl_usuario(
id_usuario,
usuario,
password,
estado_activo)
values (_idUsuario,_nombreUsuario,_passwordUsuario,_estadoUsuario);
END //
DELIMITER ;
drop procedure sp_agregarUsuario;
call sp_agregarUsuario (1, 'jjgarcia','123',true);
select * from tbl_usuario;

DELIMITER //
create procedure sp_ingresarPago(
in _idPago int,
in _nombrePago varchar(30),
in _solvencia boolean)
begin
insert into tbl_pago(
id_pago,
tipo_pago,
solvencia)
values (_idPago,_nombrePago,_solvencia);
END //
DELIMITER ;

drop procedure sp_ingresarPago;

call sp_ingresarPago (2, 'Banca Virtual', true);
select * from tbl_pago;

DELIMITER //
create procedure sp_agregarPago(
in _idPago int,
in _nombrePago varchar(30),
in _solvencia boolean)
begin
insert into tbl_pago(
id_pago,
tipo_pago,
solvencia)
values (_idPago,_nombrePago,_solvencia);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarPago(
in _idPago int,
in _nombrePago varchar(30),
in _solvencia boolean)
begin
update tbl_pago
set id_pago = _idPago, tipo_pago = _nombrePago, solvencia = _solvencia
where id_pago = _idPago;
END //
DELIMITER ;

drop procedure sp_actualizarPago;

DELIMITER //
create procedure sp_eliminarPago(
in _idPago int)
begin
delete from tbl_pago where id_pago = _idPago;
END //
DELIMITER ;

call sp_eliminarPago (1);
select * from tbl_pago;

DELIMITER //
create procedure sp_ingresarDepartamento(
in _idDepartamento int,
in _nombreDepartamento varchar(30))
begin
insert into tbl_departamento(
id_departamento,
departamento)
values (_idDepartamento,_nombreDepartamento);
END //
DELIMITER ;

drop procedure sp_ingresarDepartamento;

call sp_ingresarDepartamento (1, 'Guatemala');
select * from tbl_Departamento;

DELIMITER //
create procedure sp_agregarDepartamento(
in _idDepartamento int,
in _nombreDepartamento varchar(30))
begin
insert into tbl_departamento(
id_departamento,
departamento)
values (_idDepartamento,_nombreDepartamento);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarDepartamento(
in _idDepartamento int,
in _nombreDepartamento varchar(30))
begin
update tbl_departamento
set id_departamento = _idDepartamento, departamento = _nombreDepartamento
where id_departamento = _idDepartamento;
END //
DELIMITER ;

drop procedure sp_actualizarDepartamento;

DELIMITER //
create procedure sp_eliminarDepartamento(
in _idDepartamento int)
begin
delete from tbl_departamento where id_departamento = _idDepartamento;
END //
DELIMITER ;

call sp_eliminarPago (1);
select * from tbl_pago;

DELIMITER //
create procedure sp_ingresarMunicipio(
in _idMunicipio int,
in _nombreMunicipio varchar(30))
begin
insert into tbl_municipio(
id_municipio,
municipio)
values (_idMunicipio,_nombreMunicipio);
END //
DELIMITER ;

drop procedure sp_ingresarMunicio;

call sp_ingresarMunicipio (1, 'Retalhulehu');
select * from tbl_municipio;

DELIMITER //
create procedure sp_agregarMunicipio(
in _idMunicipio int,
in _nombreMunicipio varchar(30))
begin
insert into tbl_municipio(
id_municipio,
municipio)
values (_idMunicipio,_nombreMunicipio);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarMunicipio(
in _idMunicipio int,
in _nombreMunicipio varchar(30))
begin
update tbl_municipio
set id_municipio = _idMunicipio, municipio = _nombreMunicipio
where id_municipio = _idMunicipio;
END //
DELIMITER ;

drop procedure sp_actualizarDepartamento;

DELIMITER //
create procedure sp_eliminarMunicipio(
in _idMunicipio int)
begin
delete from tbl_municipio where id_municipio = _idMunicipio;
END //
DELIMITER ;

call sp_eliminarMunicipio (1);
select * from tbl_municipio;

-- Notas delimiter
DELIMITER //
create procedure sp_ingresarNotas(
in _idNotas int,
in _totalNotas varchar(30))
begin
insert into tbl_notas(
id_notas,
notas)
values (_idNotas,_totalNotas);
END //
DELIMITER ;

drop procedure sp_ingresarNotas;

call sp_ingresarNotas (1, '78');
select * from tbl_notas;

DELIMITER //
create procedure sp_agregarNotas(
in _idNotas int,
in _totalNotas varchar(30))
begin
insert into tbl_notas(
id_notas,
notas)
values (_idNotas,_totalNotas);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarNotas(
in _idNotas int,
in _totalNotas varchar(30))
begin
update tbl_notas
set id_notas = _idNotas, notas = _totalNotas
where id_notas = _idNotas;
END //
DELIMITER ;

drop procedure sp_actualizarNotas;

DELIMITER //
create procedure sp_eliminarNotas(
in _idNotas int)
begin
delete from tbl_notas where id_notas = _idNotas;
END //
DELIMITER ;

call sp_eliminarNotas (1);
select * from tbl_notas;

DELIMITER //
create procedure sp_ingresarDetalleCarreraAlumno(
in _idDetalleCarreraAlumno int,
in _idCarrera int,
in _idAlumno int)
begin
insert into tbl_detalle_carrera_alumno(
id_detalle_carrera_alumno,
id_carrera,
id_alumno)
values (_idDetalleCarreraAlumno,_idCarrera,_idAlumno);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleCarreraAlumno;

call sp_ingresarNotas (1, '78');
select * from tbl_notas;

DELIMITER //
create procedure sp_agregarDetalleCarreraAlumno(
in _idDetalleCarreraAlumno int,
in _idCarrera int,
in _idAlumno int)
begin
insert into tbl_detalle_carrera_alumno(
id_detalle_carrera_alumno,
id_carrera,
id_alumno)
values (_idDetalleCarreraAlumno,_idCarrera,_idAlumno);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarDetalleCarreraAlumno(
in _idDetalleCarreraAlumno int,
in _idCarrera int,
in _idAlumno int)
begin
update tbl_detalle_carrera_alumno
set id_detalle_carrera_alumno = _idDetalleCarreraAlumno, id_carrera = _idCarrera, id_alumno = _idAlumno
where id_detalle_carrera_alumno = _idDetalleCarreraAlumno;
END //
DELIMITER ;

drop procedure sp_actualizarDetalleCarreraAlumno;

DELIMITER //
create procedure sp_eliminarDetalleCarreraAlumno(
in _idDetalleCarreraAlumno int)
begin
delete from tbl_detalle_carrera_alumno where id_detalle_carrera_alumno = _idDetalleCarreraAlumno;
END //
DELIMITER ;

call sp_eliminarNotas (1);
select * from tbl_notas;

DELIMITER //
create procedure sp_ingresarDetalleCursoNotasAlumno(
in _idDetalleCursoNotasAlumno int,
in _idCurso int,
in _idAlumno int,
in _idNotas int,
in _nombreCurso varchar(30),
in _nombreAlumno varchar(60),
in _notas varchar(60))
begin
insert into tbl_detalle_cursos_notas_alumno(
id_cursos,
id_alumno,
id_notas,
nombre_del_curso,
nombre_del_alumno,
notas)
values (_idDetalleCursoNotasAlumno,_idCurso,_idAlumno,_idNotas,_nombreCurso,_nombreAlumno,_notas);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleCursoNotasAlumno;

call sp_ingresarDetalleCursoNotasAlumno (1, '78');
select * from tbl_notas;

DELIMITER //
create procedure sp_agregarDetalleCursoNotasAlumno(
in _idDetalleCursoNotasAlumno int,
in _idCurso int,
in _idAlumno int,
in _idNotas int,
in _nombreCurso varchar(30),
in _nombreAlumno varchar(60),
in _notas varchar(60))
begin
insert into tbl_detalle_cursos_notas_alumno(
id_detalle_cursos_notas_alumno,
id_cursos,
id_alumno,
id_notas,
nombre_del_curso,
nombre_del_alumno,
notas)
values (_idDetalleCursoNotasAlumno,_idCurso,_idAlumno,_idNotas,_nombreCurso,_nombreAlumno,_notas);
END //
DELIMITER ;

DELIMITER //
create procedure sp_actualizarDetalleCursoNotasAlumno(
in _idDetalleCursoNotasAlumno int,
in _idCurso int,
in _idAlumno int,
in _idNotas int,
in _nombreCurso varchar(30),
in _nombreAlumno varchar(60),
in _notas varchar(60))
begin
update tbl_detalle_cursos_notas_alumno
set id_detalle_cursos_notas_alumno = _idDetalleCursoNotasAlumno, id_cursos = _idCurso, id_alumno = _idAlumno, id_notas = _idNotas, nombre_del_curso = _nombreCurso, nombre_del_alumno = _nombreAlumno, notas = _notas
where id_detalle_cursos_notas_alumno = _idDetalleCursoNotasAlumno;
END //
DELIMITER ;

drop procedure sp_actualizarNotas;

DELIMITER //
create procedure sp_eliminarDetalleCursoNotasAlumno(
in _idDetalleCursoNotasAlumno int)
begin
delete from tbl_detalle_cursos_notas_alumno where id_detalle_cursos_notas_alumno = _idDetalleCursoNotasAlumno;
END //
DELIMITER ;

call sp_eliminarNotas (1);
select * from tbl_notas;

DELIMITER //
create procedure sp_ingresarDetalleCarreraCursoNotasAlumno(
in _idDetalleCarreraCursoNotasAlumno int,
in _idCarrera int,
in _idCurso int,
in _idAlumno int,
in _idNotas int,
in _nombreCarrera varchar(30),
in _nombreCurso varchar(30),
in _nombreAlumno varchar(60),
in _notas varchar(60))
begin
insert into tbl_detalle_carrera_cursos_notas_alumno(
id_detalle_carrera_cursos_notas_alumno,
id_carrera,
id_cursos,
id_alumno,
id_notas,
nombre_del_curso,
nombre_del_alumno,
notas)
values (_idDetalleCursoNotasAlumno,_idCarrera,_idCurso,_idAlumno,_idNotas,_nombreCurso,_nombreAlumno,_notas);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleCursoNotasAlumno;

call sp_ingresarDetalleCursoNotasAlumno (1, '78');
select * from tbl_notas;

DELIMITER //
create procedure sp_agregarDetalleCarreraCursoNotasAlumno(
in _idDetalleCarreraCursoNotasAlumno int,
in _idCarrera int,
in _idCurso int,
in _idAlumno int,
in _idNotas int,
in _nombreCarrera varchar(30),
in _nombreCurso varchar(30),
in _nombreAlumno varchar(60),
in _notas varchar(60))
begin
insert into tbl_detalle_carrera_cursos_notas_alumno(
id_detalle_carrera_cursos_notas_alumno,
id_carrera,
id_cursos,
id_alumno,
id_notas,
nombre_del_curso,
nombre_del_alumno,
notas)
values (_idDetalleCursoNotasAlumno,_idCarrera,_idCurso,_idAlumno,_idNotas,_nombreCurso,_nombreAlumno,_notas);
END //
DELIMITER ;

drop procedure sp_agregarDetalleCarreraCursoNotasAlumno;

DELIMITER //
create procedure sp_actualizarDetalleCarreraCursoNotasAlumno(
in _idDetalleCarreraCursoNotasAlumno int,
in _idCarrera int,
in _idCurso int,
in _idAlumno int,
in _idNotas int,
in _nombreCarrera varchar(30),
in _nombreCurso varchar(30),
in _nombreAlumno varchar(60),
in _notas varchar(60))
begin
update tbl_detalle_carrera_cursos_notas_alumno
set id_detalle_carrera_cursos_notas_alumno = _idDetalleCarreraCursoNotasAlumno, id_carrera = _idCarrera, id_cursos = _idCurso, id_alumno = _idAlumno, id_notas = _idNotas, nombre_del_curso = _nombreCurso, nombre_del_alumno = _nombreAlumno, notas = _notas
where id_detalle_carrera_cursos_notas_alumno = _idDetalleCarreraCursoNotasAlumno;
END //
DELIMITER ;

drop procedure sp_actualizarDetalleCarreraCursoNotasAlumno;

DELIMITER //
create procedure sp_eliminarDetalleCarreraCursoNotasAlumno(
in _idDetalleCarreraCursoNotasAlumno int)
begin
delete from tbl_detalle_carrera_cursos_notas_alumno where id_detalle_carrera_cursos_notas_alumno = _idDetalleCarreraCursoNotasAlumno;
END //
DELIMITER ;

call sp_eliminarDetalleCarreraCursoNotasAlumno (1);
select * from tbl_detalle_carrera_cursos_notas_alumno;

call sp_eliminarDetalleCarreraCursoNotasAlumno (1);
select * from tbl_detalle_carrera_cursos_notas_alumno;

DELIMITER //
create procedure sp_ingresarDetalleCarreraCursoProfesor(
in _idDetalleCarreraCursoProfesor int,
in _idCarrera int,
in _idCurso int,
in _idProfesor int,
in _nombreCarrera varchar(30),
in _nombreCurso varchar(30),
in _nombreProfesor varchar(60))
begin
insert into tbl_detalle_carrera_curso_profesor(
id_detalle_carrera_curso_profesor,
id_carrera,
id_cursos,
id_profesor,
nombre_del_carrera,
nombre_del_curso,
nombre_del_profesor,
notas)
values (_idDetalleCursoProfesor,_idCarrera,_idCurso,_idProfesor,_nombreCurso,_nombreProfesor);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleCarreraCursoProfesor;

DELIMITER //
create procedure sp_agregarDetalleCarreraCursoProfesor(
in _idDetalleCarreraCursoProfesor int,
in _idCarrera int,
in _idCurso int,
in _idProfesor int,
in _nombreCarrera varchar(30),
in _nombreCurso varchar(30),
in _nombreProfesor varchar(60))
begin
insert into tbl_detalle_carrera_curso_profesor(
id_detalle_carrera_curso_profesor,
id_carrera,
id_cursos,
id_profesor,
nombre_del_carrera,
nombre_del_curso,
nombre_del_profesor,
notas)
values (_idDetalleCarreraCursoProfesor,_idCarrera,_idCurso,_idProfesor,_nombreCurso,_nombreProfesor);
END //
DELIMITER ;

drop procedure sp_agregarDetalleCursoProfesor;

DELIMITER //
create procedure sp_actualizarDetalleCarreraCursoProfesor(
in _idDetalleCarreraCursoProfesor int,
in _idCarrera int,
in _idCurso int,
in _idProfesor int,
in _nombreCarrera varchar(30),
in _nombreCurso varchar(30),
in _nombreProfesor varchar(60))
begin
update tbl_detalle_carrera_curso_profesor
set id_detalle_carrera_curso_profesor = _idDetalleCarreraCursoProfesor, id_carrera = _idCarrera, id_cursos = _idCurso, id_profesor = _idProfesor, nombre_del_curso = _nombreCurso, nombre_del_profesor = _nombreProfesor
where id_detalle_carrera_curso_profesor = _idDetalleCarreraCursoProfesor;
END //
DELIMITER ;

drop procedure sp_actualizarDetalleCarreraCursoProfesor;

DELIMITER //
create procedure sp_eliminarDetalleCarreraCursoProfesor(
in _idDetalleCarreraCursoProfesor int)
begin
delete from tbl_detalle_carrera_curso_profesor where id_detalle_carrera_curso_profesor = _idDetalleCarreraCursoProfesor;
END //
DELIMITER ;

call sp_eliminarDetalleCarreraCursoNotasAlumno (1);
select * from tbl_detalle_carrera_cursos_notas_alumno;

DELIMITER //
create procedure sp_ingresarDetalleCarreraPago(
in _idDetalleCarreraPago int,
in _idCarrera int,
in _idPago int,
in _nombreCarrera varchar(30),
in _nombrePago varchar(60))
begin
insert into tbl_detalle_carrera_pago(
id_detalle_carrera_pago,
id_carrera,
id_pago,
nombre_del_carrera,
tipo_pago,
notas)
values (_idDetalleCarreraPago,_idCarrera,_idPago,_nombreCarrera,_nombrePago);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleCarreraCursoProfesor;

DELIMITER //
create procedure sp_agregarDetalleCarreraPago(
in _idDetalleCarreraPago int,
in _idCarrera int,
in _idPago int,
in _nombreCarrera varchar(30),
in _nombrePago varchar(60))
begin
insert into tbl_detalle_carrera_pago(
id_detalle_carrera_pago,
id_carrera,
id_pago,
nombre_carrera,
tipo_pago)
values (_idDetalleCarreraPago,_idCarrera,_idPago,_nombreCarrera,_nombrePago);
END //
DELIMITER ;

drop procedure sp_agregarDetalleCarreraPago;

DELIMITER //
create procedure sp_actualizarDetalleCarreraPago(
in _idDetalleCarreraPago int,
in _idCarrera int,
in _idPago int,
in _nombreCarrera varchar(30),
in _nombrePago varchar(60))
begin
update tbl_detalle_carrera_pago
set id_detalle_carrera_pago = _idDetalleCarreraPago, id_carrera = _idCarrera, id_pago = _idPago, nombre_carrera = _nombreCarrera, tipo_pago = _nombrePago
where id_detalle_carrera_pago = _idDetalleCarreraPago;
END //
DELIMITER ;

drop procedure sp_actualizarDetalleCarreraCursoProfesor;

DELIMITER //
create procedure sp_eliminarDetalleCarreraPago(
in _idDetalleCarreraPago int)
begin
delete from tbl_detalle_carrera_pago where id_detalle_carrera_pago = _idDetalleCarreraPago;
END //
DELIMITER ;

call sp_eliminarDetalleCarreraCursoNotasAlumno (1);
select * from tbl_detalle_carrera_cursos_notas_alumno;

DELIMITER //
create procedure sp_ingresarDetalleDepartamentoMunicipioAlumno(
in _idDetalleDepartamentoMunicipioAlumno int,
in _idDepartamento int,
in _idMunicipio int,
in _idAlumno int,
in _nombreDepartamento varchar(30),
in _nombreMunicipio varchar(60),
in _nombreAlumno varchar(60))
begin
insert into tbl_detalle_departamento_municipio_alumno(
id_detalle_departamento_municipio_alumno,
id_departamento,
id_municipio,
id_alumno,
departamento,
municipio,
nombre_del_alumno)
values (_idDetalleDepartamentoMunicipioAlumno,_idDepartamento,_idMunicipio,_idAlumno,_nombreDepartamento,_nombreMunicipio,_nombreAlumno);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleDepartamentoMunicipioAlumno;

DELIMITER //
create procedure sp_agregarDetalleDepartamentoMunicipioAlumno(
in _idDetalleDepartamentoMunicipioAlumno int,
in _idDepartamento int,
in _idMunicipio int,
in _idAlumno int,
in _nombreDepartamento varchar(30),
in _nombreMunicipio varchar(60),
in _nombreAlumno varchar(60))
begin
insert into tbl_detalle_departamento_municipio_alumno(
id_detalle_departamento_municipio_alumno,
id_departamento,
id_municipio,
id_alumno,
departamento,
municipio,
alumno)
values (_idDetalleDepartamentoMunicipioAlumno,_idDepartamento,_idMunicipio,_idAlumno,_nombreDepartamento,_nombreMunicipio,_nombreAlumno);
END //
DELIMITER ;

drop procedure sp_agregarDetalleDepartamentoMunicipioAlumno;

DELIMITER //
create procedure sp_actualizarDetalleDepartamentoMunicipioAlumno(
in _idDetalleDepartamentoMunicipioAlumno int,
in _idDepartamento int,
in _idMunicipio int,
in _idAlumno int,
in _nombreDepartamento varchar(30),
in _nombreMunicipio varchar(60),
in _nombreAlumno varchar(60))
begin
update tbl_detalle_departamento_municipio_alumno
set id_detalle_departamento_municipio_alumno = _idDetalleDepartamentoMunicipioAlumno, id_departamento = _idDepartamento, id_municipio = _idMunicipio, departamento = _nombreDepartamento, municipio = _nombreMunicipio, nombre_del_alumno = _nombreAlumno
where id_detalle_departamento_municipio_alumno = _idDetalleDepartamentoMunicipioAlumno;
END //
DELIMITER ;

drop procedure sp_actualizarDetalleCarreraCursoProfesor;

DELIMITER //
create procedure sp_eliminarDetalleDepartamentoMunicipioAlumno(
in _idDetalleDepartamentoMunicipioAlumno int)
begin
delete from tbl_detalle_departamento_municipio_alumno where id_detalle_departamento_municipio_alumno = _idDetalleDepartamentoMunicipioAlumno;
END //
DELIMITER ;

drop procedure sp_eliminarDetalleDepartamentoMunicipioAlumno;
call sp_eliminarDetalleCarreraPago (1);
select * from tbl_detalle_departamento_municipio_alumno;

-- sitio profesor delimiter
DELIMITER //
create procedure sp_ingresarDetalleDepartamentoMunicipioProfesor(
in _idDetalleDepartamentoMunicipioProfesor int,
in _idDepartamento int,
in _idMunicipio int,
in _idProfesor int,
in _nombreDepartamento varchar(30),
in _nombreMunicipio varchar(60),
in _nombreProfesor varchar(60))
begin
insert into tbl_detalle_departamento_municipio_profesor(
id_detalle_departamento_municipio_profesor,
id_departamento,
id_municipio,
id_profesor,
departamento,
municipio,
nombre_del_profesor)
values (_idDetalleDepartamentoMunicipioProfesor,_idDepartamento,_idMunicipio,_idProfesor,_nombreDepartamento,_nombreMunicipio,_nombreProfesor);
END //
DELIMITER ;

drop procedure sp_ingresarDetalleDepartamentoMunicipioProfesor;

DELIMITER //
create procedure sp_agregarDetalleDepartamentoMunicipioProfesor(
in _idDetalleDepartamentoMunicipioProfesor int,
in _idDepartamento int,
in _idMunicipio int,
in _idProfesor int,
in _nombreDepartamento varchar(30),
in _nombreMunicipio varchar(60),
in _nombreProfesor varchar(60))
begin
insert into tbl_detalle_departamento_municipio_profesor(
id_detalle_departamento_municipio_profesor,
id_departamento,
id_municipio,
id_profesor,
departamento,
municipio,
nombre_del_profesor)
values (_idDetalleDepartamentoMunicipioProfesor,_idDepartamento,_idMunicipio,_idProfesor,_nombreDepartamento,_nombreMunicipio,_nombreProfesor);
END //
DELIMITER ;

drop procedure sp_agregarDetalleDepartamentoMunicipioProfesor;

DELIMITER //
create procedure sp_actualizarDetalleDepartamentoMunicipioProfesor(
in _idDetalleDepartamentoMunicipioProfesor int,
in _idDepartamento int,
in _idMunicipio int,
in _idProfesor int,
in _nombreDepartamento varchar(30),
in _nombreMunicipio varchar(60),
in _nombreProfesor varchar(60))
begin
update tbl_detalle_departamento_municipio_profesor
set id_detalle_departamento_municipio_profesor = _idDetalleDepartamentoMunicipioProfesor, id_departamento = _idDepartamento, id_municipio = _idMunicipio, departamento = _nombreDepartamento, municipio = _nombreMunicipio, nombre_del_profesor = _nombreProfesor
where id_detalle_departamento_municipio_profesor = _idDetalleDepartamentoMunicipioProfesor;
END //
DELIMITER ;

drop procedure sp_actualizarDetalleDepartamentoMunicipioProfesor;

DELIMITER //
create procedure sp_eliminarDetalleDepartamentoMunicipioProfesor(
in _idDetalleDepartamentoMunicipioProfesor int)
begin
delete from tbl_detalle_departamento_municipio_profesor where id_detalle_departamento_municipio_profesor = _idDetalleDepartamentoMunicipioProfesor;
END //
DELIMITER ;

drop procedure sp_eliminarDetalleDepartamentoMunicipioProfesor;
call sp_eliminarDetalleDepartamentoMunicipioProfesor (1);
select * from tbl_detalle_departamento_municipio_profesor;