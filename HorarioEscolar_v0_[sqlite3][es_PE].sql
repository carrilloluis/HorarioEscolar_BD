DROP TABLE IF EXISTS [Alumno];
CREATE TABLE IF NOT EXISTS [Alumno]
(
	[id] CHAR(36) NOT NULL,
	[nombre completo] VARCHAR(128) NOT NULL,
	PRIMARY KEY([id])
) WITHOUT RowId;

DROP TABLE IF EXISTS [Asignatura];
CREATE TABLE IF NOT EXISTS [Asignatura] 
(
	[id] CHAR(64) NOT NULL,
	[denominación] VARCHAR(128) NOT NULL,
	PRIMARY KEY([id])
) WITHOUT RowId;

DROP TABLE IF EXISTS [Horario Escolar];
CREATE TABLE IF NOT EXISTS [Horario Escolar]
(
	[id] CHAR(36) NOT NULL,
	[id del Alumno] CHAR(36) NOT NULL REFERENCES [Alumno](id),
	PRIMARY KEY([id])
) WITHOUT RowId;

DROP TABLE IF EXISTS [Detalle del Horario Escolar];
CREATE TABLE IF NOT EXISTS [Detalle del Horario Escolar]
(
	[id] INTEGER UNSIGNED NOT NULL,
	[id del Horario Escolar] CHAR(36) NOT NULL REFERENCES [Horario Escolar](id),
	[id de Asignatura] CHAR(36) NOT NULL REFERENCES [Asignatura](id),
	-- CHECK('día de la semana' >= 0 AND 'día de la semana' < 7)
	[día de la semana] INTEGER UNSIGNED NOT NULL, -- DAY 0..6
	[hora inicial] INTEGER UNSIGNED NOT NULL, -- hora * 0..23 + minutos
	[hora de cierre] INTEGER UNSIGNED NOT NULL,
	PRIMARY KEY([id])
) WITHOUT RowId;

 