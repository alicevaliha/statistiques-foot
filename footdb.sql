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

-- Sarobidy
-- views

-- GENERAL
CREATE VIEW v_match_stats AS
SELECT m.id_matches, m.datematches, e1.nomEquipe AS equipe1, e2.nomEquipe AS equipe2, p1.pourcentage AS possession_equipe1, p2.pourcentage AS possession_equipe2, pa1.reussite AS passes_reussies_equipe1, pa2.reussite AS passes_reussies_equipe2
FROM matches m
JOIN equipe e1 ON m.id_equipe1 = e1.id_equipe
JOIN equipe e2 ON m.id_equipe2 = e2.id_equipe
LEFT JOIN possession p1 ON m.id_matches = p1.id_matches AND m.id_equipe1 = p1.id_equipe
LEFT JOIN possession p2 ON m.id_matches = p2.id_matches AND m.id_equipe2 = p2.id_equipe
LEFT JOIN passes pa1 ON m.id_matches = pa1.id_matches AND m.id_equipe1 = pa1.id_equipe
LEFT JOIN passes pa2 ON m.id_matches = pa2.id_matches AND m.id_equipe2 = pa2.id_equipe;

-- total but par équipe : mijanona ho requête donc atao fonction
SELECT e.nomEquipe, COUNT(a.id_action) AS total_buts
FROM equipe e
LEFT JOIN joueur j ON e.id_equipe = j.id_equipe
LEFT JOIN action a ON j.id_joueur = a.id_joueur
WHERE a.typeaction = 70
AND e.id_equipe = 1 
GROUP BY e.nomEquipe;

-- total but par équipe par match
create or replace view v_btE_pm as
SELECT m.id_matches,m.datematches,e.nomEquipe AS equipe, COUNT(a.id_action) AS total_buts
FROM matches m
JOIN equipe e ON m.id_equipe1 = e.id_equipe OR m.id_equipe2 = e.id_equipe
LEFT JOIN joueur j ON e.id_equipe = j.id_equipe
LEFT JOIN action a ON j.id_joueur = a.id_joueur
WHERE a.typeaction = 70 
GROUP BY m.id_matches, e.nomEquipe;


-- total moyenne tirs par équipe par match par competition 
create or replace view v_moyenne_tirs_pm_pc as
SELECT e.nomEquipe, c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS moyenne_tirs_par_match
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction IN (0, 5) 
GROUP BY e.nomEquipe, c.nomcompetition;


-- total carton par équipe par competition
create or replace view v_cartonsttl_pc as
SELECT e.nomEquipe, c.nomcompetition, COUNT(cr.id_carton) AS total_cartons
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN carton cr ON j.id_joueur = cr.id_joueur
JOIN matches m ON cr.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
GROUP BY e.nomEquipe, c.nomcompetition;

-- total carton jaunes par équipe par competition
create or replace view v_cartjaunesttl_pc as
SELECT e.nomEquipe, c.nomcompetition, COUNT(cr.id_carton) AS total_cartons_jaunes
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN carton cr ON j.id_joueur = cr.id_joueur
JOIN matches m ON cr.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE cr.typecarton = 0
GROUP BY e.nomEquipe, c.nomcompetition;


-- total carton rouges par équipe par competition
create or replace view v_cartrougesttl_pc as
SELECT e.nomEquipe, c.nomcompetition, COUNT(cr.id_carton) AS total_cartons_jaunes
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN carton cr ON j.id_joueur = cr.id_joueur
JOIN matches m ON cr.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE cr.typecarton = 10
GROUP BY e.nomEquipe, c.nomcompetition;

-- total pourcentage possession par equipe par competition
create or replace view v_possessionPrct_pc as
SELECT e.nomEquipe, c.nomcompetition, SUM(p.pourcentage) AS total_pourcentage_possession
FROM equipe e
JOIN possession p ON e.id_equipe = p.id_equipe
JOIN matches m ON p.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
GROUP BY e.nomEquipe, c.nomcompetition;

-- pourcentage passe réussi par équipe par competition
create or replace view v_p_reussite_e_pc as
SELECT e.nomEquipe, c.nomcompetition, AVG(pa.reussite) AS pourcentage_passes_reussies
FROM equipe e
JOIN passes pa ON e.id_equipe = pa.id_equipe
JOIN matches m ON pa.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
GROUP BY e.nomEquipe, c.nomcompetition;

-- moyenne aériengagnés par équipe par competition
create or replace view v_me_aerienG_pc as
SELECT e.nomEquipe, c.nomcompetition, AVG(a.typeaction = 60) AS moyenne_aerien_gagnes
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 60
GROUP BY e.nomEquipe, c.nomcompetition;

-- DEFENSE
-- moyenne tirs par matches
create or replace view v_me_tirs_pm as
SELECT m.id_matches,m.datematches,COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_tirs_pm
FROM matches m
JOIN action a ON m.id_matches = a.id_matches
WHERE a.typeaction IN (0, 5);

-- moyenne tirs par matches par competition
create or replace view v_me_tirs_pm_pc as
SELECT c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_tirs_pm_pc
FROM matches m
JOIN action a ON m.id_matches = a.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction IN (0, 5) 
GROUP BY c.nomcompetition;

-- moyenne tirs cadrés (CA) par matches par compétittion
create or replace view v_me_tirsCA_pm as
SELECT c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_tirsCA_pm
FROM matches m
JOIN action a ON m.id_matches = a.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 5
GROUP BY c.nomcompetition;

-- moyenne dribbles par joueur par match par compétition
create or replace view v_me_dribbles_pj_pm as
SELECT e.nomEquipe, c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_dribbles_pj_pm
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 40
GROUP BY e.nomEquipe, c.nomcompetition;

-- total dribbles par équipe par match par compétition
create or replace view v_total_dribbles_pm as 
SELECT e.nomEquipe, m.id_matches, c.nomcompetition, COUNT(a.id_action) AS total_dribbles
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 40 
GROUP BY e.nomEquipe, m.id_matches, c.nomcompetition;

-- ATTAQUE
-- moyenne tacles par équipe par match par competition
create or replace view v_me_tacles_pe_pm as
SELECT e.nomEquipe, c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_tacles_pe_pm
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 10
GROUP BY e.nomEquipe, c.nomcompetition;


-- moyenne interception par équipe par match par compétition
create or replace view v_me_interceptions_pe_pm as
SELECT e.nomEquipe, c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_interceptions_pe_pm
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 20 
GROUP BY e.nomEquipe, c.nomcompetition;

-- moyenne fautes par match par équipe par compétition
create or replace view v_me_fautes_pm_pe as
SELECT e.nomEquipe, c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_fautes_pm_pe
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 50
GROUP BY e.nomEquipe, c.nomcompetition;

-- moyenne fautes subies par match par équipe par compétition (fautes causées par l'équipe adverse)
create or replace view v_me_fautes_subies_pm_pe as
SELECT e.nomEquipe, c.nomcompetition, COUNT(a.id_action) / COUNT(DISTINCT m.id_matches) AS me_fautes_subies_pm_pe
FROM equipe e
JOIN joueur j ON e.id_equipe = j.id_equipe
JOIN action a ON j.id_joueur = a.id_joueur
JOIN matches m ON a.id_matches = m.id_matches
JOIN competition c ON m.id_competition = c.id_competition
WHERE a.typeaction = 50 
AND j.id_equipe = m.id_equipe2 
GROUP BY e.nomEquipe, c.nomcompetition;

