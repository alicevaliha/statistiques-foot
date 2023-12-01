-- create database foot_stats;
-- use foot_stats;

create table equipe(
    id_equipe int auto_increment primary key,
    nomEquipe varchar(100)
);

    insert into equipe values (null, 'Manchester City');
    insert into equipe values (null, 'Liverpool');
    insert into equipe values (null, 'FC Barcelone');
    insert into equipe values (null, 'Real Madrid');


create table joueur(
    id_joueur int auto_increment primary key,
    nom varchar(100),
    id_equipe int,
    FOREIGN KEY (id_equipe) REFERENCES  equipe(id_equipe)
);

    insert into joueur values (null, 'Ederson Moraes', 1);
    insert into joueur values (null, 'Kyle Walker', 1);
    insert into joueur values (null, 'Ruben Dias', 1);
    insert into joueur values (null, 'John Stones', 1);
    insert into joueur values (null, 'Nathan Aké', 1);
    insert into joueur values (null, 'Manuel Akanji', 1);
    insert into joueur values (null, 'Jack Grealish', 1);
    insert into joueur values (null, 'Kevin de Bruyne', 1);
    insert into joueur values (null, 'Bernardo Silva', 1);
    insert into joueur values (null, 'Phil Foden', 1);
    insert into joueur values (null, 'Erling Haaland', 1);

    insert into joueur values (null, 'Alisson Becker', 2);
    insert into joueur values (null, 'Virgil Van Dijk', 2);
    insert into joueur values (null, 'Ibrahima Konate', 2);
    insert into joueur values (null, 'Trent Alexander Arnold', 2);
    insert into joueur values (null, 'Joel Matip', 2);
    insert into joueur values (null, 'Thiago Alcantara', 2);
    insert into joueur values (null, 'Curtis Jones', 2);
    insert into joueur values (null, 'Harvey Elliott', 2);
    insert into joueur values (null, 'Mohamed Salah', 2);
    insert into joueur values (null, 'Luis Diaz', 2);
    insert into joueur values (null, 'Darwin Nunez', 2);


create table competition(
    id_competition int auto_increment primary key,
    nomcompetition varchar(100),
    datedeb date,
    datefin date
);

    insert into competition values (null, 'Premier League', '2023-08-12', '2023-05-19');
    insert into competition values (null, 'Liga', '2023-08-12', '2023-05-26');


CREATE TABLE matches(
    id_matches int auto_increment primary key,
    id_competition int,
    id_equipe1 INT,
    id_equipe2 INT,
    datematches DATE,
    FOREIGN KEY (id_equipe1) REFERENCES equipe(id_equipe),
    FOREIGN KEY (id_equipe2) REFERENCES equipe(id_equipe),
    FOREIGN KEY (id_competition) REFERENCES competition(id_competition)
);

    insert into matches values (null, 1, 1, 2, '2023-11-25');

    insert into matches values (null, 1, 2, 3, '2023-10-28');



