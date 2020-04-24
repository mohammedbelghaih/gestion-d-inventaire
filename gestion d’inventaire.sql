create table Rayon (
    R_nom varchar(20),
    R_id int,
    primary key(R_id)
    )
create table Fournisseur (
    F_nom varchar(30),
    F_id int,
    tel int,
    Email varchar(30),
    primary key(F_id)
    )
create table Produits (
    P_nom varchar(30),
    P_id int,
    date_de_production date,
    date_expiration date,
    primary key(P_id),
    id_rayon int,
    foreign key(id_rayon) references Rayon(R_id),
    id_fournisseur int, 
    foreign key(id_fournisseur) references Fournisseur(F_id)
    )