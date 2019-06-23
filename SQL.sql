USE [RaceTiming]
GO
/****** Object:  Table [dbo].[category]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_competitions]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_competitions](
	[category_id] [bigint] NOT NULL,
	[competitions_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[competition]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[competition](
	[id] [bigint] NOT NULL,
	[date] [date] NULL,
	[deadline_date] [date] NULL,
	[description] [varchar](255) NULL,
	[dyscipline] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[organizer] [varchar](255) NULL,
	[place] [varchar](255) NULL,
	[players_limit] [int] NOT NULL,
	[reg_url] [varchar](255) NULL,
	[results_url] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[id] [bigint] NOT NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[role_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player](
	[id] [bigint] NOT NULL,
	[birth_date] [date] NULL,
	[city] [varchar](255) NULL,
	[country] [varchar](255) NULL,
	[license] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[sex] [varchar](255) NULL,
	[surname] [varchar](255) NULL,
	[team] [varchar](255) NULL,
	[login_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_category]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_category](
	[id] [bigint] NOT NULL,
	[categories_id] [bigint] NULL,
	[competitions_id] [bigint] NULL,
	[player_id] [bigint] NULL,
	[competitions_competition_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[player_competitions]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[player_competitions](
	[player_id] [bigint] NOT NULL,
	[competitions_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 22.06.2019 19:40:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [bigint] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[category] ([id], [name]) VALUES (103, N'Elite Men')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (104, N'Masters')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (105, N'Masters II')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (106, N'Elite Women')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (107, N'Hobby Women')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (108, N'Kids')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (109, N'Junior')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (110, N'Hobby Men')
GO
INSERT [dbo].[category] ([id], [name]) VALUES (111, N'Hobby Junior')
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (103, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (104, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (105, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (106, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (107, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (108, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (109, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (110, 102)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 53)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 54)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 55)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 56)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 57)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 58)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 59)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 60)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 61)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 62)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 63)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 64)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 65)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 66)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 67)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 68)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 69)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 70)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 71)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 72)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 73)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 74)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 75)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 76)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 77)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 78)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 79)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 80)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 81)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 82)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 83)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 84)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 85)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 86)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 87)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 88)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 89)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 90)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 91)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 92)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 93)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 94)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 95)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 96)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 97)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 98)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 99)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 100)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 101)
GO
INSERT [dbo].[category_competitions] ([category_id], [competitions_id]) VALUES (111, 102)
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (53, CAST(N'2018-03-19' AS Date), CAST(N'2019-08-19' AS Date), N'The lake is a long way from here.', N'Cycling', N'Kimbra', N'Barkley', N'Floddence', 560, N'heterogamous', N'noncrystallizing')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (54, CAST(N'2018-09-20' AS Date), CAST(N'2019-08-19' AS Date), N'Let me help you with your baggage.', N'Boxing', N'Addie', N'Loiacono', N'Puesea', 500, N'interplanetary', N'interplanetary')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (55, CAST(N'2017-03-10' AS Date), CAST(N'2019-08-19' AS Date), N'Two seats were vacant.', N'Rugby', N'Trent', N'Weatherwax', N'Zlaystead', 6900, N'accompanying', N'iphigenia')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (56, CAST(N'2018-07-31' AS Date), CAST(N'2019-08-19' AS Date), N'If Purple People Eaters are real… where do they find purple people to eat?', N'Equestrian', N'Laree', N'Joplin', N'Puesea', 3280, N'unentertaining', N'conciliative')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (57, CAST(N'2018-02-23' AS Date), CAST(N'2019-08-19' AS Date), N'Wednesday is hump day, but has anyone asked the camel if he’s happy about it?', N'Handball', N'Rudolf', N'Cumberbatch', N'Zlaystead', 6770, N'noncontemptibleness', N'sophistication')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (58, CAST(N'2018-03-31' AS Date), CAST(N'2019-08-19' AS Date), N'Hurry!', N'Badminton', N'Claud', N'Anselmo', N'Floddence', 5880, N'noncosmopolite', N'multilateral')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (59, CAST(N'2019-07-12' AS Date), CAST(N'2019-08-19' AS Date), N'We need to rent a room for our party.', N'Equestrian', N'Genia', N'Tieu', N'Floddence', 9380, N'unirascible', N'unrationalized')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (60, CAST(N'2018-08-13' AS Date), CAST(N'2019-08-19' AS Date), N'I love eating toasted cheese and tuna sandwiches.', N'Rugby', N'Tia', N'Criger', N'Zlaystead', 2820, N'inapproachably', N'unpreferable')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (61, CAST(N'2018-04-13' AS Date), CAST(N'2019-08-19' AS Date), N'If I don’t like something, I’ll stay away from it.', N'Badminton', N'Enola', N'Dyal', N'Yleastin', 6830, N'hypertensinogen', N'overpessimistic')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (62, CAST(N'2018-12-20' AS Date), CAST(N'2019-08-19' AS Date), N'Tom got a small piece of pie.', N'Table Tennis', N'Sheryll', N'Ramirez', N'Zrago', 3480, N'elementariness', N'subterraneously')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (63, CAST(N'2017-04-08' AS Date), CAST(N'2019-08-19' AS Date), N'If you like tuna and tomato sauce- try combining the two. It’s really not as bad as it sounds.', N'Weightlifting', N'Broderick', N'Buth', N'Amving', 670, N'tocodynamometer', N'nonradioactive')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (64, CAST(N'2017-07-15' AS Date), CAST(N'2019-08-19' AS Date), N'Joe made the sugar cookies; Susan decorated them.', N'Rugby', N'Graciela', N'Nagler', N'Klester', 850, N'extenuatingly', N'unformalistic')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (65, CAST(N'2017-05-05' AS Date), CAST(N'2019-08-19' AS Date), N'She did her best to help him.', N'Volleyball', N'Eddy', N'Bendickson', N'Sront', 1530, N'dermographia', N'gastroenterologist')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (66, CAST(N'2018-12-23' AS Date), CAST(N'2019-08-19' AS Date), N'She always speaks to him in a loud voice.', N'Triathlon', N'Beata', N'Leyden', N'Floddence', 2400, N'reorientated', N'ubiquitary')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (67, CAST(N'2019-03-02' AS Date), CAST(N'2019-08-19' AS Date), N'Abstraction is often one floor above you.', N'Weightlifting', N'Zoraida', N'Omarah', N'Floddence', 4780, N'uninstituted', N'implausibility')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (68, CAST(N'2017-02-06' AS Date), CAST(N'2019-08-19' AS Date), N'She wrote him a long letter, but he didn''t read it.', N'Volleyball', N'Samara', N'Locascio', N'Zrago', 8110, N'valedictory', N'geodetically')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (69, CAST(N'2017-05-19' AS Date), CAST(N'2019-08-19' AS Date), N'I was very proud of my nickname throughout high school but today- I couldn’t be any different to what my nickname was.', N'Table Tennis', N'Lyn', N'Fritz', N'Yleastin', 5850, N'anaesthesiologist', N'dyspareunia')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (70, CAST(N'2017-08-29' AS Date), CAST(N'2019-08-19' AS Date), N'My Mum tries to be cool by saying that she likes all the same things that I do.', N'Handball', N'Reynalda', N'Ruzicka', N'Riesall', 10, N'pergamenian', N'pseudomedical')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (71, CAST(N'2018-10-25' AS Date), CAST(N'2019-08-19' AS Date), N'Mary plays the piano.', N'Tae Kwon Do ', N'Felipe', N'Torpey', N'Klester', 5950, N'nondiscriminative', N'reassimilate')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (72, CAST(N'2018-04-23' AS Date), CAST(N'2019-08-19' AS Date), N'Everyone was busy, so I went to the movie alone.', N'Triathlon', N'Fermina', N'Santillan', N'Yleastin', 9070, N'polyrhythmically', N'rhinocerial')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (73, CAST(N'2017-04-03' AS Date), CAST(N'2019-08-19' AS Date), N'She did not cheat on the test, for it was not the right thing to do.', N'Swimming', N'Kristopher', N'Malpass', N'Yleastin', 740, N'unmodulated', N'theatricalization')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (74, CAST(N'2017-06-11' AS Date), CAST(N'2019-08-19' AS Date), N'I am never at home on Sundays.', N'Swimming', N'Youlanda', N'Kysar', N'Floddence', 4040, N'contemptuousness', N'fatigability')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (75, CAST(N'2019-08-10' AS Date), CAST(N'2019-08-19' AS Date), N'He said he was not there yesterday; however, many people saw him there.', N'Wrestling', N'Reginald', N'Mcminn', N'Puesea', 1170, N'unrationalised', N'gregariously')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (76, CAST(N'2018-12-19' AS Date), CAST(N'2019-08-19' AS Date), N'Someone I know recently combined Maple Syrup & buttered Popcorn thinking it would taste like caramel popcorn. It didn’t and they don’t recommend anyone else do it either.', N'Boxing', N'Honey', N'Abdullah', N'Zlaystead', 9770, N'superqualifying', N'superinformal')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (77, CAST(N'2017-11-24' AS Date), CAST(N'2019-08-19' AS Date), N'Last Friday in three week’s time I saw a spotted striped blue worm shake hands with a legless lizard.', N'Boxing', N'Earlene', N'Sams', N'Amving', 950, N'thioantimonite', N'sensationally')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (78, CAST(N'2018-05-01' AS Date), CAST(N'2019-08-19' AS Date), N'Where do random thoughts come from?', N'Wrestling', N'Enedina', N'Jowers', N'Amving', 9820, N'heterogamous', N'noncrystallizing')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (79, CAST(N'2018-01-07' AS Date), CAST(N'2019-08-19' AS Date), N'I really want to go to work, but I am too sick to drive.', N'Athletics', N'Angele', N'Marti', N'Sront', 3560, N'interplanetary', N'interplanetary')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (80, CAST(N'2017-12-30' AS Date), CAST(N'2019-08-19' AS Date), N'He didn’t want to go to the dentist, yet he went anyway.', N'Cycling', N'Rosemary', N'Batt', N'Puesea', 2760, N'accompanying', N'iphigenia')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (81, CAST(N'2019-01-30' AS Date), CAST(N'2019-08-19' AS Date), N'Check back tomorrow; I will see if the book has arrived.', N'Triathlon', N'Dolores', N'Helms', N'Puesea', 40, N'unentertaining', N'conciliative')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (82, CAST(N'2017-04-15' AS Date), CAST(N'2019-08-19' AS Date), N'Rock music approaches at high velocity.', N'Handball', N'Ehtel', N'Dison', N'Amving', 1810, N'noncontemptibleness', N'sophistication')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (83, CAST(N'2018-02-27' AS Date), CAST(N'2019-08-19' AS Date), N'He turned in the research paper on Friday; otherwise, he would have not passed the class.', N'Weightlifting', N'Nohemi', N'Selig', N'Amving', 9420, N'noncosmopolite', N'multilateral')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (84, CAST(N'2017-02-11' AS Date), CAST(N'2019-08-19' AS Date), N'The quick brown fox jumps over the lazy dog.', N'Rugby', N'Carlotta', N'Gibbs', N'Zrago', 2910, N'unirascible', N'unrationalized')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (85, CAST(N'2017-05-13' AS Date), CAST(N'2019-08-19' AS Date), N'She folded her handkerchief neatly.', N'Boxing', N'Eleanora', N'Cervantez', N'Riesall', 8280, N'inapproachably', N'unpreferable')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (86, CAST(N'2017-02-24' AS Date), CAST(N'2019-08-19' AS Date), N'I hear that Nancy is very pretty.', N'Tae Kwon Do ', N'Anton', N'Dalal', N'Yleastin', 8860, N'hypertensinogen', N'overpessimistic')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (87, CAST(N'2019-02-01' AS Date), CAST(N'2019-08-19' AS Date), N'The shooter says goodbye to his love.', N'Cycling', N'Donnetta', N'Wheeless', N'Riesall', 3660, N'elementariness', N'subterraneously')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (88, CAST(N'2018-05-19' AS Date), CAST(N'2019-08-19' AS Date), N'I often see the time 11:11 or 12:34 on clocks.', N'Handball', N'Jacque', N'Gasca', N'Sront', 8700, N'tocodynamometer', N'nonradioactive')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (89, CAST(N'2019-08-05' AS Date), CAST(N'2019-08-19' AS Date), N'I think I will buy the red car, or I will lease the blue one.', N'Boxing', N'Demetrius', N'Honea', N'Yleastin', 2230, N'extenuatingly', N'unformalistic')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (90, CAST(N'2018-03-05' AS Date), CAST(N'2019-08-19' AS Date), N'He told us a very exciting adventure story.', N'Rugby', N'Earlean', N'Halter', N'Sront', 7610, N'dermographia', N'gastroenterologist')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (91, CAST(N'2017-06-30' AS Date), CAST(N'2019-08-19' AS Date), N'There was no ice cream in the freezer, nor did they have money to go to the store.', N'Tae Kwon Do ', N'Fabian', N'Curran', N'Amving', 440, N'reorientated', N'ubiquitary')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (92, CAST(N'2018-05-10' AS Date), CAST(N'2019-08-19' AS Date), N'The old apple revels in its authority.', N'Equestrian', N'Alfred', N'Ellett', N'Zrago', 5990, N'uninstituted', N'implausibility')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (93, CAST(N'2017-06-03' AS Date), CAST(N'2019-08-19' AS Date), N'I want more detailed information.', N'Volleyball', N'Cristine', N'Deshaies', N'Yleastin', 4630, N'valedictory', N'geodetically')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (94, CAST(N'2019-08-28' AS Date), CAST(N'2019-08-19' AS Date), N'I checked to make sure that he was still alive.', N'Tae Kwon Do ', N'Will', N'Rolle', N'Sront', 8420, N'anaesthesiologist', N'dyspareunia')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (95, CAST(N'2019-09-07' AS Date), CAST(N'2019-08-19' AS Date), N'Sometimes, all you need to do is completely make an ass of yourself and laugh it off to realise that life isn’t so bad after all.', N'Athletics', N'Shavon', N'Torain', N'Riesall', 4460, N'pergamenian', N'pseudomedical')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (96, CAST(N'2017-11-22' AS Date), CAST(N'2019-08-19' AS Date), N'I am happy to take your donation; any amount will be greatly appreciated.', N'Equestrian', N'Nam', N'Rolls', N'Floddence', 730, N'nondiscriminative', N'reassimilate')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (97, CAST(N'2018-10-07' AS Date), CAST(N'2019-08-19' AS Date), N'This is the last random sentence I will be writing and I am going to stop mid-sent', N'Athletics', N'Merry', N'Laffey', N'Riesall', 2470, N'polyrhythmically', N'rhinocerial')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (98, CAST(N'2017-05-28' AS Date), CAST(N'2019-08-19' AS Date), N'Lets all be unique together until we realise we are all the same.', N'Boxing', N'Michell', N'Youngman', N'Sront', 1800, N'unmodulated', N'theatricalization')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (99, CAST(N'2018-02-06' AS Date), CAST(N'2019-08-19' AS Date), N'Should we start class now, or should we wait for everyone to get here?', N'Cycling', N'Cira', N'Esterline', N'Riesall', 6850, N'contemptuousness', N'fatigability')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (100, CAST(N'2017-11-19' AS Date), CAST(N'2019-08-19' AS Date), N'I want to buy a onesie… but know it won’t suit me.', N'Tae Kwon Do ', N'Maile', N'Manley', N'Riesall', 7430, N'unrationalised', N'gregariously')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (101, CAST(N'2019-08-28' AS Date), CAST(N'2019-08-19' AS Date), N'Sixty-Four comes asking for bread.', N'Boxing', N'Anette', N'Cohee', N'Riesall', 7540, N'superqualifying', N'superinformal')
GO
INSERT [dbo].[competition] ([id], [date], [deadline_date], [description], [dyscipline], [name], [organizer], [place], [players_limit], [reg_url], [results_url]) VALUES (102, CAST(N'2019-04-09' AS Date), CAST(N'2019-08-19' AS Date), N'Christmas is coming.', N'Tennis', N'Loyce', N'Avey', N'Zrago', 5400, N'thioantimonite', N'sensationally')
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (3, N'Temeka@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (4, N'Delores@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (5, N'Terra@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (6, N'Lydia@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (7, N'Kathaleen@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (8, N'Sallie@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (9, N'Arlena@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (10, N'Jadwiga@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (11, N'Salvador@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (12, N'Luciano@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (13, N'Melonie@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (14, N'Lynelle@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (15, N'Frederick@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (16, N'Ashely@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (17, N'Bert@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (18, N'Harlan@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (19, N'Sylvia@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (20, N'Lavone@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (21, N'Fanny@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (22, N'Chasity@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (23, N'Marilyn@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (24, N'Maria@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (25, N'Caitlyn@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (26, N'Marcella@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (27, N'Lakeesha@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (28, N'Irena@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (29, N'Broderick@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (30, N'Nestor@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (31, N'Chasidy@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (32, N'Lynna@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (33, N'Treva@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (34, N'Suellen@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (35, N'Kimbery@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (36, N'Darin@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (37, N'Angeline@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (38, N'Darius@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (39, N'Shon@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (40, N'Sherise@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (41, N'Refugia@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (42, N'Lin@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (43, N'Carmela@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (44, N'Jospeh@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (45, N'Brenna@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (46, N'Leisha@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (47, N'Michel@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (48, N'Evia@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (49, N'Alanna@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (50, N'Carin@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (51, N'Zoraida@gmail.com', N'12345', 1)
GO
INSERT [dbo].[login] ([id], [email], [password], [role_id]) VALUES (52, N'Aracely@gmail.com', N'12345', 1)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (112, CAST(N'1993-06-24' AS Date), N'Amving', N'Spain', N'84TJ-JV8U-N5TF-2GMT', N'Temeka', N'(772) 787-4420', N'male', N'Screws', N'Puffy', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (113, CAST(N'1999-10-01' AS Date), N'Puesea', N'Poland', N'S8MF-VMYM-NALN-E7KG', N'Delores', N'(616) 995-4963', N'male', N'Macha', N'Bizarre', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (114, CAST(N'1993-11-29' AS Date), N'Zlaystead', N'Montserrat', N'954S-86XJ-7M5J-F4JM', N'Terra', N'(403) 209-7573', N'male', N'Laverty', N'Tight', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (115, CAST(N'2006-11-23' AS Date), N'Klester', N'Poland', N'VX2E-SMMB-M4YE-74LA', N'Lydia', N'(953) 590-4667', N'male', N'Musselwhite', N'Book', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (116, CAST(N'1996-02-20' AS Date), N'Klester', N'Poland', N'UKZU-G8WM-VUJ3-EGHH', N'Kathaleen', N'(800) 665-4361', N'male', N'Rowell', N'Quiet', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (117, CAST(N'2004-09-28' AS Date), N'Riesall', N'Montserrat', N'86U9-C9SF-9ZA8-8JF2', N'Sallie', N'(458) 395-7872', N'male', N'Jarrells', N'Cultured', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (118, CAST(N'1982-05-23' AS Date), N'Sront', N'Nigeria', N'MNX5-U7A5-BCE3-ZGVG', N'Arlena', N'(842) 941-4290', N'male', N'Saephan', N'Tight', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (119, CAST(N'2006-02-26' AS Date), N'Yleastin', N'Slovenia', N'P868-9GL4-GVMM-CLSN', N'Jadwiga', N'(662) 463-4738', N'male', N'Maston', N'Quiet', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (120, CAST(N'2003-06-03' AS Date), N'Sront', N'Nigeria', N'T6AY-U5EP-C65L-N4ST', N'Salvador', N'(742) 518-5357', N'male', N'Lupton', N'Quicksand', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (121, CAST(N'1985-08-24' AS Date), N'Amving', N'Montserrat', N'2W9F-T2MV-NZG6-VWRE', N'Luciano', N'(902) 919-9078', N'male', N'Hartlage', N'Quicksand', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (122, CAST(N'1992-12-31' AS Date), N'Zlaystead', N'Spain', N'Q7AN-T2JX-HS8F-FK5X', N'Melonie', N'(713) 817-1731', N'male', N'Crafford', N'Puffy', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (123, CAST(N'1985-02-06' AS Date), N'Klester', N'Poland', N'785A-GQAA-2SFJ-LFH7', N'Lynelle', N'(873) 268-6409', N'male', N'Saladino', N'Cultured', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (124, CAST(N'2003-04-12' AS Date), N'Sront', N'Poland', N'TAKD-4AKZ-NBF6-PNBC', N'Frederick', N'(293) 637-5634', N'male', N'Knoles', N'Erect', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (125, CAST(N'2002-06-14' AS Date), N'Floddence', N'Nepal', N'N5VN-UZ82-NVNG-6MPG', N'Ashely', N'(979) 325-1362', N'male', N'Gulledge', N'Ring', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (126, CAST(N'2009-05-01' AS Date), N'Yleastin', N'Spain', N'4P79-NCMA-KGBM-VJBM', N'Bert', N'(418) 254-2471', N'male', N'Sherard', N'Book', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (127, CAST(N'1991-04-13' AS Date), N'Zlaystead', N'Poland', N'ZMHV-5B2F-S5D6-GE9N', N'Harlan', N'(600) 493-9475', N'male', N'Hamrick', N'Puffy', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (128, CAST(N'2007-11-07' AS Date), N'Amving', N'Spain', N'EYTY-LUJH-2TRP-NDCH', N'Sylvia', N'(275) 536-0554', N'male', N'Sarris', N'Puffy', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (129, CAST(N'1984-11-17' AS Date), N'Klester', N'Montserrat', N'9EH3-YBYX-FBKB-WTKY', N'Lavone', N'(435) 299-0576', N'male', N'Lasater', N'Bizarre', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (130, CAST(N'1990-04-18' AS Date), N'Zrago', N'Poland', N'BNC6-QXUB-QXYH-PY62', N'Fanny', N'(884) 309-2329', N'male', N'Voliva', N'Hanging', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (131, CAST(N'2003-08-31' AS Date), N'Riesall', N'Nigeria', N'RFXS-8866-GRYU-RJWA', N'Chasity', N'(637) 965-5097', N'male', N'Leeks', N'Bizarre', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (132, CAST(N'1987-01-27' AS Date), N'Zlaystead', N'Poland', N'JNJX-YDSZ-LCZR-L946', N'Marilyn', N'(945) 473-8333', N'male', N'Bromberg', N'Ring', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (133, CAST(N'2005-04-17' AS Date), N'Floddence', N'Nigeria', N'9J7N-YX6R-2VXX-GBNZ', N'Maria', N'(478) 538-0321', N'male', N'Zieman', N'Volleyball', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (134, CAST(N'2008-09-29' AS Date), N'Zlaystead', N'Slovenia', N'N4E8-2GBU-ZBFX-9JQD', N'Caitlyn', N'(412) 643-8568', N'male', N'Aybar', N'Cultured', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (135, CAST(N'1999-02-02' AS Date), N'Riesall', N'Spain', N'BAHW-L7S8-XW5X-DTSB', N'Marcella', N'(481) 932-4265', N'male', N'Magallan', N'Quicksand', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (136, CAST(N'1993-03-26' AS Date), N'Zlaystead', N'Poland', N'QUDX-LNZY-JVN5-294E', N'Lakeesha', N'(672) 371-6934', N'male', N'Acosta', N'Tight', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (137, CAST(N'1998-10-12' AS Date), N'Klester', N'Montserrat', N'7755-23UP-QMZC-5X7N', N'Irena', N'(734) 887-6171', N'male', N'Dosch', N'Ring', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (138, CAST(N'1992-02-10' AS Date), N'Yleastin', N'Poland', N'44RG-TLLP-WXQJ-KBK6', N'Broderick', N'(753) 483-7990', N'male', N'Castilleja', N'Bizarre', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (139, CAST(N'1982-02-12' AS Date), N'Amving', N'Slovenia', N'NCUN-87BT-TBBK-WF59', N'Nestor', N'(333) 656-5722', N'male', N'Deacon', N'Puffy', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (140, CAST(N'2005-04-18' AS Date), N'Puesea', N'Spain', N'NYJV-SKLZ-3MPL-D4GT', N'Chasidy', N'(259) 626-6445', N'male', N'Imburgia', N'Hanging', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (141, CAST(N'1984-06-14' AS Date), N'Floddence', N'Poland', N'2SJF-HJ67-E3ZB-V9TT', N'Lynna', N'(329) 791-2609', N'male', N'Kirkendall', N'Dependent', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (142, CAST(N'1998-06-24' AS Date), N'Zlaystead', N'Spain', N'TN48-PKWZ-ECH7-RG2B', N'Treva', N'(720) 713-4489', N'male', N'Lockman', N'Book', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (143, CAST(N'2008-09-12' AS Date), N'Sront', N'Poland', N'7SG3-LXPW-8LXZ-EMDW', N'Suellen', N'(449) 688-0152', N'male', N'Marquart', N'Boats', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (144, CAST(N'1997-08-11' AS Date), N'Floddence', N'Poland', N'7WHB-DXLH-32S6-AMXH', N'Kimbery', N'(314) 444-5006', N'male', N'Keesling', N'Book', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (145, CAST(N'1990-09-12' AS Date), N'Klester', N'Spain', N'FYN3-Z72G-AF8H-EDRC', N'Darin', N'(679) 300-9509', N'male', N'Barnaby', N'Twig', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (146, CAST(N'1987-10-10' AS Date), N'Yleastin', N'Montserrat', N'XZD9-TW89-MHYN-S4N6', N'Angeline', N'(505) 873-2938', N'male', N'Desmond', N'Quiet', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (147, CAST(N'2006-11-16' AS Date), N'Puesea', N'Spain', N'Z7EW-TK8E-HQ3G-HEPW', N'Darius', N'(670) 973-6155', N'male', N'Cockburn', N'Fire', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (148, CAST(N'1990-08-27' AS Date), N'Yleastin', N'Nigeria', N'DZ9K-J524-XY8C-JPTT', N'Shon', N'(224) 826-6091', N'male', N'Denise', N'Hanging', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (149, CAST(N'1992-06-09' AS Date), N'Sront', N'Nepal', N'V7PW-L7X7-DETN-B7FA', N'Sherise', N'(316) 498-2566', N'male', N'Leventhal', N'Tight', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (150, CAST(N'1986-05-06' AS Date), N'Zlaystead', N'Spain', N'X6W3-ZLVQ-C7WL-VDSU', N'Refugia', N'(831) 706-0401', N'male', N'Gardner', N'Cultured', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (151, CAST(N'2001-05-18' AS Date), N'Sront', N'Nigeria', N'MNGS-YDCZ-M99U-PQKX', N'Lin', N'(789) 433-0288', N'male', N'Acre', N'Quicksand', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (152, CAST(N'1997-05-10' AS Date), N'Amving', N'Montserrat', N'8529-Y43P-MXDT-858Y', N'Carmela', N'(362) 724-1551', N'male', N'Gummer', N'Father', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (153, CAST(N'2003-03-29' AS Date), N'Sront', N'Nepal', N'2FUN-WCY9-KSG3-996A', N'Jospeh', N'(298) 632-5653', N'male', N'Ratley', N'Dependent', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (154, CAST(N'2006-05-06' AS Date), N'Amving', N'Slovenia', N'YU5S-2Q6L-MCKP-5FHR', N'Brenna', N'(806) 290-4375', N'male', N'Lobue', N'Cultured', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (155, CAST(N'1986-09-07' AS Date), N'Amving', N'Spain', N'P8JZ-AR9C-EYTE-5J5K', N'Leisha', N'(564) 481-0741', N'male', N'Hauer', N'Uptight', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (156, CAST(N'1988-12-03' AS Date), N'Riesall', N'Nepal', N'MXQF-MH9B-AE5E-P6PQ', N'Michel', N'(569) 728-1112', N'male', N'Fleig', N'Volleyball', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (157, CAST(N'2003-02-04' AS Date), N'Amving', N'Montserrat', N'XXU9-SQRU-ZGP2-QLWZ', N'Evia', N'(912) 831-3799', N'male', N'Liller', N'Volleyball', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (158, CAST(N'1994-03-31' AS Date), N'Yleastin', N'Montserrat', N'86GR-3WDG-ADRG-UHVG', N'Alanna', N'(415) 317-8998', N'male', N'Uhler', N'Planes', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (159, CAST(N'2005-09-13' AS Date), N'Puesea', N'Spain', N'XXJK-4FTM-3AWX-FB9E', N'Carin', N'(690) 659-7420', N'male', N'Stevenson', N'Planes', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (160, CAST(N'2001-07-25' AS Date), N'Klester', N'Nigeria', N'ZNFD-QRG8-NY28-AGV9', N'Zoraida', N'(631) 848-8637', N'male', N'Manno', N'Erect', NULL)
GO
INSERT [dbo].[player] ([id], [birth_date], [city], [country], [license], [name], [phone], [sex], [surname], [team], [login_id]) VALUES (161, CAST(N'1991-03-10' AS Date), N'Floddence', N'Slovenia', N'DRC7-7C79-2Z96-FN42', N'Aracely', N'(989) 870-8469', N'male', N'Nilsson', N'Fire', NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (162, 108, 69, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (163, 108, 97, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (164, 108, 71, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (165, 108, 66, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (166, 108, 84, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (167, 108, 76, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (168, 108, 100, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (169, 108, 90, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (170, 108, 57, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (171, 108, 62, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (172, 108, 64, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (173, 108, 56, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (174, 108, 96, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (175, 108, 86, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (176, 108, 92, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (177, 108, 101, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (178, 108, 82, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (179, 108, 67, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (180, 108, 88, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (181, 108, 94, 112, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (182, 110, 58, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (183, 110, 65, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (184, 110, 92, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (185, 110, 84, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (186, 110, 76, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (187, 110, 89, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (188, 110, 70, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (189, 110, 83, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (190, 110, 86, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (191, 110, 88, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (192, 110, 80, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (193, 110, 82, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (194, 110, 93, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (195, 110, 56, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (196, 110, 59, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (197, 110, 72, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (198, 110, 94, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (199, 110, 53, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (200, 110, 68, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (201, 110, 101, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (202, 110, 91, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (203, 110, 62, 113, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (204, 105, 56, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (205, 105, 73, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (206, 105, 81, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (207, 105, 101, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (208, 105, 66, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (209, 105, 62, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (210, 105, 92, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (211, 105, 94, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (212, 105, 63, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (213, 105, 59, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (214, 105, 78, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (215, 105, 98, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (216, 105, 57, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (217, 105, 80, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (218, 105, 61, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (219, 105, 99, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (220, 105, 76, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (221, 105, 82, 114, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (222, 110, 84, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (223, 110, 100, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (224, 110, 70, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (225, 110, 99, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (226, 110, 68, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (227, 110, 78, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (228, 110, 67, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (229, 110, 66, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (230, 110, 96, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (231, 110, 86, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (232, 110, 74, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (233, 110, 61, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (234, 110, 56, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (235, 110, 89, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (236, 110, 60, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (237, 110, 85, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (238, 110, 63, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (239, 110, 76, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (240, 110, 72, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (241, 110, 79, 115, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (242, 108, 97, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (243, 108, 81, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (244, 108, 88, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (245, 108, 90, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (246, 108, 98, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (247, 108, 65, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (248, 108, 85, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (249, 108, 75, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (250, 108, 83, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (251, 108, 53, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (252, 108, 62, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (253, 108, 100, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (254, 108, 56, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (255, 108, 61, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (256, 108, 71, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (257, 108, 63, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (258, 108, 76, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (259, 108, 73, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (260, 108, 93, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (261, 108, 89, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (262, 108, 92, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (263, 108, 101, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (264, 108, 78, 116, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (265, 104, 58, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (266, 104, 72, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (267, 104, 85, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (268, 104, 77, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (269, 104, 82, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (270, 104, 62, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (271, 104, 96, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (272, 104, 57, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (273, 104, 99, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (274, 104, 71, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (275, 104, 56, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (276, 104, 61, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (277, 104, 84, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (278, 104, 100, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (279, 104, 69, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (280, 104, 53, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (281, 104, 79, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (282, 104, 101, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (283, 104, 60, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (284, 104, 90, 117, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (285, 108, 73, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (286, 108, 89, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (287, 108, 59, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (288, 108, 101, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (289, 108, 75, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (290, 108, 69, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (291, 108, 93, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (292, 108, 61, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (293, 108, 70, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (294, 108, 72, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (295, 108, 81, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (296, 108, 78, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (297, 108, 71, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (298, 108, 87, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (299, 108, 97, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (300, 108, 96, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (301, 108, 65, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (302, 108, 86, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (303, 108, 82, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (304, 108, 53, 118, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (305, 105, 91, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (306, 105, 92, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (307, 105, 97, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (308, 105, 67, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (309, 105, 87, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (310, 105, 88, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (311, 105, 77, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (312, 105, 81, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (313, 105, 101, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (314, 105, 74, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (315, 105, 64, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (316, 105, 57, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (317, 105, 76, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (318, 105, 58, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (319, 105, 72, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (320, 105, 53, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (321, 105, 71, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (322, 105, 60, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (323, 105, 54, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (324, 105, 56, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (325, 105, 84, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (326, 105, 70, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (327, 105, 79, 119, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (328, 109, 94, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (329, 109, 72, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (330, 109, 85, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (331, 109, 55, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (332, 109, 70, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (333, 109, 91, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (334, 109, 71, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (335, 109, 78, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (336, 109, 68, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (337, 109, 83, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (338, 109, 90, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (339, 109, 97, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (340, 109, 67, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (341, 109, 59, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (342, 109, 73, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (343, 109, 77, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (344, 109, 98, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (345, 109, 76, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (346, 109, 74, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (347, 109, 64, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (348, 109, 60, 120, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (349, 105, 68, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (350, 105, 86, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (351, 105, 87, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (352, 105, 54, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (353, 105, 91, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (354, 105, 100, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (355, 105, 79, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (356, 105, 85, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (357, 105, 75, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (358, 105, 81, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (359, 105, 88, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (360, 105, 64, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (361, 105, 69, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (362, 105, 90, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (363, 105, 59, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (364, 105, 84, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (365, 105, 60, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (366, 105, 99, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (367, 105, 56, 121, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (368, 110, 85, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (369, 110, 73, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (370, 110, 78, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (371, 110, 96, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (372, 110, 59, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (373, 110, 54, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (374, 110, 57, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (375, 110, 87, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (376, 110, 58, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (377, 110, 65, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (378, 110, 93, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (379, 110, 63, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (380, 110, 64, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (381, 110, 71, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (382, 110, 89, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (383, 110, 55, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (384, 110, 86, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (385, 110, 98, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (386, 110, 99, 122, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (387, 109, 80, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (388, 109, 64, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (389, 109, 63, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (390, 109, 78, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (391, 109, 84, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (392, 109, 91, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (393, 109, 79, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (394, 109, 68, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (395, 109, 90, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (396, 109, 53, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (397, 109, 93, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (398, 109, 98, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (399, 109, 58, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (400, 109, 81, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (401, 109, 96, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (402, 109, 56, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (403, 109, 71, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (404, 109, 95, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (405, 109, 77, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (406, 109, 99, 123, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (407, 107, 94, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (408, 107, 61, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (409, 107, 60, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (410, 107, 101, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (411, 107, 99, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (412, 107, 75, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (413, 107, 88, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (414, 107, 69, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (415, 107, 74, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (416, 107, 100, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (417, 107, 95, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (418, 107, 87, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (419, 107, 83, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (420, 107, 79, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (421, 107, 73, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (422, 107, 55, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (423, 107, 57, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (424, 107, 56, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (425, 107, 85, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (426, 107, 81, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (427, 107, 70, 124, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (428, 110, 65, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (429, 110, 96, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (430, 110, 54, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (431, 110, 88, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (432, 110, 94, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (433, 110, 85, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (434, 110, 58, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (435, 110, 93, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (436, 110, 70, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (437, 110, 57, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (438, 110, 80, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (439, 110, 84, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (440, 110, 82, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (441, 110, 78, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (442, 110, 95, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (443, 110, 56, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (444, 110, 100, 125, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (445, 104, 73, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (446, 104, 86, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (447, 104, 75, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (448, 104, 59, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (449, 104, 82, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (450, 104, 74, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (451, 104, 57, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (452, 104, 63, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (453, 104, 100, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (454, 104, 71, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (455, 104, 55, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (456, 104, 70, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (457, 104, 79, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (458, 104, 72, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (459, 104, 89, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (460, 104, 53, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (461, 104, 69, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (462, 104, 67, 126, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (463, 104, 97, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (464, 104, 101, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (465, 104, 54, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (466, 104, 56, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (467, 104, 57, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (468, 104, 69, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (469, 104, 89, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (470, 104, 67, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (471, 104, 77, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (472, 104, 70, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (473, 104, 92, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (474, 104, 75, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (475, 104, 65, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (476, 104, 72, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (477, 104, 60, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (478, 104, 98, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (479, 104, 94, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (480, 104, 100, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (481, 104, 74, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (482, 104, 82, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (483, 104, 99, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (484, 104, 78, 127, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (485, 108, 88, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (486, 108, 94, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (487, 108, 61, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (488, 108, 97, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (489, 108, 91, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (490, 108, 71, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (491, 108, 99, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (492, 108, 69, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (493, 108, 55, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (494, 108, 53, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (495, 108, 90, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (496, 108, 77, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (497, 108, 66, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (498, 108, 76, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (499, 108, 63, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (500, 108, 68, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (501, 108, 98, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (502, 108, 70, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (503, 108, 81, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (504, 108, 96, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (505, 108, 60, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (506, 108, 65, 128, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (507, 106, 91, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (508, 106, 64, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (509, 106, 78, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (510, 106, 59, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (511, 106, 55, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (512, 106, 89, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (513, 106, 70, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (514, 106, 79, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (515, 106, 57, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (516, 106, 101, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (517, 106, 69, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (518, 106, 98, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (519, 106, 61, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (520, 106, 60, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (521, 106, 90, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (522, 106, 99, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (523, 106, 84, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (524, 106, 63, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (525, 106, 77, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (526, 106, 86, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (527, 106, 94, 129, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (528, 109, 65, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (529, 109, 59, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (530, 109, 70, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (531, 109, 96, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (532, 109, 88, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (533, 109, 85, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (534, 109, 86, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (535, 109, 93, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (536, 109, 84, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (537, 109, 80, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (538, 109, 67, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (539, 109, 100, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (540, 109, 66, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (541, 109, 71, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (542, 109, 92, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (543, 109, 55, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (544, 109, 83, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (545, 109, 57, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (546, 109, 75, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (547, 109, 64, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (548, 109, 62, 130, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (549, 108, 86, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (550, 108, 89, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (551, 108, 68, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (552, 108, 99, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (553, 108, 54, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (554, 108, 95, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (555, 108, 70, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (556, 108, 87, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (557, 108, 72, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (558, 108, 61, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (559, 108, 59, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (560, 108, 65, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (561, 108, 67, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (562, 108, 69, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (563, 108, 60, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (564, 108, 85, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (565, 108, 71, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (566, 108, 56, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (567, 108, 58, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (568, 108, 63, 131, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (569, 104, 101, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (570, 104, 65, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (571, 104, 70, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (572, 104, 75, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (573, 104, 99, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (574, 104, 71, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (575, 104, 53, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (576, 104, 56, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (577, 104, 67, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (578, 104, 95, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (579, 104, 79, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (580, 104, 86, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (581, 104, 58, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (582, 104, 68, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (583, 104, 80, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (584, 104, 83, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (585, 104, 62, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (586, 104, 55, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (587, 104, 74, 132, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (588, 106, 98, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (589, 106, 72, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (590, 106, 82, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (591, 106, 75, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (592, 106, 71, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (593, 106, 93, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (594, 106, 59, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (595, 106, 87, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (596, 106, 67, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (597, 106, 54, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (598, 106, 64, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (599, 106, 88, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (600, 106, 78, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (601, 106, 62, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (602, 106, 94, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (603, 106, 60, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (604, 106, 81, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (605, 106, 68, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (606, 106, 83, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (607, 106, 69, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (608, 106, 70, 133, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (609, 109, 92, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (610, 109, 87, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (611, 109, 85, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (612, 109, 72, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (613, 109, 81, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (614, 109, 93, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (615, 109, 82, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (616, 109, 95, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (617, 109, 96, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (618, 109, 91, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (619, 109, 78, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (620, 109, 58, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (621, 109, 64, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (622, 109, 88, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (623, 109, 60, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (624, 109, 97, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (625, 109, 99, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (626, 109, 53, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (627, 109, 83, 134, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (628, 110, 97, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (629, 110, 72, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (630, 110, 73, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (631, 110, 98, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (632, 110, 89, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (633, 110, 86, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (634, 110, 77, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (635, 110, 95, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (636, 110, 63, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (637, 110, 57, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (638, 110, 68, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (639, 110, 82, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (640, 110, 64, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (641, 110, 61, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (642, 110, 78, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (643, 110, 100, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (644, 110, 85, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (645, 110, 101, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (646, 110, 96, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (647, 110, 99, 135, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (648, 106, 78, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (649, 106, 83, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (650, 106, 65, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (651, 106, 53, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (652, 106, 90, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (653, 106, 72, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (654, 106, 67, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (655, 106, 73, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (656, 106, 79, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (657, 106, 95, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (658, 106, 70, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (659, 106, 89, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (660, 106, 81, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (661, 106, 82, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (662, 106, 64, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (663, 106, 61, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (664, 106, 54, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (665, 106, 56, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (666, 106, 76, 136, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (667, 108, 91, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (668, 108, 99, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (669, 108, 72, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (670, 108, 80, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (671, 108, 94, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (672, 108, 69, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (673, 108, 75, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (674, 108, 55, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (675, 108, 76, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (676, 108, 82, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (677, 108, 67, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (678, 108, 57, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (679, 108, 98, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (680, 108, 54, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (681, 108, 77, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (682, 108, 101, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (683, 108, 73, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (684, 108, 85, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (685, 108, 70, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (686, 108, 74, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (687, 108, 61, 137, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (688, 105, 69, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (689, 105, 84, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (690, 105, 62, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (691, 105, 81, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (692, 105, 86, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (693, 105, 80, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (694, 105, 53, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (695, 105, 79, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (696, 105, 66, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (697, 105, 98, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (698, 105, 88, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (699, 105, 72, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (700, 105, 101, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (701, 105, 89, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (702, 105, 94, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (703, 105, 85, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (704, 105, 83, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (705, 105, 57, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (706, 105, 76, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (707, 105, 91, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (708, 105, 77, 138, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (709, 103, 86, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (710, 103, 99, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (711, 103, 60, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (712, 103, 80, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (713, 103, 83, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (714, 103, 58, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (715, 103, 93, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (716, 103, 101, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (717, 103, 63, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (718, 103, 76, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (719, 103, 84, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (720, 103, 97, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (721, 103, 69, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (722, 103, 88, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (723, 103, 90, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (724, 103, 67, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (725, 103, 92, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (726, 103, 66, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (727, 103, 70, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (728, 103, 82, 139, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (729, 105, 97, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (730, 105, 54, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (731, 105, 84, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (732, 105, 74, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (733, 105, 60, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (734, 105, 82, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (735, 105, 91, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (736, 105, 69, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (737, 105, 66, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (738, 105, 68, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (739, 105, 62, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (740, 105, 94, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (741, 105, 71, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (742, 105, 81, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (743, 105, 56, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (744, 105, 79, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (745, 105, 67, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (746, 105, 58, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (747, 105, 80, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (748, 105, 101, 140, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (749, 109, 68, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (750, 109, 57, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (751, 109, 85, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (752, 109, 90, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (753, 109, 97, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (754, 109, 73, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (755, 109, 64, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (756, 109, 75, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (757, 109, 98, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (758, 109, 95, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (759, 109, 84, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (760, 109, 93, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (761, 109, 61, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (762, 109, 80, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (763, 109, 67, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (764, 109, 79, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (765, 109, 83, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (766, 109, 89, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (767, 109, 58, 141, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (768, 110, 90, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (769, 110, 84, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (770, 110, 77, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (771, 110, 68, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (772, 110, 81, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (773, 110, 86, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (774, 110, 66, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (775, 110, 72, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (776, 110, 70, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (777, 110, 79, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (778, 110, 54, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (779, 110, 95, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (780, 110, 53, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (781, 110, 88, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (782, 110, 94, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (783, 110, 71, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (784, 110, 99, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (785, 110, 56, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (786, 110, 57, 142, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (787, 104, 56, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (788, 104, 99, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (789, 104, 78, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (790, 104, 96, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (791, 104, 64, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (792, 104, 91, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (793, 104, 86, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (794, 104, 92, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (795, 104, 98, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (796, 104, 60, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (797, 104, 101, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (798, 104, 61, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (799, 104, 80, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (800, 104, 75, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (801, 104, 66, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (802, 104, 83, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (803, 104, 71, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (804, 104, 74, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (805, 104, 95, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (806, 104, 94, 143, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (807, 108, 63, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (808, 108, 84, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (809, 108, 77, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (810, 108, 73, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (811, 108, 60, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (812, 108, 91, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (813, 108, 94, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (814, 108, 67, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (815, 108, 74, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (816, 108, 68, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (817, 108, 78, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (818, 108, 89, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (819, 108, 66, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (820, 108, 100, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (821, 108, 61, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (822, 108, 70, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (823, 108, 95, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (824, 108, 87, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (825, 108, 83, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (826, 108, 53, 144, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (827, 105, 64, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (828, 105, 99, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (829, 105, 82, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (830, 105, 90, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (831, 105, 76, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (832, 105, 67, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (833, 105, 58, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (834, 105, 94, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (835, 105, 73, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (836, 105, 86, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (837, 105, 91, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (838, 105, 71, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (839, 105, 101, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (840, 105, 66, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (841, 105, 95, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (842, 105, 55, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (843, 105, 54, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (844, 105, 69, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (845, 105, 74, 145, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (846, 110, 92, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (847, 110, 82, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (848, 110, 75, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (849, 110, 74, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (850, 110, 79, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (851, 110, 83, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (852, 110, 94, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (853, 110, 62, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (854, 110, 70, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (855, 110, 58, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (856, 110, 73, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (857, 110, 99, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (858, 110, 96, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (859, 110, 61, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (860, 110, 90, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (861, 110, 89, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (862, 110, 57, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (863, 110, 84, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (864, 110, 65, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (865, 110, 76, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (866, 110, 66, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (867, 110, 53, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (868, 110, 98, 146, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (869, 110, 69, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (870, 110, 81, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (871, 110, 63, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (872, 110, 72, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (873, 110, 76, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (874, 110, 82, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (875, 110, 67, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (876, 110, 55, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (877, 110, 74, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (878, 110, 93, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (879, 110, 101, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (880, 110, 59, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (881, 110, 100, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (882, 110, 75, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (883, 110, 57, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (884, 110, 85, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (885, 110, 70, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (886, 110, 61, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (887, 110, 68, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (888, 110, 89, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (889, 110, 65, 147, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (890, 108, 76, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (891, 108, 101, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (892, 108, 84, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (893, 108, 67, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (894, 108, 81, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (895, 108, 56, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (896, 108, 93, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (897, 108, 72, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (898, 108, 86, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (899, 108, 57, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (900, 108, 83, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (901, 108, 87, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (902, 108, 82, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (903, 108, 88, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (904, 108, 66, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (905, 108, 55, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (906, 108, 60, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (907, 108, 77, 148, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (908, 109, 97, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (909, 109, 72, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (910, 109, 88, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (911, 109, 68, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (912, 109, 64, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (913, 109, 81, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (914, 109, 99, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (915, 109, 60, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (916, 109, 93, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (917, 109, 54, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (918, 109, 66, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (919, 109, 62, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (920, 109, 56, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (921, 109, 95, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (922, 109, 83, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (923, 109, 71, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (924, 109, 101, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (925, 109, 61, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (926, 109, 55, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (927, 109, 76, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (928, 109, 73, 149, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (929, 105, 58, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (930, 105, 53, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (931, 105, 57, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (932, 105, 72, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (933, 105, 95, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (934, 105, 82, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (935, 105, 98, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (936, 105, 92, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (937, 105, 84, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (938, 105, 74, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (939, 105, 101, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (940, 105, 89, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (941, 105, 99, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (942, 105, 70, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (943, 105, 69, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (944, 105, 93, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (945, 105, 76, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (946, 105, 62, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (947, 105, 86, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (948, 105, 97, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (949, 105, 63, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (950, 105, 85, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (951, 105, 68, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (952, 105, 78, 150, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (953, 107, 71, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (954, 107, 80, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (955, 107, 77, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (956, 107, 92, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (957, 107, 83, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (958, 107, 79, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (959, 107, 57, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (960, 107, 67, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (961, 107, 54, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (962, 107, 76, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (963, 107, 75, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (964, 107, 100, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (965, 107, 53, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (966, 107, 97, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (967, 107, 65, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (968, 107, 70, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (969, 107, 81, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (970, 107, 60, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (971, 107, 58, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (972, 107, 72, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (973, 107, 68, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (974, 107, 98, 151, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (975, 104, 101, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (976, 104, 94, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (977, 104, 55, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (978, 104, 69, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (979, 104, 72, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (980, 104, 60, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (981, 104, 76, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (982, 104, 91, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (983, 104, 61, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (984, 104, 59, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (985, 104, 62, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (986, 104, 67, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (987, 104, 85, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (988, 104, 83, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (989, 104, 70, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (990, 104, 90, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (991, 104, 77, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (992, 104, 87, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (993, 104, 78, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (994, 104, 95, 152, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (995, 108, 62, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (996, 108, 77, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (997, 108, 71, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (998, 108, 88, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (999, 108, 86, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1000, 108, 97, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1001, 108, 59, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1002, 108, 99, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1003, 108, 68, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1004, 108, 74, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1005, 108, 63, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1006, 108, 100, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1007, 108, 70, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1008, 108, 61, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1009, 108, 89, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1010, 108, 87, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1011, 108, 76, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1012, 108, 56, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1013, 108, 72, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1014, 108, 83, 153, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1015, 104, 61, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1016, 104, 56, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1017, 104, 69, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1018, 104, 96, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1019, 104, 100, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1020, 104, 93, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1021, 104, 73, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1022, 104, 97, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1023, 104, 81, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1024, 104, 57, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1025, 104, 64, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1026, 104, 74, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1027, 104, 87, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1028, 104, 79, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1029, 104, 84, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1030, 104, 59, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1031, 104, 53, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1032, 104, 58, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1033, 104, 88, 154, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1034, 108, 56, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1035, 108, 63, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1036, 108, 57, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1037, 108, 100, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1038, 108, 82, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1039, 108, 67, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1040, 108, 94, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1041, 108, 87, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1042, 108, 64, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1043, 108, 80, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1044, 108, 72, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1045, 108, 68, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1046, 108, 91, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1047, 108, 58, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1048, 108, 71, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1049, 108, 70, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1050, 108, 89, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1051, 108, 69, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1052, 108, 66, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1053, 108, 76, 155, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1054, 104, 96, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1055, 104, 56, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1056, 104, 65, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1057, 104, 99, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1058, 104, 57, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1059, 104, 80, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1060, 104, 88, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1061, 104, 86, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1062, 104, 72, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1063, 104, 94, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1064, 104, 79, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1065, 104, 70, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1066, 104, 90, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1067, 104, 61, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1068, 104, 101, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1069, 104, 67, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1070, 104, 53, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1071, 104, 54, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1072, 104, 55, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1073, 104, 71, 156, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1074, 107, 96, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1075, 107, 54, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1076, 107, 71, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1077, 107, 79, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1078, 107, 65, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1079, 107, 83, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1080, 107, 78, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1081, 107, 69, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1082, 107, 53, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1083, 107, 85, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1084, 107, 70, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1085, 107, 68, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1086, 107, 97, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1087, 107, 72, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1088, 107, 90, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1089, 107, 84, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1090, 107, 62, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1091, 107, 61, 157, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1092, 107, 83, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1093, 107, 100, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1094, 107, 68, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1095, 107, 85, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1096, 107, 94, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1097, 107, 73, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1098, 107, 95, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1099, 107, 63, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1100, 107, 65, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1101, 107, 88, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1102, 107, 72, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1103, 107, 98, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1104, 107, 81, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1105, 107, 80, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1106, 107, 64, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1107, 107, 78, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1108, 107, 76, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1109, 107, 79, 158, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1110, 110, 99, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1111, 110, 75, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1112, 110, 59, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1113, 110, 70, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1114, 110, 72, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1115, 110, 101, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1116, 110, 60, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1117, 110, 87, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1118, 110, 80, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1119, 110, 65, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1120, 110, 63, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1121, 110, 54, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1122, 110, 85, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1123, 110, 55, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1124, 110, 76, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1125, 110, 71, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1126, 110, 82, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1127, 110, 90, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1128, 110, 64, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1129, 110, 58, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1130, 110, 95, 159, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1131, 109, 58, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1132, 109, 84, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1133, 109, 67, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1134, 109, 83, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1135, 109, 65, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1136, 109, 95, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1137, 109, 72, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1138, 109, 100, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1139, 109, 74, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1140, 109, 75, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1141, 109, 101, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1142, 109, 82, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1143, 109, 96, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1144, 109, 76, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1145, 109, 68, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1146, 109, 80, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1147, 109, 55, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1148, 109, 89, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1149, 109, 99, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1150, 109, 61, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1151, 109, 98, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1152, 109, 79, 160, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1153, 105, 91, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1154, 105, 70, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1155, 105, 97, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1156, 105, 73, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1157, 105, 98, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1158, 105, 83, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1159, 105, 89, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1160, 105, 77, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1161, 105, 76, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1162, 105, 80, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1163, 105, 96, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1164, 105, 60, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1165, 105, 69, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1166, 105, 92, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1167, 105, 62, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1168, 105, 71, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1169, 105, 58, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1170, 105, 82, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1171, 105, 81, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1172, 105, 88, 161, NULL)
GO
INSERT [dbo].[player_category] ([id], [categories_id], [competitions_id], [player_id], [competitions_competition_id]) VALUES (1173, 105, 67, 161, NULL)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (112, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (113, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (114, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (115, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (116, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (117, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (118, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (119, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (120, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (121, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (122, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (123, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (124, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (125, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (126, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (127, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (128, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (129, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (130, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (131, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (132, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (133, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (134, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (135, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (136, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (137, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (138, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (139, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (140, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (141, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (142, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (143, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (144, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (145, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (146, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (147, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (148, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (149, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (150, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (151, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (152, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (153, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (154, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (155, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (156, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (157, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (158, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (159, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (160, 67)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 91)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 70)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 97)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 73)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 98)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 83)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 89)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 77)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 76)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 80)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 96)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 60)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 69)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 92)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 62)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 71)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 58)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 82)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 81)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 88)
GO
INSERT [dbo].[player_competitions] ([player_id], [competitions_id]) VALUES (161, 67)
GO
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'player')
GO
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'admin')
GO
ALTER TABLE [dbo].[category_competitions]  WITH CHECK ADD  CONSTRAINT [FKf37fco8dlmbmfiot9hvpg6qn3] FOREIGN KEY([competitions_id])
REFERENCES [dbo].[competition] ([id])
GO
ALTER TABLE [dbo].[category_competitions] CHECK CONSTRAINT [FKf37fco8dlmbmfiot9hvpg6qn3]
GO
ALTER TABLE [dbo].[category_competitions]  WITH CHECK ADD  CONSTRAINT [FKhqppcdtgosh9esaeeov95rn67] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[category_competitions] CHECK CONSTRAINT [FKhqppcdtgosh9esaeeov95rn67]
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [FKb5k3dk3163hw6o0tti30xt8lx] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [FKb5k3dk3163hw6o0tti30xt8lx]
GO
ALTER TABLE [dbo].[player]  WITH CHECK ADD  CONSTRAINT [FKk5cd9h6p9089icipgp2gfcrnv] FOREIGN KEY([login_id])
REFERENCES [dbo].[login] ([id])
GO
ALTER TABLE [dbo].[player] CHECK CONSTRAINT [FKk5cd9h6p9089icipgp2gfcrnv]
GO
ALTER TABLE [dbo].[player_category]  WITH CHECK ADD  CONSTRAINT [FK9u62rfgi3dhrqprfkjuhc50o6] FOREIGN KEY([competitions_competition_id])
REFERENCES [dbo].[competition] ([id])
GO
ALTER TABLE [dbo].[player_category] CHECK CONSTRAINT [FK9u62rfgi3dhrqprfkjuhc50o6]
GO
ALTER TABLE [dbo].[player_category]  WITH CHECK ADD  CONSTRAINT [FKance4j3x98m886ojmwjpxxmfr] FOREIGN KEY([player_id])
REFERENCES [dbo].[player] ([id])
GO
ALTER TABLE [dbo].[player_category] CHECK CONSTRAINT [FKance4j3x98m886ojmwjpxxmfr]
GO
ALTER TABLE [dbo].[player_category]  WITH CHECK ADD  CONSTRAINT [FKgy9b03eobe13f9a1r8fugiau4] FOREIGN KEY([categories_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[player_category] CHECK CONSTRAINT [FKgy9b03eobe13f9a1r8fugiau4]
GO
ALTER TABLE [dbo].[player_category]  WITH CHECK ADD  CONSTRAINT [FKq68frcu39nd6qyjct8wbay7xo] FOREIGN KEY([competitions_id])
REFERENCES [dbo].[competition] ([id])
GO
ALTER TABLE [dbo].[player_category] CHECK CONSTRAINT [FKq68frcu39nd6qyjct8wbay7xo]
GO
ALTER TABLE [dbo].[player_competitions]  WITH CHECK ADD  CONSTRAINT [FK1wxdrpcxami2tuwpdnqx1g6ai] FOREIGN KEY([player_id])
REFERENCES [dbo].[player] ([id])
GO
ALTER TABLE [dbo].[player_competitions] CHECK CONSTRAINT [FK1wxdrpcxami2tuwpdnqx1g6ai]
GO
ALTER TABLE [dbo].[player_competitions]  WITH CHECK ADD  CONSTRAINT [FKbb3nrj082cn9oqi9yf4kbvv16] FOREIGN KEY([competitions_id])
REFERENCES [dbo].[competition] ([id])
GO
ALTER TABLE [dbo].[player_competitions] CHECK CONSTRAINT [FKbb3nrj082cn9oqi9yf4kbvv16]
GO