create table action(
    id_action int auto_increment primary key,
    typeaction int,
    id_joueur int,
    id_matches int,
    FOREIGN KEY (id_joueur) REFERENCES  joueur(id_joueur),
    FOREIGN KEY (id_matches) REFERENCES  matches(id_matches)
);
    -- 0 tir --5 tir CA -- 10 tacles -- 20 interception --30 hors jeux
    --40 drible -- 50 Faute --60 aérien gagné --70 but

    --buts de Haaland et Arnold --tirs et tirs Ca
    insert into action values (null, 70, 11, 1);
    
    insert into action values (null, 70, 15, 1);
    insert into action values (null, 0, 11, 1);
    insert into action values (null, 0, 15, 1);
    insert into action values (null, 5, 11, 1);
    insert into action values (null, 5, 15, 1);

    --interception, aérien Van Dijk 
    insert into action values (null, 20, 13, 1);
    insert into action values (null, 20, 13, 1);
    insert into action values (null, 60, 3, 1);
    insert into action values (null, 60, 3, 1);

    --fautes et tacles Kyle et Matip
    insert into action values (null, 50, 2, 1);
    insert into action values (null, 50, 2, 1);
    insert into action values (null, 50, 16, 1);
    insert into action values (null, 50, 16, 1);
    insert into action values (null, 50, 16, 1);
    insert into action values (null, 10, 2, 1);
    insert into action values (null, 10, 16, 1);

    --tirs et tirs CA Foden, Salah , Silva, Diaz
    insert into action values (null, 0, 10, 1);
    insert into action values (null, 0, 20, 1);
    insert into action values (null, 0, 10, 1);
    insert into action values (null, 0, 20, 1);
    insert into action values (null, 5, 10, 1);
    insert into action values (null, 5, 20, 1);

    insert into action values (null, 0, 9, 1);
    insert into action values (null, 0, 21, 1);
    insert into action values (null, 0, 9, 1);
    insert into action values (null, 0, 21, 1);
    insert into action values (null, 5, 21, 1);
    insert into action values (null, 5, 21, 1);
    insert into action values (null, 5, 9, 1);

    --hors jeux Haaland, Jones, Nunez, Silva, Foden, Diaz, Alcantara, Grealish
    insert into action values (null, 30, 11, 1);
    insert into action values (null, 30, 18, 1);
    insert into action values (null, 30, 22, 1);
    insert into action values (null, 30, 9, 1);
    insert into action values (null, 30, 10, 1);
    insert into action values (null, 30, 21, 1);
    insert into action values (null, 30, 7, 1);
    insert into action values (null, 30, 17, 1);

    insert into action values (null, 40, 1, 1);
    insert into action values (null, 40, 2, 1);
    insert into action values (null, 40, 3, 1);
    insert into action values (null, 40, 4, 1);
    insert into action values (null, 40, 5, 1);
    insert into action values (null, 40, 6, 1);
    insert into action values (null, 40, 7, 1);
    insert into action values (null, 40, 8, 1);
    insert into action values (null, 40, 8, 1);
    insert into action values (null, 40, 8, 1);
    insert into action values (null, 40, 9, 1);
    insert into action values (null, 40, 9, 1);
    insert into action values (null, 40, 9, 1);
    insert into action values (null, 40, 9, 1);
    insert into action values (null, 40, 10, 1);
    insert into action values (null, 40, 10, 1);
    insert into action values (null, 40, 11, 1);
    insert into action values (null, 40, 11, 1);
    insert into action values (null, 40, 11, 1);
    insert into action values (null, 40, 11, 1);
    insert into action values (null, 40, 12, 1);
    insert into action values (null, 40, 13, 1);
    insert into action values (null, 40, 14, 1);
    insert into action values (null, 40, 15, 1);
    insert into action values (null, 40, 16, 1);
    insert into action values (null, 40, 17, 1);
    insert into action values (null, 40, 18, 1);
    insert into action values (null, 40, 19, 1);
    insert into action values (null, 40, 20, 1);
    insert into action values (null, 40, 20, 1);
    insert into action values (null, 40, 20, 1);
    insert into action values (null, 40, 20, 1);
    insert into action values (null, 40, 20, 1);
    insert into action values (null, 40, 20, 1);
    insert into action values (null, 40, 21, 1);
    insert into action values (null, 40, 21, 1);
    insert into action values (null, 40, 22, 1);
    insert into action values (null, 40, 22, 1);
    insert into action values (null, 40, 22, 1);
    insert into action values (null, 40, 2, 1);


CREATE TABLE possession (
    id_possession INT AUTO_INCREMENT PRIMARY KEY,
    id_equipe INT,
    id_matches INT,
    pourcentage DOUBLE,
    FOREIGN KEY (id_matches) REFERENCES matches(id_matches),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe)
);

    insert into possession values (null, 1, 1, 52);
    insert into possession values (null, 2, 1, 48);


--j'ai changé reussite en double
 create table passes(
    id_passes int auto_increment primary key,
    id_equipe int,
    id_matches int,
    reussite double, 
    FOREIGN KEY (id_matches) REFERENCES  matches(id_matches),
    FOREIGN KEY (id_equipe) REFERENCES  equipe(id_equipe)
 );

    insert into passes values (null, 1, 1, 96.7);
    insert into passes values (null, 2, 1, 95.8);

 create table carton(
    id_carton int auto_increment primary key,
    id_joueur int,
    id_matches int,
    typecarton int,
    FOREIGN KEY (id_joueur) REFERENCES  joueur(id_joueur),
    FOREIGN KEY (id_matches) REFERENCES  matches(id_matches)
);
    -- 0: jaune, 10: rouge 

    insert into carton values (null, 22, 1, 0);
    insert into carton values (null, 16, 1, 0);
    insert into carton values (null, 9, 1, 0);


--JE BOSSE LINERAIREMENT A PARTIR D'ICI MAINTENANT COMME CA Y A VOILA QUOI