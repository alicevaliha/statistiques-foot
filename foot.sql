create database foot_stats;
use foot_stats;

create table equipe(
    id_equipe int auto_increment primary key,
    nomEquipe varchar(100)
);

create table joueur(
    id_joueur int auto_increment primary key,
    nom varchar(100),
    id_equipe int,
    FOREIGN KEY (id_equipe) REFERENCES  equipe(id_equipe)
);

create table competition(
    id_competition int auto_increment primary key,
    nomcompetition varchar(100),
    datedeb date,
    datefin date
);

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

create table action(
    id_action int auto_increment primary key,
    typeaction int,
    id_joueur int,
    id_matches int,
    FOREIGN KEY (id_joueur) REFERENCES  joueur(id_joueur),
    FOREIGN KEY (id_matches) REFERENCES  matches(id_matches)
);

CREATE TABLE possession (
    id_possession INT AUTO_INCREMENT PRIMARY KEY,
    id_equipe INT,
    id_matches INT,
    pourcentage DOUBLE,
    FOREIGN KEY (id_matches) REFERENCES matches(id_matches),
    FOREIGN KEY (id_equipe) REFERENCES equipe(id_equipe)
);

 create table passes(
    id_passes int auto_increment primary key,
    id_equipe int,
    id_matches int,
    reussite double, 
    FOREIGN KEY (id_matches) REFERENCES  matches(id_matches),
    FOREIGN KEY (id_equipe) REFERENCES  equipe(id_equipe)
 );

  create table carton(
    id_carton int auto_increment primary key,
    id_joueur int,
    id_matches int,
    typecarton int,
    FOREIGN KEY (id_joueur) REFERENCES  joueur(id_joueur),
    FOREIGN KEY (id_matches) REFERENCES  matches(id_matches)
);

    insert into equipe values (null, 'Manchester City');
    insert into equipe values (null, 'Liverpool');
    insert into equipe values (null, 'Arsenal');
    insert into equipe values (null, 'Chelsea');

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

    insert into joueur values (null, 'David Raya', 3);
    insert into joueur values (null, 'William Saliba', 3);
    insert into joueur values (null, 'Benjamin White', 3);
    insert into joueur values (null, 'Oleksandr Zinchenko',3);
    insert into joueur values (null, 'Takehiro Tomiyasu', 3);
    insert into joueur values (null, 'Thomas Partey', 3);
    insert into joueur values (null, 'Declan Rice', 3);
    insert into joueur values (null, 'Martin Odegaard', 3);
    insert into joueur values (null, 'Bukayo Saka', 3);
    insert into joueur values (null, 'Gabriel Jesus', 3);
    insert into joueur values (null, 'Kai Havertz', 3);

    insert into joueur values (null, 'Kepa Arrizabalaga', 4);
    insert into joueur values (null, 'Thiago Silva',4);
    insert into joueur values (null, 'Reece James',4);
    insert into joueur values (null, 'Wesley Fofana',4 );
    insert into joueur values (null, 'Trevoh Chalobah',4 );
    insert into joueur values (null, 'Conor Gallaghe',4);
    insert into joueur values (null, 'Andrey Santos',4);
    insert into joueur values (null, 'Lesley Ugochukwu',4);
    insert into joueur values (null, 'Christopher Nkunku',4);
    insert into joueur values (null, 'Carney Chukwuemeka',4);
    insert into joueur values (null, 'Raheem Sterling',4);

    insert into competition values (null, 'Premier League', '2023-08-12', '2023-05-19');

    insert into matches values (null, 1, 1, 2, '2023-11-25');
    insert into matches values (null, 1, 3, 4, '2023-11-24');
    insert into matches values (null, 1, 4, 1, '2023-11-28');
    insert into matches values (null, 1, 2, 3, '2023-11-29');

    insert into possession values (null, 1, 1, 52);
    insert into possession values (null, 2, 1, 48);


    insert into passes values (null, 1, 1, 96.7);
    insert into passes values (null, 2, 1, 95.8);


    insert into carton values (null, 22, 1, 10);
    insert into carton values (null, 16, 1, 0);
    insert into carton values (null, 9, 1, 0);



    insert into action values (null, 70, 11, 1);
    insert into action values (null, 70, 15, 1);
    insert into action values (null, 0, 11, 1);
    insert into action values (null, 0, 15, 1);
    insert into action values (null, 5, 11, 1);
    insert into action values (null, 5, 15, 1);

    insert into action values (null, 20, 13, 1);
    insert into action values (null, 20, 13, 1);
    insert into action values (null, 60, 3, 1);
    insert into action values (null, 60, 3, 1);


    insert into action values (null, 50, 2, 1);
    insert into action values (null, 50, 2, 1);
    insert into action values (null, 50, 16, 1);
    insert into action values (null, 50, 16, 1);
    insert into action values (null, 50, 16, 1);
    insert into action values (null, 10, 2, 1);
    insert into action values (null, 10, 16, 1);


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
    insert into action values (null, 40, 22, 1);


    insert into possession values (null, 3, 2, 58);
    insert into possession values (null, 4, 2, 42);

    insert into passes values (null, 3, 2, 86.7);
    insert into passes values (null, 4, 2, 82.9);

    insert into carton values (null, 27, 2, 0);
    insert into carton values (null, 27, 2, 10);
    insert into carton values (null, 30, 2, 0);

    insert into action values (null, 70, 44, 2);
    insert into action values (null, 70, 33, 2);
    insert into action values (null, 70, 32, 2);

    insert into action values (null, 5, 33, 2);
    insert into action values (null, 5, 44, 2);
    insert into action values (null, 5, 43, 2);
    insert into action values (null, 0, 31, 2);

    insert into action values (null, 20, 25, 2);
    insert into action values (null, 20, 38, 2);
    insert into action values (null, 60, 38, 2);
    insert into action values (null, 60, 25, 2);
    insert into action values (null, 60, 25, 2);


    insert into action values (null, 50, 35, 2);
    insert into action values (null, 50, 36, 2);
    insert into action values (null, 50, 37, 2);
    insert into action values (null, 50, 24, 2);
    insert into action values (null, 50, 26, 2);
    insert into action values (null, 10, 35, 2);
    insert into action values (null, 10, 35, 2);
    insert into action values (null, 10, 36, 2);
    insert into action values (null, 10, 24, 2);
    insert into action values (null, 10, 25, 2);
    insert into action values (null, 10, 26, 2);
    insert into action values (null, 10, 26, 2);

    insert into action values (null, 0, 31, 2);
    insert into action values (null, 0, 32, 2);
    insert into action values (null, 0, 33, 2);
    insert into action values (null, 0, 33, 2);
    insert into action values (null, 5, 32, 2);
    insert into action values (null, 5, 31, 2);
    insert into action values (null, 5, 31, 2);

    insert into action values (null, 0, 44, 2);
    insert into action values (null, 0, 44, 2);
    insert into action values (null, 0, 42, 2);
    insert into action values (null, 0, 42, 2);
    insert into action values (null, 5, 42, 2);
    insert into action values (null, 5, 42, 2);
    insert into action values (null, 5, 43, 2);

    insert into action values (null, 30, 39, 2);
    insert into action values (null, 30, 40, 2);
    insert into action values (null, 30, 41, 2);
    insert into action values (null, 30, 43, 2);
    insert into action values (null, 30, 28, 2);
    insert into action values (null, 30, 29, 2);
    insert into action values (null, 30, 30, 2);
    insert into action values (null, 30, 31, 2);


    insert into action values (null, 40, 24, 2);
    insert into action values (null, 40, 25, 2);
    insert into action values (null, 40, 26, 2);
    insert into action values (null, 40, 26, 2);
    insert into action values (null, 40, 27, 2);
    insert into action values (null, 40, 28, 2);
    insert into action values (null, 40, 29, 2);
    insert into action values (null, 40, 29, 2);
    insert into action values (null, 40, 32, 2);
    insert into action values (null, 40, 32, 2);
    insert into action values (null, 40, 33, 2);
    insert into action values (null, 40, 33, 2);
    insert into action values (null, 40, 33, 2);
    insert into action values (null, 40, 35, 2);
    insert into action values (null, 40, 35, 2);
    insert into action values (null, 40, 35, 2);
    insert into action values (null, 40, 36, 2);
    insert into action values (null, 40, 37, 2);
    insert into action values (null, 40, 38, 2);
    insert into action values (null, 40, 38, 2);
    insert into action values (null, 40, 39, 2);
    insert into action values (null, 40, 39, 2);
    insert into action values (null, 40, 40, 2);
    insert into action values (null, 40, 40, 2);
    insert into action values (null, 40, 41, 2);
    insert into action values (null, 40, 42, 2);
    insert into action values (null, 40, 43, 2);
    insert into action values (null, 40, 43, 2);
    insert into action values (null, 40, 43, 2);
    insert into action values (null, 40, 43, 2);
    insert into action values (null, 40, 44, 2);
    insert into action values (null, 40, 44, 2);
    insert into action values (null, 40, 44, 2);


    insert into possession values (null, 1, 3, 61);
    insert into possession values (null, 4, 3, 39);

    insert into passes values (null, 1, 3, 86.7);
    insert into passes values (null, 4, 3, 82.9);

    insert into carton values (null, 3, 3, 0);
    insert into carton values (null, 27, 3, 0);

    insert into action values (null, 70, 11, 3);
    insert into action values (null, 0, 11, 3);
    insert into action values (null, 0, 15, 4);
    insert into action values (null, 5, 10, 3);
    insert into action values (null, 5, 15, 4);

    insert into action values (null, 20, 13, 4);
    insert into action values (null, 20, 14, 4);
    insert into action values (null, 60, 3, 3);
    insert into action values (null, 60, 3, 3);
    insert into action values (null, 60, 2, 3);

    insert into action values (null, 50, 2, 3);
    insert into action values (null, 50, 2, 3);
    insert into action values (null, 50, 16, 4);
    insert into action values (null, 50, 16, 4);
    insert into action values (null, 50, 16, 4);
    insert into action values (null, 10, 3, 3);
    insert into action values (null, 10, 15, 4);

    insert into action values (null, 0, 10, 3);
    insert into action values (null, 0, 21, 4);
    insert into action values (null, 0, 10, 3);
    insert into action values (null, 0, 20, 4);
    insert into action values (null, 5, 9, 3);
    insert into action values (null, 5, 20, 4);

    insert into action values (null, 0, 9, 3);
    insert into action values (null, 0, 21, 4);
    insert into action values (null, 0, 9, 3);
    insert into action values (null, 0, 20, 4);
    insert into action values (null, 5, 21, 4);
    insert into action values (null, 5, 21, 4);
    insert into action values (null, 5, 8, 3);

    insert into action values (null, 30, 11, 3);
    insert into action values (null, 30, 18, 4);
    insert into action values (null, 30, 22, 4);
    insert into action values (null, 30, 9, 3);
    insert into action values (null, 30, 10, 3);
    insert into action values (null, 30, 21, 4);
    insert into action values (null, 30, 7, 3);
    insert into action values (null, 30, 17, 4);

    insert into action values (null, 40, 1, 3);
    insert into action values (null, 40, 2, 3);
    insert into action values (null, 40, 3, 3);
    insert into action values (null, 40, 4, 3);
    insert into action values (null, 40, 5, 3);
    insert into action values (null, 40, 6, 3);
    insert into action values (null, 40, 7, 3);
    insert into action values (null, 40, 8, 3);
    insert into action values (null, 40, 8, 3);
    insert into action values (null, 40, 8, 3);
    insert into action values (null, 40, 8, 3);
    insert into action values (null, 40, 9, 3);
    insert into action values (null, 40, 9, 3);
    insert into action values (null, 40, 9, 3);
    insert into action values (null, 40, 10, 3);
    insert into action values (null, 40, 10, 3);
    insert into action values (null, 40, 10, 3);
    insert into action values (null, 40, 11, 3);
    insert into action values (null, 40, 11, 3);
    insert into action values (null, 40, 11, 3);
    insert into action values (null, 40, 12, 4);
    insert into action values (null, 40, 13, 4);
    insert into action values (null, 40, 13, 4);
    insert into action values (null, 40, 14, 4);
    insert into action values (null, 40, 15, 4);
    insert into action values (null, 40, 16, 4);
    insert into action values (null, 40, 17, 4);
    insert into action values (null, 40, 18, 4);
    insert into action values (null, 40, 19, 4);
    insert into action values (null, 40, 20, 4);
    insert into action values (null, 40, 20, 4);
    insert into action values (null, 40, 20, 4);
    insert into action values (null, 40, 20, 4);
    insert into action values (null, 40, 20, 4);
    insert into action values (null, 40, 20, 4);
    insert into action values (null, 40, 21, 4);
    insert into action values (null, 40, 21, 4);
    insert into action values (null, 40, 22, 4);
    insert into action values (null, 40, 22, 4);
    insert into action values (null, 40, 22, 4);
    insert into action values (null, 40, 22, 4);


    insert into possession values (null, 2, 4, 56);
    insert into possession values (null, 3, 4, 44);

    insert into passes values (null, 2, 4, 85.7);
    insert into passes values (null, 3, 4, 91.9);

    insert into carton values (null, 30, 4, 0);
    insert into carton values (null, 29, 4, 0);
    insert into carton values (null, 41, 4, 0);
    insert into carton values (null, 35, 4, 0);


    insert into action values (null, 70, 44, 4);
    insert into action values (null, 70, 20, 4);
    insert into action values (null, 70, 22, 4);
    insert into action values (null, 70, 33, 3);
    insert into action values (null, 70, 32, 3);

    insert into action values (null, 5, 33, 3);
    insert into action values (null, 5, 44, 4);
    insert into action values (null, 5, 43, 4);
    insert into action values (null, 0, 31, 3);

    insert into action values (null, 20, 25, 3);
    insert into action values (null, 20, 38, 3);
    insert into action values (null, 60, 38, 3);
    insert into action values (null, 60, 25, 3);
    insert into action values (null, 60, 25, 3);


    insert into action values (null, 50, 35, 4);
    insert into action values (null, 50, 36, 4);
    insert into action values (null, 50, 37, 4);
    insert into action values (null, 50, 24, 3);
    insert into action values (null, 50, 26, 3);
    insert into action values (null, 10, 35, 4);
    insert into action values (null, 10, 35, 4);
    insert into action values (null, 10, 36, 4);

    insert into action values (null, 0, 31, 3);
    insert into action values (null, 0, 32, 3);
    insert into action values (null, 0, 33, 3);
    insert into action values (null, 0, 33, 3);
    insert into action values (null, 5, 32, 3);
    insert into action values (null, 5, 31, 3);
    insert into action values (null, 5, 31, 3);

    insert into action values (null, 0, 44, 4);
    insert into action values (null, 0, 44, 4);
    insert into action values (null, 0, 42, 4);
    insert into action values (null, 0, 42, 4);
    insert into action values (null, 5, 42, 4);
    insert into action values (null, 5, 42, 4);
    insert into action values (null, 5, 43, 4);

    insert into action values (null, 30, 39, 4);
    insert into action values (null, 30, 40, 4);
    insert into action values (null, 30, 41, 4);
    insert into action values (null, 30, 43, 4);
    insert into action values (null, 30, 28, 3);
    insert into action values (null, 30, 29, 3);
    insert into action values (null, 30, 30, 3);
    insert into action values (null, 30, 31, 3);


    insert into action values (null, 40, 24, 3);
    insert into action values (null, 40, 25, 3);
    insert into action values (null, 40, 26, 3);
    insert into action values (null, 40, 26, 3);
    insert into action values (null, 40, 27, 3);
    insert into action values (null, 40, 28, 3);
    insert into action values (null, 40, 29, 3);
    insert into action values (null, 40, 29, 3);
    insert into action values (null, 40, 32, 3);
    insert into action values (null, 40, 32, 3);
    insert into action values (null, 40, 33, 3);
    insert into action values (null, 40, 33, 3);
    insert into action values (null, 40, 33, 3);
    insert into action values (null, 40, 35, 4);
    insert into action values (null, 40, 35, 4);
    insert into action values (null, 40, 36, 4);
    insert into action values (null, 40, 37, 4);
    insert into action values (null, 40, 38, 4);
    insert into action values (null, 40, 38, 4);
    insert into action values (null, 40, 39, 4);
    insert into action values (null, 40, 39, 4);
    insert into action values (null, 40, 40, 4);
    insert into action values (null, 40, 40, 4);
    insert into action values (null, 40, 41, 4);
    insert into action values (null, 40, 42, 4);
    insert into action values (null, 40, 43, 4);
    insert into action values (null, 40, 43, 4);
    insert into action values (null, 40, 43, 4);
    insert into action values (null, 40, 43, 4);
    insert into action values (null, 40, 44, 4);
    insert into action values (null, 40, 44, 4);
    insert into action values (null, 40, 44, 4);
