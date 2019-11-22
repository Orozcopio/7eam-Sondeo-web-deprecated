/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2014                    */
/* Created on:     10/19/2019 10:56:58 PM                       */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('municipio') and o.name = 'fk_municipi_pertenece_departam')
alter table municipio
   drop constraint fk_municipi_pertenece_departam
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('producto') and o.name = 'fk_producto_mide_medida')
alter table producto
   drop constraint fk_producto_mide_medida
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('producto') and o.name = 'fk_producto_se_clasif_categori')
alter table producto
   drop constraint fk_producto_se_clasif_categori
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('producto') and o.name = 'fk_producto_tiene_marca')
alter table producto
   drop constraint fk_producto_tiene_marca
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('reporte') and o.name = 'fk_reporte_genera_usuario')
alter table reporte
   drop constraint fk_reporte_genera_usuario
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('reporte') and o.name = 'fk_reporte_genera2_sondeo')
alter table reporte
   drop constraint fk_reporte_genera2_sondeo
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('sondeo') and o.name = 'fk_sondeo_se_compon_producto')
alter table sondeo
   drop constraint fk_sondeo_se_compon_producto
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('sondeo') and o.name = 'fk_sondeo_se_realiz_municipi')
alter table sondeo
   drop constraint fk_sondeo_se_realiz_municipi
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('usuario') and o.name = 'fk_usuario_es_cliente')
alter table usuario
   drop constraint fk_usuario_es_cliente
go

if exists (select 1
            from  sysobjects
           where  id = object_id('categoria')
            and   type = 'U')
   drop table categoria
go

if exists (select 1
            from  sysobjects
           where  id = object_id('cliente')
            and   type = 'U')
   drop table cliente
go

if exists (select 1
            from  sysobjects
           where  id = object_id('departamento')
            and   type = 'U')
   drop table departamento
go

if exists (select 1
            from  sysobjects
           where  id = object_id('marca')
            and   type = 'U')
   drop table marca
go

if exists (select 1
            from  sysobjects
           where  id = object_id('medida')
            and   type = 'U')
   drop table medida
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('municipio')
            and   name  = 'pertenece_fk'
            and   indid > 0
            and   indid < 255)
   drop index municipio.pertenece_fk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('municipio')
            and   type = 'U')
   drop table municipio
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('producto')
            and   name  = 'tiene_fk'
            and   indid > 0
            and   indid < 255)
   drop index producto.tiene_fk
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('producto')
            and   name  = 'mide_fk'
            and   indid > 0
            and   indid < 255)
   drop index producto.mide_fk
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('producto')
            and   name  = 'se_clasifica_fk'
            and   indid > 0
            and   indid < 255)
   drop index producto.se_clasifica_fk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('producto')
            and   type = 'U')
   drop table producto
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('reporte')
            and   name  = 'genera2_fk'
            and   indid > 0
            and   indid < 255)
   drop index reporte.genera2_fk
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('reporte')
            and   name  = 'genera_fk'
            and   indid > 0
            and   indid < 255)
   drop index reporte.genera_fk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('reporte')
            and   type = 'U')
   drop table reporte
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('sondeo')
            and   name  = 'se_compone_fk'
            and   indid > 0
            and   indid < 255)
   drop index sondeo.se_compone_fk
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('sondeo')
            and   name  = 'se_realiza_fk'
            and   indid > 0
            and   indid < 255)
   drop index sondeo.se_realiza_fk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('sondeo')
            and   type = 'U')
   drop table sondeo
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('usuario')
            and   name  = 'es_fk'
            and   indid > 0
            and   indid < 255)
   drop index usuario.es_fk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('usuario')
            and   type = 'U')
   drop table usuario
go

/*==============================================================*/
/* Table: categoria                                             */
/*==============================================================*/
create table categoria (
   id_categoria         varchar(10)          not null,
   categoria            varchar(25)          not null,
   descripcion          varchar(100)         not null,
   constraint pk_categoria primary key (id_categoria)
)
go

/*==============================================================*/
/* Table: cliente                                               */
/*==============================================================*/
create table cliente (
   documento            varchar(10)          not null,
   nombres              varchar(100)         not null,
   apellidos            varchar(100)         not null,
   constraint pk_cliente primary key (documento)
)
go

/*==============================================================*/
/* Table: departamento                                          */
/*==============================================================*/
create table departamento (
   id_depto             int                  not null,
   departamento         varchar(25)          not null,
   constraint pk_departamento primary key (id_depto)
)
go

/*==============================================================*/
/* Table: marca                                                 */
/*==============================================================*/
create table marca (
   id_marca             varchar(10)          not null,
   marca                varchar(50)          not null,
   constraint pk_marca primary key (id_marca)
)
go

