update carton set typecarton = 10 where id_carton = 5;

    insert into action values (null, 20, 2, 1);
    insert into action values (null, 20, 2, 1);
    insert into action values (null, 20, 3, 1);
    insert into action values (null, 60, 14, 1);
    insert into action values (null, 60, 13, 1);
    insert into action values (null, 60, 13, 1);

    insert into equipe values (null, 'Arsenal');
    insert into equipe values (null, 'Chelsea');

    insert into joueur values (null, 'David Raya', 5);
    insert into joueur values (null, 'William Saliba', 5);
    insert into joueur values (null, 'Benjamin White', 5);
    insert into joueur values (null, 'Oleksandr Zinchenko', 5);
    insert into joueur values (null, 'Takehiro Tomiyasu', 5);
    insert into joueur values (null, 'Thomas Partey', 5);
    insert into joueur values (null, 'Declan Rice', 5);
    insert into joueur values (null, 'Martin Odegaard', 5);
    insert into joueur values (null, 'Bukayo Saka', 5);
    insert into joueur values (null, 'Gabriel Jesus', 5);
    insert into joueur values (null, 'Kai Havertz', 5);

    insert into joueur values (null, 'Kepa Arrizabalaga', 6);
    insert into joueur values (null, 'Thiago Silva',6 );
    insert into joueur values (null, 'Reece James',6 );
    insert into joueur values (null, 'Wesley Fofana',6 );
    insert into joueur values (null, 'Trevoh Chalobah',6 );
    insert into joueur values (null, 'Conor Gallaghe',6 );
    insert into joueur values (null, 'Andrey Santos',6 );
    insert into joueur values (null, 'Lesley Ugochukwu',6 );
    insert into joueur values (null, 'Christopher Nkunku',6 );
    insert into joueur values (null, 'Carney Chukwuemeka',6 );
    insert into joueur values (null, 'Raheem Sterling',6 );

--Arsenal(5) Chelsea(6) match(3)
    insert into matches values (null, 1, 5, 6, '2023-11-24');

    insert into possession values (null, 5, 3, 58);
    insert into possession values (null, 6, 3, 42);

    insert into passes values (null, 5, 3, 86.7);
    insert into passes values (null, 6, 3, 82.9);

    insert into carton values (null, 27, 3, 0);
    insert into carton values (null, 27, 3, 1);
    insert into carton values (null, 30, 3, 0);


    insert into action values (null, 70, 44, 3);
    insert into action values (null, 70, 33, 3);
    insert into action values (null, 70, 32, 3);

    insert into action values (null, 5, 33, 3);
    insert into action values (null, 5, 44, 3);
    insert into action values (null, 5, 43, 3);
    insert into action values (null, 0, 31, 3);

    insert into action values (null, 20, 25, 3);
    insert into action values (null, 20, 38, 3);
    insert into action values (null, 60, 38, 3);
    insert into action values (null, 60, 25, 3);
    insert into action values (null, 60, 25, 3);


    insert into action values (null, 50, 35, 3);
    insert into action values (null, 50, 36, 3);
    insert into action values (null, 50, 37, 3);
    insert into action values (null, 50, 24, 3);
    insert into action values (null, 50, 26, 3);
    insert into action values (null, 10, 35, 3);
    insert into action values (null, 10, 35, 3);
    insert into action values (null, 10, 36, 3);
    insert into action values (null, 10, 24, 3);
    insert into action values (null, 10, 25, 3);
    insert into action values (null, 10, 26, 3);
    insert into action values (null, 10, 26, 3);

    insert into action values (null, 0, 31, 3);
    insert into action values (null, 0, 32, 3);
    insert into action values (null, 0, 33, 3);
    insert into action values (null, 0, 33, 3);
    insert into action values (null, 5, 32, 3);
    insert into action values (null, 5, 31, 3);
    insert into action values (null, 5, 31, 3);

    insert into action values (null, 0, 44, 3);
    insert into action values (null, 0, 44, 3);
    insert into action values (null, 0, 42, 3);
    insert into action values (null, 0, 42, 3);
    insert into action values (null, 5, 42, 3);
    insert into action values (null, 5, 42, 3);
    insert into action values (null, 5, 43, 3);

    insert into action values (null, 30, 39, 3);
    insert into action values (null, 30, 40, 3);
    insert into action values (null, 30, 41, 3);
    insert into action values (null, 30, 43, 3);
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
    insert into action values (null, 40, 35, 3);
    insert into action values (null, 40, 35, 3);
    insert into action values (null, 40, 35, 3);
    insert into action values (null, 40, 36, 3);
    insert into action values (null, 40, 37, 3);
    insert into action values (null, 40, 38, 3);
    insert into action values (null, 40, 38, 3);
    insert into action values (null, 40, 39, 3);
    insert into action values (null, 40, 39, 3);
    insert into action values (null, 40, 40, 3);
    insert into action values (null, 40, 40, 3);
    insert into action values (null, 40, 41, 3);
    insert into action values (null, 40, 42, 3);
    insert into action values (null, 40, 43, 3);
    insert into action values (null, 40, 43, 3);
    insert into action values (null, 40, 43, 3);
    insert into action values (null, 40, 43, 3);
    insert into action values (null, 40, 44, 3);
    insert into action values (null, 40, 44, 3);
    insert into action values (null, 40, 44, 3);


    insert into matches values (null, 1, 1, 5, '2023-11-28');
    insert into matches values (null, 1, 2, 6, '2023-11-29');

