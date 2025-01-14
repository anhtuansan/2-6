USE [master]
GO
/****** Object:  Database [SWP391_G6]    Script Date: 6/1/2024 12:33:30 PM ******/
CREATE DATABASE [SWP391_G6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_G6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SWP391_G6.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_G6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SWP391_G6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SWP391_G6] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_G6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_G6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_G6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_G6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_G6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_G6] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_G6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_G6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_G6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_G6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_G6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_G6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_G6] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP391_G6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_G6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_G6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_G6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_G6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_G6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_G6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_G6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP391_G6] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_G6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_G6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_G6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_G6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_G6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_G6] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391_G6] SET QUERY_STORE = ON
GO
ALTER DATABASE [SWP391_G6] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SWP391_G6]
GO
/****** Object:  Table [dbo].[answers]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[answer_detail] [varchar](max) NULL,
	[created_at] [date] NULL,
	[update_at] [date] NULL,
	[creator_id] [int] NULL,
	[is_correct] [int] NULL,
 CONSTRAINT [PK_answers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[author_id] [int] NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[content] [ntext] NULL,
	[status] [int] NULL,
	[thumbnail] [varchar](max) NULL,
	[briefinfo] [varchar](max) NULL,
 CONSTRAINT [PK_blogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[created_by] [int] NOT NULL,
	[updated_by] [int] NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_has_quiz]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_has_quiz](
	[lesson_id] [int] NULL,
	[quiz_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lessons]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lessons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[creator_id] [int] NULL,
	[update_at] [date] NULL,
	[created_at] [date] NULL,
	[status] [int] NULL,
	[content] [text] NULL,
	[media] [nvarchar](255) NULL,
 CONSTRAINT [PK_lessons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[package_price]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[package_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[duration] [int] NULL,
	[sale_price] [decimal](18, 2) NULL,
	[price] [decimal](18, 2) NULL,
 CONSTRAINT [PK_package_price] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[method] [varchar](max) NULL,
	[payment_date] [date] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_has_answer]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_has_answer](
	[question_id] [int] NULL,
	[answer_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questions]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail] [varchar](max) NULL,
 CONSTRAINT [PK_questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quiz_has_question]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz_has_question](
	[quiz_id] [int] NULL,
	[question_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quizs]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quizs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NULL,
	[created_at] [date] NULL,
	[update_ad] [date] NULL,
	[creator_id] [varchar](max) NULL,
	[score] [float] NULL,
	[time] [int] NULL,
 CONSTRAINT [PK_quizs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[SubTitle] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[LinkUrl] [nvarchar](max) NULL,
	[CreatedAt] [date] NULL,
	[CreatedBy] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] NOT NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_has_lesson]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_has_lesson](
	[subject_id] [int] NULL,
	[lesson_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_has_price_package]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_has_price_package](
	[subject_id] [int] NOT NULL,
	[price_package_id] [int] NOT NULL,
 CONSTRAINT [PK_subject_has_price_package] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC,
	[price_package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[creator_id] [int] NULL,
	[creater_at] [date] NULL,
	[update_at] [date] NULL,
	[status] [int] NULL,
	[img] [varchar](max) NULL,
	[description] [text] NULL,
	[Tag] [nvarchar](max) NULL,
 CONSTRAINT [PK_subjects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_has_subject]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_has_subject](
	[user_id] [int] NULL,
	[subject_id] [int] NULL,
	[start_date] [nchar](10) NULL,
	[end_date] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/1/2024 12:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[phone_number] [varchar](max) NULL,
	[gender] [int] NULL,
	[profile_img] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[created_at] [date] NULL,
	[updated_at] [date] NULL,
	[role_id] [int] NULL,
	[status_id] [int] NULL,
	[token] [varchar](30) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blogs] ON 

INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (18, N'Exploring the Beauty of Mathematics', 3, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-01' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/math_2.jpg', N'Mathematics is a field of study that explores numbers, quantities, ')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (19, N'Unveiling the World of Chemistry: Principles, Branches', 4, CAST(N'2022-01-03' AS Date), CAST(N'2022-01-03' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/math.jpg', N'Mathematics is a field of study that explores numbers, quantities, ')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (20, N'Exploring the Beauty of Mathematics', 5, CAST(N'2020-01-05' AS Date), CAST(N'2020-01-05' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/che.jpg', N'Mathematics is a field of study that explores numbers, quantities, ')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (21, N'Unveiling the World of Chemistry: Principles, Branches', 4, CAST(N'2021-08-07' AS Date), CAST(N'2021-08-07' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/che_2.jpg', N'Chemistry is the science of matter, its properties, and the changes it .')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (23, N'The Wonders of Biology: Life, Evolution, and Diversity', 8, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-01' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/his.jpg', N'Chemistry is the science of matter, its properties, and the changes it .')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (26, N'The Beauty of English: Language, Literature...', 5, CAST(N'2023-04-17' AS Date), CAST(N'2023-04-17' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/eng_2.jpg', N'Chemistry is the science of matter, its properties, and the changes it .')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (28, N'The Beauty of English: Language, Literature...', 8, CAST(N'2021-01-21' AS Date), CAST(N'2021-01-21' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/bio_2.jpg', N'History is the study of past events, particularly in human affairs')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (29, N'The Wonders of Biology: Life, Evolution, and Diversity', 4, CAST(N'2022-08-20' AS Date), CAST(N'2022-08-20' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/bio.jpg', N'History is the study of past events, particularly in human affairs')
INSERT [dbo].[blogs] ([id], [title], [author_id], [created_at], [updated_at], [content], [status], [thumbnail], [briefinfo]) VALUES (30, N'''The Beauty of English: Language, Literature...', 4, CAST(N'2022-08-20' AS Date), CAST(N'2022-08-20' AS Date), N'Numbers and Operations: The foundations of mathematics include natural numbers, integers, fractions, decimals and real numbers. Basic calculations such as addition, subtraction, multiplication and division are essential tools.
Algebra: This branch is concerned with the study of symbols and rules for manipulating those symbols. It involves solving equations and understanding functions.
Geometry: Focuses on the properties and relationships of points, lines, surfaces, and solids. Key concepts include angle, shape, area, and volume.
Calculus: Explores changes and motions, dealing with derivatives and integration. It is fundamental in physics and engineering.
Statistics and Probability: Involves the analysis and interpretation of data and the likelihood of events occurring.
', 1, N'images/bio.jpg', N'Chemistry is the science of matter, its properties, and the changes it .')
SET IDENTITY_INSERT [dbo].[blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (8, N'Technology', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 3, 3)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (9, N'Health', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 4, 5)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (15, N'Sciences', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-30' AS Date), 5, 4)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (16, N'Humanities', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-30' AS Date), 6, 7)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (17, N'Language', CAST(N'2024-05-30' AS Date), CAST(N'2024-05-30' AS Date), 7, 6)
INSERT [dbo].[categories] ([id], [name], [created_at], [updated_at], [created_by], [updated_by]) VALUES (23, N'Programming', CAST(N'2024-05-30' AS Date), CAST(N'2024-06-20' AS Date), 8, 8)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[package_price] ON 

INSERT [dbo].[package_price] ([id], [name], [duration], [sale_price], [price]) VALUES (1, N'3 months package', 3, CAST(1000000.00 AS Decimal(18, 2)), CAST(800000.00 AS Decimal(18, 2)))
INSERT [dbo].[package_price] ([id], [name], [duration], [sale_price], [price]) VALUES (2, N'6 months package', 6, CAST(1500000.00 AS Decimal(18, 2)), CAST(1000000.00 AS Decimal(18, 2)))
INSERT [dbo].[package_price] ([id], [name], [duration], [sale_price], [price]) VALUES (3, N'Forever package', 1000000000, CAST(2200000.00 AS Decimal(18, 2)), CAST(1900000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[package_price] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'User')
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([ID], [Title], [SubTitle], [Content], [Image], [LinkUrl], [CreatedAt], [CreatedBy], [Status]) VALUES (1, N'English', N'Learn Enlish ', N'content', N'images/english.jpg', N'http://localhost:8080/QuizPractice/subject/details?id=10', NULL, NULL, NULL)
INSERT [dbo].[Slider] ([ID], [Title], [SubTitle], [Content], [Image], [LinkUrl], [CreatedAt], [CreatedBy], [Status]) VALUES (2, N'History', N'Learn History', N'content', N'images/history.jpg', N'http://localhost:8080/QuizPractice/subject/details?id=9', NULL, NULL, NULL)
INSERT [dbo].[Slider] ([ID], [Title], [SubTitle], [Content], [Image], [LinkUrl], [CreatedAt], [CreatedBy], [Status]) VALUES (3, N'Math', N'Learn Math', N'content', N'images/math.jpg', N'http://localhost:8080/QuizPractice/subject/details?id=2', NULL, NULL, NULL)
INSERT [dbo].[Slider] ([ID], [Title], [SubTitle], [Content], [Image], [LinkUrl], [CreatedAt], [CreatedBy], [Status]) VALUES (4, N'Biology', N'Learn Biology', N'content', N'images/bio.jpg', N'http://localhost:8080/QuizPractice/subject/details?id=8', NULL, NULL, NULL)
INSERT [dbo].[Slider] ([ID], [Title], [SubTitle], [Content], [Image], [LinkUrl], [CreatedAt], [CreatedBy], [Status]) VALUES (5, N'Physics', N'Learn Physics', N'content', N'images/physics.jpeg', N'http://localhost:8080/QuizPractice/subject/details?id=6', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
INSERT [dbo].[status] ([id], [name]) VALUES (1, N'Unactive')
INSERT [dbo].[status] ([id], [name]) VALUES (2, N'Active')
INSERT [dbo].[status] ([id], [name]) VALUES (3, N'Block')
GO
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (2, 1)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (2, 2)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (2, 3)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (6, 1)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (6, 3)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (7, 1)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (7, 2)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (8, 1)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (8, 3)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (9, 3)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (10, 1)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (14, 1)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (14, 2)
INSERT [dbo].[subject_has_price_package] ([subject_id], [price_package_id]) VALUES (14, 3)
GO
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (2, N'Math', 4, CAST(N'2024-04-10' AS Date), CAST(N'2024-04-15' AS Date), 1, N'images/math.jpg', N'Mathematics is a fundamental and ancient discipline that has been central to human knowledge and civilization for millennia. It is the study of numbers, quantities, shapes, and patterns, and it provides a framework for understanding and describing the world around us. Mathematics can be broadly categorized into several branches, each with its own unique focus and methods', N'#toan')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (6, N'Physics', 3, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'images/physics.jpeg', N'Physics is a fundamental natural science that seeks to understand the principles governing the behavior of matter and energy in the universe. It explores a wide range of phenomena, from the smallest subatomic particles to the vastness of galaxies and the universe itself. Physics aims to uncover the laws of nature and explain how the world works at every scale.', N'#toan')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (7, N'Chemistry', 4, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'images/chemistry.webp', N'Chemistry is the scientific study of matter, its properties, composition, structure, and the changes it undergoes during chemical reactions. Often referred to as the "central science," chemistry bridges the physical sciences with life sciences and applied sciences, playing a crucial role in understanding the material world and in the development of new technologies.', N'#toan')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (8, N'Biology', 3, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'images/biology.jpg', N'Biology is the scientific study of life and living organisms, encompassing their structure, function, growth, evolution, distribution, and taxonomy. As one of the natural sciences, biology seeks to understand the living world at all levels, from molecules and cells to ecosystems and the biosphere. The field is vast and diverse, intersecting with other sciences such as chemistry, physics, and environmental science.', N'#toan')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (9, N'History', 5, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'images/history.jpg', N'History is the study of past events, particularly in human affairs. It encompasses a wide range of topics, including the development of civilizations, the rise and fall of empires, social and cultural transformations, and the lives of influential individuals. By examining historical records, artifacts, and other sources, historians seek to understand how past events have shaped the present and can inform the future.', N'#toan')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (10, N'English', 5, CAST(N'2024-05-25' AS Date), CAST(N'2024-05-25' AS Date), 1, N'images/english.jpg', N'English is a West Germanic language that originated in medieval England and is now one of the most widely spoken languages in the world. It serves as the primary or secondary language in many countries and is an official language of international institutions such as the United Nations and the European Union. English is renowned for its rich vocabulary, complex grammar, and the diversity of its dialects and accents.', N'#toan')
INSERT [dbo].[subjects] ([id], [name], [creator_id], [creater_at], [update_at], [status], [img], [description], [Tag]) VALUES (14, N'Programming', 3, CAST(N'2024-05-29' AS Date), CAST(N'2024-05-29' AS Date), 1, N'images/programming.jpg', N'Learn various programming languages and concepts.', N'education,technology')
SET IDENTITY_INSERT [dbo].[subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (3, N'John', N'john.doe@example.com', N'1234567890', 1, N'images/pic-1.jpg', N'password123', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 2, N'token123')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (4, N'Jane', N'jane.smith@example.com', N'0987654321', 2, N'images/pic-1.jpg', N'password456', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 2, 2, N'token456')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (5, N'John', N'john.doe@example.com', N'1234567890', 1, N'images/pic-1.jpg', N'password123', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 2, N'token123')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (6, N'Jane', N'jane.smith@example.com', N'0987654321', 2, N'images/pic-1.jpg', N'password456', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 2, 2, N'token456')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (7, N'John', N'john.doe@example.com', N'1234567890', 1, N'images/pic-1.jpg', N'password123', CAST(N'2024-05-01' AS Date), CAST(N'2024-05-01' AS Date), 1, 2, N'token123')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (8, N'Jane', N'jane.smith@example.com', N'0987654321', 2, N'images/pic-1.jpg', N'password456', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-02' AS Date), 2, 2, N'token456')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (19, N'Teddy Smith', N'vannghibg03@gmail.com', N'0364920299', 1, N'images/pic-1.jpg', N'6361614211bff9a6d7d432cc7c29a15b63f18e519aa846f6262e6771bb3fcf9a35bcece7ad325dc0d84bf6ab2781e37cbfc2bc1c2fcd27e4c8e62beecbf133b0', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-01' AS Date), 1, 2, N'xBQRr7de4BCfjRMNqJffy3l9cEJ0sD')
INSERT [dbo].[users] ([id], [full_name], [email], [phone_number], [gender], [profile_img], [password], [created_at], [updated_at], [role_id], [status_id], [token]) VALUES (22, N'Teedy Smith', N'NghiNVHE176303@fpt.edu.vn', N'0364920299', 1, N'images/pic-1.jpg', N'6361614211bff9a6d7d432cc7c29a15b63f18e519aa846f6262e6771bb3fcf9a35bcece7ad325dc0d84bf6ab2781e37cbfc2bc1c2fcd27e4c8e62beecbf133b0', CAST(N'2024-06-01' AS Date), CAST(N'2024-06-01' AS Date), 1, 2, N'XiHcwx9wvIcOIYZPWTN8RBQB579ErU')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[blogs]  WITH CHECK ADD  CONSTRAINT [FK_blogs_users] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[blogs] CHECK CONSTRAINT [FK_blogs_users]
GO
ALTER TABLE [dbo].[categories]  WITH CHECK ADD  CONSTRAINT [FK_categories_users] FOREIGN KEY([created_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[categories] CHECK CONSTRAINT [FK_categories_users]
GO
ALTER TABLE [dbo].[categories]  WITH CHECK ADD  CONSTRAINT [FK_categories_users1] FOREIGN KEY([updated_by])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[categories] CHECK CONSTRAINT [FK_categories_users1]
GO
ALTER TABLE [dbo].[lesson_has_quiz]  WITH CHECK ADD  CONSTRAINT [FK_lesson_has_quiz_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[lesson_has_quiz] CHECK CONSTRAINT [FK_lesson_has_quiz_lessons]
GO
ALTER TABLE [dbo].[lesson_has_quiz]  WITH CHECK ADD  CONSTRAINT [FK_lesson_has_quiz_quizs] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[quizs] ([id])
GO
ALTER TABLE [dbo].[lesson_has_quiz] CHECK CONSTRAINT [FK_lesson_has_quiz_quizs]
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD  CONSTRAINT [FK_payments_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[payments] CHECK CONSTRAINT [FK_payments_users]
GO
ALTER TABLE [dbo].[question_has_answer]  WITH CHECK ADD  CONSTRAINT [FK_question_has_answer_answers] FOREIGN KEY([answer_id])
REFERENCES [dbo].[answers] ([id])
GO
ALTER TABLE [dbo].[question_has_answer] CHECK CONSTRAINT [FK_question_has_answer_answers]
GO
ALTER TABLE [dbo].[question_has_answer]  WITH CHECK ADD  CONSTRAINT [FK_question_has_answer_questions] FOREIGN KEY([question_id])
REFERENCES [dbo].[questions] ([id])
GO
ALTER TABLE [dbo].[question_has_answer] CHECK CONSTRAINT [FK_question_has_answer_questions]
GO
ALTER TABLE [dbo].[quiz_has_question]  WITH CHECK ADD  CONSTRAINT [FK_quiz_has_question_questions] FOREIGN KEY([question_id])
REFERENCES [dbo].[questions] ([id])
GO
ALTER TABLE [dbo].[quiz_has_question] CHECK CONSTRAINT [FK_quiz_has_question_questions]
GO
ALTER TABLE [dbo].[quiz_has_question]  WITH CHECK ADD  CONSTRAINT [FK_quiz_has_question_quizs] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[quizs] ([id])
GO
ALTER TABLE [dbo].[quiz_has_question] CHECK CONSTRAINT [FK_quiz_has_question_quizs]
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD  CONSTRAINT [FK_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[Slider] CHECK CONSTRAINT [FK_CreatedBy]
GO
ALTER TABLE [dbo].[subject_has_lesson]  WITH CHECK ADD  CONSTRAINT [FK_subject_has_lesson_lessons] FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lessons] ([id])
GO
ALTER TABLE [dbo].[subject_has_lesson] CHECK CONSTRAINT [FK_subject_has_lesson_lessons]
GO
ALTER TABLE [dbo].[subject_has_lesson]  WITH CHECK ADD  CONSTRAINT [FK_subject_has_lesson_subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO
ALTER TABLE [dbo].[subject_has_lesson] CHECK CONSTRAINT [FK_subject_has_lesson_subjects]
GO
ALTER TABLE [dbo].[subject_has_price_package]  WITH CHECK ADD  CONSTRAINT [FK_subject_has_price_package_package_price] FOREIGN KEY([price_package_id])
REFERENCES [dbo].[package_price] ([id])
GO
ALTER TABLE [dbo].[subject_has_price_package] CHECK CONSTRAINT [FK_subject_has_price_package_package_price]
GO
ALTER TABLE [dbo].[subject_has_price_package]  WITH CHECK ADD  CONSTRAINT [FK_subject_has_price_package_subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO
ALTER TABLE [dbo].[subject_has_price_package] CHECK CONSTRAINT [FK_subject_has_price_package_subjects]
GO
ALTER TABLE [dbo].[subjects]  WITH CHECK ADD  CONSTRAINT [fk_user] FOREIGN KEY([creator_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[subjects] CHECK CONSTRAINT [fk_user]
GO
ALTER TABLE [dbo].[user_has_subject]  WITH CHECK ADD  CONSTRAINT [FK_user_has_subject_subjects] FOREIGN KEY([subject_id])
REFERENCES [dbo].[subjects] ([id])
GO
ALTER TABLE [dbo].[user_has_subject] CHECK CONSTRAINT [FK_user_has_subject_subjects]
GO
ALTER TABLE [dbo].[user_has_subject]  WITH CHECK ADD  CONSTRAINT [FK_user_has_subject_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[user_has_subject] CHECK CONSTRAINT [FK_user_has_subject_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_status]
GO
USE [master]
GO
ALTER DATABASE [SWP391_G6] SET  READ_WRITE 
GO
