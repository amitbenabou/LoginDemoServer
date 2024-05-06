Create Database LoginDemoDB
Go

use logindemodb 
go

Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

create table Grades (
Id int identity (1000,1),
TestDate datetime not null, 
[Subject] nvarchar (20) not null,
Grade int not null,
Email nvarchar(100) not null foreign key references Users(Email)
)
go



INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
Go
INSERT INTO dbo.Users VALUES ('amit@amit.com', '111', '+972546287507','1-nov-2007',1,'Amit Benabou')
Go

insert into dbo.Grades (TestDate, [Subject], Grade, Email)  values ('1-11-2023', 'English', 98, 'ofer@ofer.com')
go
insert into dbo.Grades (TestDate, [Subject], Grade, Email)  values ('1-3-2023', 'Math', 89, 'amit@amit.com')
go

 select * from dbo.Grades
 select * from dbo.Users
--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force