--City(1) (5) match 4
    insert into possession values (null, 1, 4, 61);
    insert into possession values (null, 5, 4, 39);

    insert into passes values (null, 5, 4, 86.7);
    insert into passes values (null, 6, 4, 82.9);

    insert into carton values (null, 3, 4, 0);
    insert into carton values (null, 27, 4, 0);



    insert into action values (null, 70, 11, 4);
    insert into action values (null, 0, 11, 4);
    insert into action values (null, 0, 15, 5);
    insert into action values (null, 5, 10, 4);
    insert into action values (null, 5, 15, 5);

    insert into action values (null, 20, 13, 5);
    insert into action values (null, 20, 14, 5);
    insert into action values (null, 60, 3, 4);
    insert into action values (null, 60, 3, 4);
    insert into action values (null, 60, 2, 4);

    insert into action values (null, 50, 2, 4);
    insert into action values (null, 50, 2, 4);
    insert into action values (null, 50, 16, 5);
    insert into action values (null, 50, 16, 5);
    insert into action values (null, 50, 16, 5);
    insert into action values (null, 10, 3, 4);
    insert into action values (null, 10, 15, 5);

    insert into action values (null, 0, 10, 4);
    insert into action values (null, 0, 21, 5);
    insert into action values (null, 0, 10, 4);
    insert into action values (null, 0, 20, 5);
    insert into action values (null, 5, 9, 4);
    insert into action values (null, 5, 20, 5);

    insert into action values (null, 0, 9, 4);
    insert into action values (null, 0, 21, 5);
    insert into action values (null, 0, 9, 4);
    insert into action values (null, 0, 20, 5);
    insert into action values (null, 5, 21, 5);
    insert into action values (null, 5, 21, 5);
    insert into action values (null, 5, 8, 4);

    insert into action values (null, 30, 11, 4);
    insert into action values (null, 30, 18, 5);
    insert into action values (null, 30, 22, 5);
    insert into action values (null, 30, 9, 4);
    insert into action values (null, 30, 10, 4);
    insert into action values (null, 30, 21, 5);
    insert into action values (null, 30, 7, 4);
    insert into action values (null, 30, 17, 5);

    insert into action values (null, 40, 1, 4);
    insert into action values (null, 40, 2, 4);
    insert into action values (null, 40, 3, 4);
    insert into action values (null, 40, 4, 4);
    insert into action values (null, 40, 5, 4);
    insert into action values (null, 40, 6, 4);
    insert into action values (null, 40, 7, 4);
    insert into action values (null, 40, 8, 4);
    insert into action values (null, 40, 8, 4);
    insert into action values (null, 40, 8, 4);
    insert into action values (null, 40, 8, 4);
    insert into action values (null, 40, 9, 4);
    insert into action values (null, 40, 9, 4);
    insert into action values (null, 40, 9, 4);
    insert into action values (null, 40, 10, 4);
    insert into action values (null, 40, 10, 4);
    insert into action values (null, 40, 10, 4);
    insert into action values (null, 40, 11, 4);
    insert into action values (null, 40, 11, 4);
    insert into action values (null, 40, 11, 4);
    insert into action values (null, 40, 12, 5);
    insert into action values (null, 40, 13, 5);
    insert into action values (null, 40, 13, 5);
    insert into action values (null, 40, 14, 5);
    insert into action values (null, 40, 15, 5);
    insert into action values (null, 40, 16, 5);
    insert into action values (null, 40, 17, 5);
    insert into action values (null, 40, 18, 5);
    insert into action values (null, 40, 19, 5);
    insert into action values (null, 40, 20, 5);
    insert into action values (null, 40, 20, 5);
    insert into action values (null, 40, 20, 5);
    insert into action values (null, 40, 20, 5);
    insert into action values (null, 40, 20, 5);
    insert into action values (null, 40, 20, 5);
    insert into action values (null, 40, 21, 5);
    insert into action values (null, 40, 21, 5);
    insert into action values (null, 40, 22, 5);
    insert into action values (null, 40, 22, 5);
    insert into action values (null, 40, 22, 1);
    insert into action values (null, 40, 2, 15);



