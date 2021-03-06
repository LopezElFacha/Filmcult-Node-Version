USE [master]
GO
/****** Object:  Database [tp5 nodejs]    Script Date: 12/6/2021 23:39:05 ******/
CREATE DATABASE [tp5 nodejs]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tp5 nodejs', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\tp5 nodejs.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tp5 nodejs_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\tp5 nodejs_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [tp5 nodejs] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tp5 nodejs].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tp5 nodejs] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tp5 nodejs] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tp5 nodejs] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tp5 nodejs] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tp5 nodejs] SET ARITHABORT OFF 
GO
ALTER DATABASE [tp5 nodejs] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tp5 nodejs] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tp5 nodejs] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tp5 nodejs] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tp5 nodejs] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tp5 nodejs] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tp5 nodejs] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tp5 nodejs] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tp5 nodejs] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tp5 nodejs] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tp5 nodejs] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tp5 nodejs] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tp5 nodejs] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tp5 nodejs] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tp5 nodejs] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tp5 nodejs] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tp5 nodejs] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tp5 nodejs] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [tp5 nodejs] SET  MULTI_USER 
GO
ALTER DATABASE [tp5 nodejs] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tp5 nodejs] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tp5 nodejs] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tp5 nodejs] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tp5 nodejs] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tp5 nodejs] SET QUERY_STORE = OFF
GO
USE [tp5 nodejs]
GO
/****** Object:  Table [dbo].[Carrusel]    Script Date: 12/6/2021 23:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrusel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[url] [text] NOT NULL,
 CONSTRAINT [PK_Carrusel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comentario]    Script Date: 12/6/2021 23:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comentario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fkReview] [int] NOT NULL,
	[texto] [text] NOT NULL,
	[uid] [int] NOT NULL,
 CONSTRAINT [PK_comentario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dias]    Script Date: 12/6/2021 23:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dias](
	[id] [int] NOT NULL,
	[dia] [varchar](50) NOT NULL,
	[hora_1] [varchar](50) NOT NULL,
	[hora_2] [varchar](50) NOT NULL,
	[hora_3] [varchar](50) NOT NULL,
	[hora_4] [varchar](50) NOT NULL,
	[hora_5] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 12/6/2021 23:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](50) NOT NULL,
	[descripcion] [text] NOT NULL,
	[url] [text] NOT NULL,
 CONSTRAINT [PK_reviews] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 12/6/2021 23:39:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[foto] [varchar](max) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carrusel] ON 

INSERT [dbo].[Carrusel] ([id], [url]) VALUES (1, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm1.png?alt=media&token=14172f2e-0373-417a-9c65-5ced67d6d77e')
INSERT [dbo].[Carrusel] ([id], [url]) VALUES (2, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm2.png?alt=media&token=d022dd9b-e315-41a9-a469-6ca77765d193')
INSERT [dbo].[Carrusel] ([id], [url]) VALUES (3, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm3.png?alt=media&token=f04ab07a-2b01-460b-8e78-354aa3802f66')
INSERT [dbo].[Carrusel] ([id], [url]) VALUES (4, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm4.png?alt=media&token=ac80db18-5d77-414d-9a5d-65035ae62242')
INSERT [dbo].[Carrusel] ([id], [url]) VALUES (5, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm5.png?alt=media&token=5c776c5a-2cc3-4d5a-b785-cc4f9edad954')
INSERT [dbo].[Carrusel] ([id], [url]) VALUES (6, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm6.png?alt=media&token=e6f8de31-94cd-44e2-a3b8-ef2de2b743c6')
INSERT [dbo].[Carrusel] ([id], [url]) VALUES (7, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Ffilm7.png?alt=media&token=b4064912-5ec2-4acd-a972-22efcd5d6326')
SET IDENTITY_INSERT [dbo].[Carrusel] OFF
GO
SET IDENTITY_INSERT [dbo].[comentario] ON 

INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (1, 1, N'Es malisima', 1)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (2, 1, N'Mejor, pero igual mala', 3)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (3, 1, N'Es re larga y es re aburrida. No se la recomiendo a nadie.', 5)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (4, 2, N'Es malisima', 1)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (5, 2, N'Me parecio una porqueria. Le doy un 3/10.', 5)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (6, 2, N'Segun criticos esta casi al nivel de breaking bad, pero es malisima', 3)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (7, 3, N'no la vi pero aparentemente salvo a hbo de que la gente se desuscriba cuando termino got', 1)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (8, 3, N'Es una serie corta e interesante. Buena para ver con la familia.', 5)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (9, 3, N'no la vi pero parece buena', 3)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (10, 4, N'QUE MAL FINAL POR DIOS', 1)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (11, 4, N'muy buena, pero tenes que ver solo hasta la temporada 7 y despues esperar al 2057 cuando salga el ultimo libro', 3)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (12, 4, N'Muy mal final', 6)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (13, 5, N'MOI BOEEEEEEEEENA 11/10', 1)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (14, 5, N'Esta god', 3)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (16, 5, N'Primera temporada zzz , demas temporadas  god.', 6)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (18, 6, N'no la vi pero yo que se anda a ver john wick mejor (podes ignorar la 3)', 3)
INSERT [dbo].[comentario] ([id], [fkReview], [texto], [uid]) VALUES (19, 6, N'El poster se parece al de John Wick', 6)
SET IDENTITY_INSERT [dbo].[comentario] OFF
GO
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (1, N'Domingo', N'The Killing Of Two Lovers', N'Mission Impossible', N'There Is No Evil', N'Here Today', N'Mainstream')
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (2, N'Jueves', N'Profile', N'Lindemann: Live In Moscow', N'Army Of The Dead', N'Radhe', N'Georgetown')
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (3, N'Lunes', N'Stand By Me', N'Drem House', N'The Dry', N'Favolance', N'Counter Column')
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (4, N'Martes', N'Spring Blossom', N'Sound Of Violence', N'Danos Un 10', N'Final Account', N'Alejandro')
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (5, N'Miercoles', N'Los Simuladores', N'Chicago: America''s Hidden War', N'Spiral', N'Those Who Wish Me Dead', N'Finding You')
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (6, N'Sabado', N'The Djinn', N'The Perfect', N'US Kids', N'Ghost Master', N'La Piscine')
INSERT [dbo].[dias] ([id], [dia], [hora_1], [hora_2], [hora_3], [hora_4], [hora_5]) VALUES (7, N'Viernes ', N'Wrath Of Man', N'The Man In The Hat', N'American Fighter', N'Cruella', N'The Human Factor')
GO
SET IDENTITY_INSERT [dbo].[reviews] ON 

INSERT [dbo].[reviews] ([id], [titulo], [descripcion], [url]) VALUES (1, N'La Liga de la Justicia', N'Decidido a garantizar que el último sacrificio de Superman no fuera en vano, Bruce Wayne alinea fuerzas con Diana Prince con planes de reclutar un equipo de metahumanos para proteger al mundo de una amenaza inminente de proporciones catastróficas.', N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Freview1.png?alt=media&token=e7cae4aa-be47-4c1f-9e9e-5e3b18f93932')
INSERT [dbo].[reviews] ([id], [titulo], [descripcion], [url]) VALUES (2, N'Los aspirantes', N'Es la historia del viaje de tres aspirantes a UPSC (exámenes competitivos de servicio público en la India) y su amistad contra viento y marea.', N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Freview2.png?alt=media&token=6407cf6d-bb2f-4d54-8b65-caff475bedf0')
INSERT [dbo].[reviews] ([id], [titulo], [descripcion], [url]) VALUES (3, N'Chernobyl', N'En abril de 1986, una explosión en la central nuclear de Chernobyl en la Unión de Repúblicas Socialistas Soviéticas se convierte en una de las peores catástrofes provocadas por el hombre en el mundo.', N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Freview3.png?alt=media&token=29cd9fc7-f1ec-4ccf-b7d5-7978f5c754d2')
INSERT [dbo].[reviews] ([id], [titulo], [descripcion], [url]) VALUES (4, N'Game of Thrones', N'Nueve familias nobles luchan por el control de las tierras de Poniente, mientras que un antiguo enemigo regresa después de estar inactivo durante milenios.', N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Freview4.png?alt=media&token=1a31c95b-0016-4d3f-bc3b-3044b3a1eac4')
INSERT [dbo].[reviews] ([id], [titulo], [descripcion], [url]) VALUES (5, N'Breaking Bad', N'Un profesor de química de la escuela secundaria diagnosticado con cáncer de pulmón inoperable se dedica a fabricar y vender metanfetamina para asegurar el futuro de su familia.', N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Freview5.png?alt=media&token=23a6ea8f-99e3-407e-869c-83874661f218')
INSERT [dbo].[reviews] ([id], [titulo], [descripcion], [url]) VALUES (6, N'Nadie', N'Un transeúnte que interviene para ayudar a una mujer acosada por un grupo de hombres se convierte en el objetivo de un capo de la droga vengativo.', N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/img%2Freview6.png?alt=media&token=ac8bee29-a71c-4da9-9eb8-8475aebfe297')
SET IDENTITY_INSERT [dbo].[reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [foto], [username], [email], [password]) VALUES (1, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/imgPerfil%2F76780.jfif?alt=media&token=44ab3daa-1516-4a95-a00d-be658c8b81d4', N'lopez', N'enanocabezon04@live.com.ar', N'vacaciones13')
INSERT [dbo].[usuarios] ([id], [foto], [username], [email], [password]) VALUES (2, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/imgPerfil%2FFilmCult%20Icono%20Con%20Nombre.png?alt=media&token=25cb0c35-13e2-48ca-b6f4-6c316b5f255e', N'joaco', N'joacoevangelisti@gmail.com', N'contra')
INSERT [dbo].[usuarios] ([id], [foto], [username], [email], [password]) VALUES (3, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/imgPerfil%2FBanana.webp?alt=media&token=2a47ac19-2a9e-4198-999b-a2404b6415ec', N'joaquin', N'joaquinevangelisti@gmail.com', N'contra1')
INSERT [dbo].[usuarios] ([id], [foto], [username], [email], [password]) VALUES (4, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/imgPerfil%2Fdescargar%20(2).jfif?alt=media&token=f86e8752-7aa5-4e93-af98-d9778afed5dd', N'cuenta2', N'enanocabezon04@live.com', N'contra2')
INSERT [dbo].[usuarios] ([id], [foto], [username], [email], [password]) VALUES (5, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/imgPerfil%2Fperfil.jpg?alt=media&token=6a17c395-cd02-4be3-8d76-ffc60ad4a5ff', N'mateo', N'mateoandraca@hotmail.com', N'contra3')
INSERT [dbo].[usuarios] ([id], [foto], [username], [email], [password]) VALUES (6, N'https://firebasestorage.googleapis.com/v0/b/filmcult-55b4c.appspot.com/o/imgPerfil%2Funnamed.jpg?alt=media&token=67ef4173-0ac1-4648-aaeb-a4c5cea936dd', N'Nacho', N'nachosperoni@gmail.com', N'contra4')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
USE [master]
GO
ALTER DATABASE [tp5 nodejs] SET  READ_WRITE 
GO