/*==============================================================*/
/* Table: medida                                                */
/*==============================================================*/
create table medida (
   unidad_medida        varchar(5)           not null,
   cantidad             int                  not null,
   constraint pk_medida primary key (unidad_medida)
)
go

/*==============================================================*/
/* Table: municipio                                             */
/*==============================================================*/
create table municipio (
   id_municipio         varchar(5)           not null,
   id_depto             int                  null,
   municipio            varchar(50)          not null,
   area                 varchar(50)          not null,
   localidad            varchar(50)          not null,
   constraint pk_municipio primary key (id_municipio)
)
go

/*==============================================================*/
/* Index: pertenece_fk                                          */
/*==============================================================*/




create nonclustered index pertenece_fk on municipio (id_depto asc)
go

/*==============================================================*/
/* Table: producto                                              */
/*==============================================================*/
create table producto (
   id_producto          varchar(25)          not null,
   id_categoria         varchar(10)          null,
   unidad_medida        varchar(5)           null,
   id_marca             varchar(10)          null,
   nombre               varchar(50)          not null,
   presentacion         varchar(50)          not null,
   precio_consulta      numeric(8,2)         not null,
   tipo                 varchar(50)          not null,
   constraint pk_producto primary key (id_producto)
)
go

/*==============================================================*/
/* Index: se_clasifica_fk                                       */
/*==============================================================*/




create nonclustered index se_clasifica_fk on producto (id_categoria asc)
go

/*==============================================================*/
/* Index: mide_fk                                               */
/*==============================================================*/




create nonclustered index mide_fk on producto (unidad_medida asc)
go

/*==============================================================*/
/* Index: tiene_fk                                              */
/*==============================================================*/




create nonclustered index tiene_fk on producto (id_marca asc)
go

/*==============================================================*/
/* Table: reporte                                               */
/*==============================================================*/
create table reporte (
   id_reporte           varchar(25)          not null,
   id_sondeo            varchar(50)          null,
   id_usuario           varchar(50)          null,
   fecha_reporte        datetime             not null,
   constraint pk_reporte primary key (id_reporte)
)
go

/*==============================================================*/
/* Index: genera_fk                                             */
/*==============================================================*/




create nonclustered index genera_fk on reporte (id_usuario asc)
go

/*==============================================================*/
/* Index: genera2_fk                                            */
/*==============================================================*/




create nonclustered index genera2_fk on reporte (id_sondeo asc)
go

/*==============================================================*/
/* Table: sondeo                                                */
/*==============================================================*/
create table sondeo (
   id_sondeo            varchar(50)          not null,
   id_municipio         varchar(5)           not null,
   id_producto          varchar(25)          null,
   fecha                datetime             not null,
   local                varchar(100)         not null,
   constraint pk_sondeo primary key (id_sondeo)
)
go

/*==============================================================*/
/* Index: se_realiza_fk                                         */
/*==============================================================*/




create nonclustered index se_realiza_fk on sondeo (id_municipio asc)
go

/*==============================================================*/
/* Index: se_compone_fk                                         */
/*==============================================================*/




create nonclustered index se_compone_fk on sondeo (id_producto asc)
go

/*==============================================================*/
/* Table: usuario                                               */
/*==============================================================*/
create table usuario (
   id_usuario           varchar(50)          not null,
   documento            varchar(10)          null,
   password             varchar(10)          not null,
   rol                  varchar(10)          not null,
   constraint pk_usuario primary key (id_usuario)
)
go

/*==============================================================*/
/* Index: es_fk                                                 */
/*==============================================================*/




create nonclustered index es_fk on usuario (documento asc)
go

alter table municipio
   add constraint fk_municipi_pertenece_departam foreign key (id_depto)
      references departamento (id_depto)
go

alter table producto
   add constraint fk_producto_mide_medida foreign key (unidad_medida)
      references medida (unidad_medida)
go

alter table producto
   add constraint fk_producto_se_clasif_categori foreign key (id_categoria)
      references categoria (id_categoria)
go

alter table producto
   add constraint fk_producto_tiene_marca foreign key (id_marca)
      references marca (id_marca)
go

alter table reporte
   add constraint fk_reporte_genera_usuario foreign key (id_usuario)
      references usuario (id_usuario)
go

alter table reporte
   add constraint fk_reporte_genera2_sondeo foreign key (id_sondeo)
      references sondeo (id_sondeo)
go

alter table sondeo
   add constraint fk_sondeo_se_compon_producto foreign key (id_producto)
      references producto (id_producto)
go

alter table sondeo
   add constraint fk_sondeo_se_realiz_municipi foreign key (id_municipio)
      references municipio (id_municipio)
go

alter table usuario
   add constraint fk_usuario_es_cliente foreign key (documento)
      references cliente (documento)
go

