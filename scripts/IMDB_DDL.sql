insert into dbo.Genre (name) values ('Romance');
insert into dbo.Genre (name) values ('Comedia');
insert into dbo.Genre (name) values ('Drama');
insert into dbo.Genre (name) values ('Guerra');
insert into dbo.Genre (name) values ('Documentales');
insert into dbo.Genre (name) values ('Acción');

-------------------------------------------------------

insert into dbo.TitleType (name) values('Series');
insert into dbo.TitleType (name) values('Deportes');

--------------------------------------------------------

insert into dbo.Region (name) values('Norte America');
insert into dbo.Region (name) values('America Latina');
insert into dbo.Region (name) values('Asia');
insert into dbo.Region (name) values('Europa');

-------------------------------------------------------

insert into dbo.Language (name) values('Español');
insert into dbo.Language (name) values('Ingles');
insert into dbo.Language (name) values('Chino');
insert into dbo.Language (name) values('Frances');
insert into dbo.Language (name) values('Portugues');

------------------------------------------------------

insert into dbo.AlternativeType (name) values('Alt Type 1');
insert into dbo.AlternativeType (name) values('Alt Type 2');
insert into dbo.AlternativeType (name) values('Alt Type 3');
insert into dbo.AlternativeType (name) values('Alt Type 4');

------------------------------------------------------

insert into dbo.AlternativeAttribute (name) values('Alt Attr 1');
insert into dbo.AlternativeAttribute (name) values('Alt Attr 2');
insert into dbo.AlternativeAttribute (name) values('Alt Attr 3');
insert into dbo.AlternativeAttribute (name) values('Alt Attr 4');

------------------------------------------------------

insert into dbo.Profession (name) values('Profession 1');
insert into dbo.Profession (name) values('Profession 2');
insert into dbo.Profession (name) values('Profession 3');
insert into dbo.Profession (name) values('Profession 4');

------------------------------------------------------

insert into dbo.Category (name) values('Category 1');
insert into dbo.Category (name) values('Category 2');
insert into dbo.Category (name) values('Category 3');
insert into dbo.Category (name) values('Category 4');

------------------------------------------------------

insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 1', 'Original Title 1',1,2019,2019,120);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 2', 'Original Title 2',1,2019,2020,110);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(2,'Primary Title 3', 'Original Title 3',0,2005,2007,35);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(2,'Primary Title 4', 'Original Title 4',1,2000,2019,45);

------------------------------------------------------

insert into dbo.TitleGenre (titleId, genreId) values(1,1);
insert into dbo.TitleGenre (titleId, genreId) values(1,3);
insert into dbo.TitleGenre (titleId, genreId) values(1,4);
insert into dbo.TitleGenre (titleId, genreId) values(2,1);
insert into dbo.TitleGenre (titleId, genreId) values(3,2);
insert into dbo.TitleGenre (titleId, genreId) values(4,3);

------------------------------------------------------

insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(1,1,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(1,2,1,1,1,'Alt Title 2', 2, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(2,4,1,1,1,'Alt Title 1', 1, 0);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(3,1,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(3,3,1,1,1,'Alt Title 2', 2, 0);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(4,1,1,1,1,'Alt Title 1', 1, 1);

------------------------------------------------------

insert into dbo.Rating (titleId, averageRating, numVotes) values (1,90, 1500);
insert into dbo.Rating (titleId, averageRating, numVotes) values (2,85, 1000);
insert into dbo.Rating (titleId, averageRating, numVotes) values (3,60, 1320);
insert into dbo.Rating (titleId, averageRating, numVotes) values (4,45, 1100);

-----------------------------------------------------

insert into dbo.Episode (titleId, parentId, season, episode) values (1,null,0,0);
insert into dbo.Episode (titleId, parentId, season, episode) values (2,null,0,0);
insert into dbo.Episode (titleId, parentId, season, episode) values (3,null,1,1);
insert into dbo.Episode (titleId, parentId, season, episode) values (3,null,1,2);
insert into dbo.Episode (titleId, parentId, season, episode) values (3,null,1,3);
insert into dbo.Episode (titleId, parentId, season, episode) values (4,null,2,1);
insert into dbo.Episode (titleId, parentId, season, episode) values (4,null,2,2);

------------------------------------------------------

insert into dbo.Name (primaryName, birthYear, deathYear) values ('Fred Astaire',1899,1987);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Lauren Bacall',1924,2014);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Brigitte Bardot',1934,null);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('John Belushi',1949,1982);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Ingmar Bergman',1918,2007);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Humphrey Bogart',1915,1982);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Marlon Brando',1899,1957);

------------------------------------------------------

insert into dbo.NameProfession (nameId, professionId) values (1,2);
insert into dbo.NameProfession (nameId, professionId) values (1,3);
insert into dbo.NameProfession (nameId, professionId) values (2,1);
insert into dbo.NameProfession (nameId, professionId) values (3,3);
insert into dbo.NameProfession (nameId, professionId) values (4,4);
insert into dbo.NameProfession (nameId, professionId) values (5,4);
insert into dbo.NameProfession (nameId, professionId) values (6,1);
insert into dbo.NameProfession (nameId, professionId) values (7,2);

------------------------------------------------------

insert into dbo.KnowForTitle (nameId, titleId) values (1,2);
insert into dbo.KnowForTitle (nameId, titleId) values (1,1);
insert into dbo.KnowForTitle (nameId, titleId) values (2,3);
insert into dbo.KnowForTitle (nameId, titleId) values (3,4);
insert into dbo.KnowForTitle (nameId, titleId) values (4,2);
insert into dbo.KnowForTitle (nameId, titleId) values (5,2);

------------------------------------------------------

insert into dbo.Director (nameId, titleId) values (1,2);
insert into dbo.Director (nameId, titleId) values (1,1);
insert into dbo.Director (nameId, titleId) values (2,3);
insert into dbo.Director (nameId, titleId) values (3,4);
insert into dbo.Director (nameId, titleId) values (4,2);
insert into dbo.Director (nameId, titleId) values (5,2);

------------------------------------------------------

insert into dbo.Writer (nameId, titleId) values (1,2);
insert into dbo.Writer (nameId, titleId) values (1,1);
insert into dbo.Writer (nameId, titleId) values (2,3);
insert into dbo.Writer (nameId, titleId) values (3,4);
insert into dbo.Writer (nameId, titleId) values (4,2);
insert into dbo.Writer (nameId, titleId) values (5,2);

------------------------------------------------------

insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (1,1,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (2,1,3,null,2,'Character 2');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (3,1,2,null,3,'Character 3');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (4,2,4,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (5,2,4,null,2,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (6,3,1,null,1,'Character 1');