--Liverpool(2) Chelsea(6) match 5
    insert into possession values (null, 6, 5, 56);
    insert into possession values (null, 2, 5, 44);

    insert into passes values (null, 6, 5, 85.7);
    insert into passes values (null, 2, 5, 91.9);

    insert into carton values (null, 30, 5, 0);
    insert into carton values (null, 29, 5, 0);
    insert into carton values (null, 41, 5, 0);
    insert into carton values (null, 35, 5, 0);


    insert into action values (null, 70, 44, 5);
    insert into action values (null, 70, 33, 4);
    insert into action values (null, 70, 32, 4);

    insert into action values (null, 5, 33, 4);
    insert into action values (null, 5, 44, 5);
    insert into action values (null, 5, 43, 5);
    insert into action values (null, 0, 31, 4);

    insert into action values (null, 20, 25, 4);
    insert into action values (null, 20, 38, 5);
    insert into action values (null, 60, 38, 5);
    insert into action values (null, 60, 25, 4);
    insert into action values (null, 60, 25, 4);


    insert into action values (null, 50, 35, 5);
    insert into action values (null, 50, 36, 5);
    insert into action values (null, 50, 37, 5);
    insert into action values (null, 50, 24, 4);
    insert into action values (null, 50, 26, 4);
    insert into action values (null, 10, 35, 5);
    insert into action values (null, 10, 35, 5);
    insert into action values (null, 10, 36, 5);

    insert into action values (null, 0, 31, 4);
    insert into action values (null, 0, 32, 4);
    insert into action values (null, 0, 33, 4);
    insert into action values (null, 0, 33, 4);
    insert into action values (null, 5, 32, 4);
    insert into action values (null, 5, 31, 4);
    insert into action values (null, 5, 31, 4);

    insert into action values (null, 0, 44, 5);
    insert into action values (null, 0, 44, 5);
    insert into action values (null, 0, 42, 5);
    insert into action values (null, 0, 42, 5);
    insert into action values (null, 5, 42, 5);
    insert into action values (null, 5, 42, 5);
    insert into action values (null, 5, 43, 5);

    insert into action values (null, 30, 39, 5);
    insert into action values (null, 30, 40, 5);
    insert into action values (null, 30, 41, 5);
    insert into action values (null, 30, 43, 5);
    insert into action values (null, 30, 28, 4);
    insert into action values (null, 30, 29, 4);
    insert into action values (null, 30, 30, 4);
    insert into action values (null, 30, 31, 4);


    insert into action values (null, 40, 24, 4);
    insert into action values (null, 40, 25, 4);
    insert into action values (null, 40, 26, 4);
    insert into action values (null, 40, 26, 4);
    insert into action values (null, 40, 27, 4);
    insert into action values (null, 40, 28, 3);
    insert into action values (null, 40, 29, 4);
    insert into action values (null, 40, 29, 4);
    insert into action values (null, 40, 32, 4);
    insert into action values (null, 40, 32, 4);
    insert into action values (null, 40, 33, 4);
    insert into action values (null, 40, 33, 4);
    insert into action values (null, 40, 33, 4);
    insert into action values (null, 40, 35, 5);
    insert into action values (null, 40, 35, 5);
    insert into action values (null, 40, 36, 5);
    insert into action values (null, 40, 37, 5);
    insert into action values (null, 40, 38, 3);
    insert into action values (null, 40, 38, 5);
    insert into action values (null, 40, 39, 5);
    insert into action values (null, 40, 39, 5);
    insert into action values (null, 40, 40, 5);
    insert into action values (null, 40, 40, 5);
    insert into action values (null, 40, 41, 5);
    insert into action values (null, 40, 42, 5);
    insert into action values (null, 40, 43, 5);
    insert into action values (null, 40, 43, 5);
    insert into action values (null, 40, 43, 5);
    insert into action values (null, 40, 43, 5);
    insert into action values (null, 40, 44, 5);
    insert into action values (null, 40, 44, 5);
    insert into action values (null, 40, 44, 5);
