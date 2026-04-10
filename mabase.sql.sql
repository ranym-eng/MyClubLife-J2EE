drop table if exists CLIENT;

drop table if exists COMMANDE;

drop table if exists DETAIL;

drop table if exists PRODUIT;

/*==============================================================*/
/* Table: CLIENT                                                */
/*==============================================================*/
create table CLIENT
(
   NUMCLI               int not null,
   NOMCLI               varchar(20),
   VILLE                varchar(20),
   CATEGORIE            char(2),
   COMPTE               float(8,2),
   primary key (NUMCLI)
);

/*==============================================================*/
/* Table: COMMANDE                                              */
/*==============================================================*/
create table COMMANDE
(
   NUMCOM               int not null,
   NUMCLI               int not null,
   DATECOM              date,
   primary key (NUMCOM)
);

/*==============================================================*/
/* Table: DETAIL                                                */
/*==============================================================*/
create table DETAIL
(
   NUMCOM               int not null,
   NUMPRO               int not null,
   QCOM                 int,
   primary key (NUMCOM, NUMPRO)
);

/*==============================================================*/
/* Table: PRODUIT                                               */
/*==============================================================*/
create table PRODUIT
(
   NUMPRO               int not null,
   NOMPRO               varchar(1024),
   PRIX                 float(8,2),
   QSTOCK               int,
   primary key (NUMPRO)
);

alter table COMMANDE add constraint FK_FAIRE foreign key (NUMCLI)
      references CLIENT (NUMCLI) on delete restrict on update restrict;

alter table DETAIL add constraint FK_DETAIL foreign key (NUMPRO)
      references PRODUIT (NUMPRO) on delete restrict on update restrict;

alter table DETAIL add constraint FK_DETAIL2 foreign key (NUMCOM)
      references COMMANDE (NUMCOM) on delete restrict on update restrict;

