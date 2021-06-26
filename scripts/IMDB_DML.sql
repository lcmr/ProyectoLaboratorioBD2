
CREATE TABLE dbo.Genre
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dbo.TitleType
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);
CREATE TABLE dbo.Region
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dbo.Language
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dbo.AlternativeType
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);
CREATE TABLE dbo.AlternativeAttribute
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);
CREATE TABLE dbo.Profession
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);
CREATE TABLE dbo.Category
(
    id int NOT NULL IDENTITY(1,1),
    name varchar(50) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dbo.Title
(
    id int NOT NULL IDENTITY(1,1),
	titleTypeId int NOT NULL,
    primaryTitle varchar(150) NULL,
    originalTitle varchar(150) NULL,
    isAdult tinyint NULL,
    startYear int NULL,
    endYear int NULL,
    runTime int NULL,
	PRIMARY KEY (id),
);

CREATE TABLE dbo.TitleGenre
(
    titleId int NOT NULL ,
    genreId int NOT NULL ,
);

CREATE TABLE dbo.AlternativeTitle
(
	id int NOT NULL IDENTITY(1,1),
	titleId int NOT NULL,
	regionId int NOT NULL,
	languageId int NOT NULL,
	alternativeTypeId int NOT NULL,
	alternativeAttributeId int NOT NULL,
	title varchar(150) NOT NULL,
	ordering int NULL,
	isOriginal tinyint NULL,
	PRIMARY KEY (id),

);

CREATE TABLE dbo.Rating
(
	id int NOT NULL IDENTITY(1,1),
    titleId int NOT NULL ,
    averageRating decimal(10,2) NOT NULL ,
    numVotes int NOT NULL ,
	PRIMARY KEY (id),
);

CREATE TABLE dbo.Episode
(
	id int NOT NULL IDENTITY(1,1),
    titleId int NOT NULL ,
    parentId int NULL ,
    season int NOT NULL ,
    episode int NOT NULL ,
	PRIMARY KEY (id),
);

CREATE TABLE dbo.Name
(
	id int NOT NULL IDENTITY(1,1),
    primaryName varchar(150) NOT NULL ,
    birthYear int NOT NULL ,
    deathYear int NULL ,
	PRIMARY KEY (id),
);


CREATE TABLE dbo.NameProfession
(
	nameId int NOT NULL,
    professionId int NOT NULL ,
);

CREATE TABLE dbo.KnowForTitle
(
	nameId int NOT NULL,
    titleId int NOT NULL ,
);

CREATE TABLE dbo.Director
(
	nameId int NOT NULL,
    titleId int NOT NULL ,
);

CREATE TABLE dbo.Writer
(
	nameId int NOT NULL,
    titleId int NOT NULL ,
);

CREATE TABLE dbo.Principal
(
	id int NOT NULL IDENTITY(1,1),
	nameId int NOT NULL,
    titleId int NOT NULL ,
    categoryId int NOT NULL ,
	jobId int NULL,
	ordering int NOT NULL,
	character varchar(150) NOT NULL,
	PRIMARY KEY (id)
);

ALTER TABLE Title
ADD CONSTRAINT FK_Title_TitleType FOREIGN KEY (titleTypeId)  REFERENCES TitleType(id);

ALTER TABLE TitleGenre
ADD CONSTRAINT FK_TitleGenere_Title FOREIGN KEY (titleId)  REFERENCES Title(id),
    CONSTRAINT FK_TitleGenere_Genre FOREIGN KEY (genreId)  REFERENCES Genre(id);
	
ALTER TABLE AlternativeTitle
ADD CONSTRAINT FK_AlternativeTitle_Title FOREIGN KEY (titleId)  REFERENCES Title(id),
    CONSTRAINT FK_AlternativeTitle_Region FOREIGN KEY (regionId)  REFERENCES Region(id),
    CONSTRAINT FK_AlternativeTitle_Language FOREIGN KEY (languageId)  REFERENCES Language(id),
    CONSTRAINT FK_AlternativeTitle_AlternativeType FOREIGN KEY (alternativeTypeId)  REFERENCES AlternativeType(id),
    CONSTRAINT FK_AlternativeTitle_AlternativeAttribute FOREIGN KEY (alternativeAttributeId)  REFERENCES AlternativeAttribute(id);

ALTER TABLE Rating
ADD CONSTRAINT FK_Rating_Title FOREIGN KEY (titleId)  REFERENCES Title(id);

ALTER TABLE Episode
ADD CONSTRAINT FK_Episode_Title FOREIGN KEY (titleId)  REFERENCES Title(id),
	CONSTRAINT FK_Episode_Episode FOREIGN KEY (parentId)  REFERENCES Episode(id);

ALTER TABLE NameProfession
ADD CONSTRAINT FK_NameProfession_Name FOREIGN KEY (nameId)  REFERENCES Name(id),
	CONSTRAINT FK_NameProfession_Profession FOREIGN KEY (professionId)  REFERENCES Profession(id);
	
ALTER TABLE KnowForTitle
ADD CONSTRAINT FK_KnowForTitle_Name FOREIGN KEY (nameId)  REFERENCES Name(id),
	CONSTRAINT FK_KnowForTitle_Title FOREIGN KEY (titleId)  REFERENCES Title(id);
	
ALTER TABLE Director
ADD CONSTRAINT FK_Director_Name FOREIGN KEY (nameId)  REFERENCES Name(id),
	CONSTRAINT FK_Director_Title FOREIGN KEY (titleId)  REFERENCES Title(id);
	
ALTER TABLE Writer
ADD CONSTRAINT FK_Writer_Name FOREIGN KEY (nameId)  REFERENCES Name(id),
	CONSTRAINT FK_Writer_Title FOREIGN KEY (titleId)  REFERENCES Title(id);
	
ALTER TABLE Principal
ADD CONSTRAINT FK_Principal_Name FOREIGN KEY (nameId)  REFERENCES Name(id),
	CONSTRAINT FK_Principal_Title FOREIGN KEY (titleId)  REFERENCES Title(id),
	CONSTRAINT FK_Principal_Category FOREIGN KEY (categoryId)  REFERENCES Category(id);