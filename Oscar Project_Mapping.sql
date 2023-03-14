
/*
Project phases

1.Understanding business requirements
2.Requirements gathering
3.Identifying entities and relationships
4.ER Diagram: Cardinalities and N:N Elimination
5.Definition of Tables and Integrity Constraints
6.Normalization
7.Adjustments to the Logical Model and Data Dictionary
8.Implementation of the Physical Model
9.Basic Tests in the DBMS
*/

/*
Business Rules

The database design must meet the following business rules:
1. The database must track all Oscar-related information.
2. The possible Oscar awards are: Best Picture, Best Director, Best Actor and Best Actress. Each prize has an identification code.
3. It should be possible to register an unlimited number of Films, Directors, Actors and Actresses in the database.
4. Not necessarily the Films, Directors, Actors and Actresses registered should be awarded. However, as it is an Oscar database, the Films, Directors, Actors and Actresses stored must necessarily be those that were nominated for one of the 4 awards.
5. Each actor can participate in one or more films.
6. Although an actor can also be a director, he must be registered separately as an actor and as a director.
7. It should be easy to identify, for each film, its respective director.
8. Each actor/actress and director has an identification code, full name, nationality (city and country). In the case of an actor/actress, the gender must also be registered.
9. Each film can win one of the 4 previously defined awards, in a given award year. The same film cannot win the same award in more than one year.
10. Each film can be directed by only 1 director.
*/

/*
First formal description of entities, relationships and attributes:

• Movie(Movie_ID, Title, Director_ID)
• Actor(Actor_ID, Actor_Name, City, Country, Gender)
• Director(Director_ID, Director_Name, City, Country)
• Award(Award_ID, Description)
• Participation(A_Ator_ID, F_Movie_ID): 
A_Actor_ID references Actor
F_Movie_ID references Movie
• Premiation(F_Movie_ID, P_Award_ID, Year):
F_Movie_ID references Movie
P_Aaward_ID references Award
*/

