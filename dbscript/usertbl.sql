CREATE or REPLACE Table  UserProfile (
	UserId integer CONSTRAINT must_be_different UNIQUE,
	FirstName text NOT NULL,
	LastName text NOT NULL,
	MiddleName text
	BirthDay date NOT NULL,
	Gender text  NOT NULL,
	MaritalStatus text ,
	Email citext NOT NULL,
	salt varchar(30) NOT NULL,
	Passwordhash varchar(30) NOT NULL,
	LastLogin text ,
	UserGroup text ,
	IsParent text NOT NULL,
	IsSuperUser text 
);
#UPDATE ... SET pswhash = crypt('new password', gen_salt('md5'))
#psql -h localhost -d myhealth -f usrtbl.sql -v schema=<schema_name>
