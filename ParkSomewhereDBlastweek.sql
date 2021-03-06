USE [master]
GO
/****** Object:  Database [ParkSomewhereApp]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE DATABASE [ParkSomewhereApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ParkSomewhereApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ParkSomewhereApp.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ParkSomewhereApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ParkSomewhereApp_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ParkSomewhereApp] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ParkSomewhereApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ParkSomewhereApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ParkSomewhereApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ParkSomewhereApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ParkSomewhereApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ParkSomewhereApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ParkSomewhereApp] SET  MULTI_USER 
GO
ALTER DATABASE [ParkSomewhereApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ParkSomewhereApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ParkSomewhereApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ParkSomewhereApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ParkSomewhereApp] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ParkSomewhereApp]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Park]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Park](
	[ParkID] [int] IDENTITY(1,1) NOT NULL,
	[ParkName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Latitude] [nvarchar](100) NOT NULL,
	[Longitude] [nvarchar](100) NOT NULL,
	[OpenTime] [time](7) NOT NULL,
	[CloseTime] [time](7) NOT NULL,
	[Descripton] [nvarchar](250) NOT NULL,
	[Photo] [nvarchar](150) NULL,
	[AvgRating] [decimal](18, 0) NULL,
	[NumberRatings] [int] NULL,
	[Restrooms] [bit] NOT NULL,
	[PicnicArea] [bit] NOT NULL,
	[Grill] [bit] NOT NULL,
	[Playground] [bit] NOT NULL,
	[HikingTrail] [bit] NOT NULL,
	[PavedTrail] [bit] NOT NULL,
	[BasketballCourt] [bit] NOT NULL,
	[BaseballDiamond] [bit] NOT NULL,
	[CampGround] [bit] NOT NULL,
	[Fishing] [bit] NOT NULL,
	[Swimming] [bit] NOT NULL,
	[FitnessTrail] [bit] NOT NULL,
	[ADAAccessible] [bit] NOT NULL,
	[GoogleMap] [nvarchar](max) NULL,
 CONSTRAINT [PK_Park] PRIMARY KEY CLUSTERED 
(
	[ParkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Photo]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[ParkID] [int] NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[UserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Review]    Script Date: 4/16/2018 3:00:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ParkID] [int] NOT NULL,
	[ReviewTitle] [nvarchar](200) NOT NULL,
	[ReviewComments] [nvarchar](250) NOT NULL,
	[ReviewTimeStamp] [datetime] NULL CONSTRAINT [DF_Review_ReviewTimeStamp]  DEFAULT (getdate()),
	[Rating] [int] NULL,
	[TotalVotes] [int] NULL,
	[UserID] [nvarchar](128) NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201804031953058_InitialCreate', N'ParkSomewhereApp.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD14CEDA6E8DC617649DA06F0157E2AE85489422518E8D225FD6877E527FA14389BAF1A2CBAEBCBB2E0A145E717866381C7286C361FEFDFB9FF1AF0FBE67DCE328760332310F46FBA681891D382E594ECC842E5EBC367F7DF3FD77E333C77F303EE674478C0E7A927862DE511A1E5B566CDF611FC523DFB5A3200E16746407BE859CC03ADCDFFFC53A38B0304098806518E3F709A1AE8FD31FF0731A101B873441DE65E0602FE6DFA16596A21A57C8C771886C3C316F50F47916F8F8EB1D8EF049188EB22EA671E2B908C499616F611A889080220AC21E7F88F18C460159CE42F880BCDBC71003DD027931E683382EC9BB8E67FF908DC72A3BE6507612D3C0EF097870C4156489DD5752B3592810547806AAA68F6CD4A91A27E68583D34FEF030F1420323C9E7A11239E9897058B9338BCC27494771C6590E711C07D0DA2CFA32AE29ED1B9DF5E615087A37DF6DF9E314D3C9A447842704223E4ED1937C9DC73ED3FF0E36DF01993C9D1C17C71F4FAE52BE41CBDFA191FBDAC8E14C60A74B50FF0E9260A421C816C78518CDF34AC7A3F4BEC5874ABF4C9B402B6046BC3342ED1C33B4C96F40E56CDE16BD338771FB0937FE1C6F581B8B094A0138D12F87995781E9A7BB868B71A79B2FF37703D7CF96A10AE57E8DE5DA6532FF0878513C1BA7A8FBDB435BE73C36C79D5E6FB13273B8F029FFDAEDB57D6FA69162491CD061368496E51B4C4B42EDDD82A8DB7934933A8E1CD3A47DD7DD36692CAE6AD2465035A6525E42C36BD1A72799F966F678B03CF0393979A16D34893C1693CD64880008310084B233AE86A440406F77FDE13CF7CE47A036C8A1DB84050B270231F17A37C1B800922D25BE61B14C7B02738BFA3F8AE4174F87300D167D84E2230D519457EF8E4DC6EEE0282AF127FCE56C0E6780D3635B75F837364D3203A23ACD7DA78EF02FB7390D033E29C228A3F503B07643F6F5DBF3BC020E29CD8368EE3733066EC4C0388B973C00B428F0E7BC3B15D6ADB41C9D443AEAF8E4A84FDF4534E5A46266A0A293AD190A922942651DF054B9774133527D58B9A51B48ACAC9FA8ACAC0BA49CA29F582A604AD72665483C57CE90C0D1FF4A5B0BB1FF5ADE7BC757B41458D33D821F16F98E008B631E706518A2352CE40977D631BC1423A7D8CE993FBA694D347E42543B35A6935A49BC0F0AB2185DDFDD5908A099FEF5D8745251D8E423931C077A2579FB2DAD79C20D9A697436D989B66BE993D40B75C4EE238B0DD74152892603C8551971F6238A33D9F918D46CC89C0C0C0D05DE6F2E00B8CCD148DEA9A9C620F536C9CD85992708A621B39B21A61404E0FC1728FAA10ACCC8DD485FB49E209960E0750C292A51069C7B0525D42E565E112DB0D91D7AA25A1674717C6C65EF0105B4E71880963D8AA892ECCD5A9102640C1479894360D8DAD8AC5351BA2266AD5CD795B085BCEBB94A1D8884DB6C4CE1ABBE4F1DB931866B3C636609CCD2AE9228036ADB70D03E56795AE06201E5C76CD40851393C6407948B51103AD6B6C0B065A57C9B333D0EC88DA75FE85F3EAAE9967FDA0BC79B7DEA8AE2DD8664D1F3B669A59EC097D28F4C0916C9EA773D6881FA8E2700672F2F359CC435DD14418F80CD37ACAA68C779571A8D50C221A51136069682DA0FC4250029216540FE1F25C5EA3743C8AE8019BE7DD1A61F9DE2FC0566C40C6AE5E8C5608F5D7A7A271763A7D14232BAC4132F24E87850A8EC220C4CDAB3EF00E4AD1E56565C5748985FB44C39581F1C96850504BE4AA51523E98C1B5949B66BB965401599F906C2D2D09E193464BF96006D712B7D176252982821E61C15A2AAABBF081165B9EE928BC4DD136B6B2A229FE616C69AAABC697280C5DB2AC545BF12FC62C2BB59ABE98F52F3FF2330CCB8E15554885B405271A4468898556600D929EBB514C4F114573C4F23C53C797C894BE55B3FDE72CABEE539EC4DC0FE4D4ECEFFC1A577D8D5F73B87244C281CE61983E0B6BD25CBAC208D4DD0D5602873C1429D2F7D3C04B7CA28FB2F4BDB34BBC6AFFEC8B8C30B604F9A5284A529914EBD6F5DF6976E49531E44C1591CCEAB3A587D0E93C8F43AB5AD7C5A67A943C555545D1A5AFB6367BBA90A6FF8C892163FF096B45789A15C6EB54AA00FC534F8C4AA983045669EB8E5AAF46A962D65BBA230A25275548A1A98794D5C2929A90D58695F0341A555374E720979254D1E5D6EEC88AA2922AB4A279056C85CC625B775445DD491558D1DC1DBB2C421177D21DF661DA83CC7A4E2C3BF0AEE7C534184FB32D0EE3042BF7FA55A0CAE79E58FCE65E02E3DF77D2A4B4A7BEF54C2A4B76AC67521A0CFD1E54BB16AF6F418D77F97ACCDA5D776D9B6FBAEBD7E3F533DC27350FE9E4279214DC8B13A070D21BF35357FB631BE91896919846AE4670F18F31C5FE88118C665FBCA9E762B6A1E7049788B80B1CD3ACBEC33CDC3F38149EEAECCEB3192B8E1D4F716AD5BD9DA9CFD9064AB5C83D8AEC3B14C985136B3C2D2941A59CF40571F0C3C4FC2BED759CA637D85FE9E73DE322FE40DC2F0934DC460936BEC985A0C394DA7778DC5108FAED59BC9AE8AEF28B3F3F655DF78CEB0896D3B1B12F287A95E9AFBFA5E8254DD6750D69567E61F17C575BEDD1821255582DABBF5198BB7490F709B9943FF8E8E1C7BEA229DF20AC85A878673014DE202AD4BD2358054BFB86C0819F347D43D06FB0EA3705AB88A67D4FE092FE60E26B82EEDB50DE738B7E48716ADAC49694EAB9B51A7BADD2CC6DFB26A9687BAD852E1766F7801BB4F87ABD10E59915350FE63A1535CB83616FD3EE9FBC5079576A93CBA07DBB25C99BAC426EB85FFA5F151FEF40B99CA2FC67FB25C69BB6355D1A78C7EB34FB1512EF98B17137BFFD72E14D1B9B2E41BCE3C6D6AB2878C76C6D5BFE73CB96D6D9856EBDC457AE56D25CE7A8B2C86D25BC59CA1D8EFFF3008C208B28B39797EA9AB1A67AD7168625899EA9BE584D642C2D1C89AF44D1CCB6DF58B9C36F1C2CA76966AB29F16CE2CDF7FF46DE9CA699B7A670721BC5C7CAD245554178CB3ED6544DF59C8A8D6B2369A96D6F8B591BEFE69F536DF1204AA9AD1ECDEDF2F329251E4425432E9D1EA5C3F24531F8CECABFDD08FE3B76972504FB971C09B66B5EB3A0B9208B2077DE8244398990A1B9C41439E0524F22EA2E904DA19925A0D3A7E369528F5D83CCB17341AE131A2614868CFDB9574B78B120A0897F5A1F5D97797C1DB25FF1104300315D96B8BF266F13D7730AB9CF1539210D048B2E78BA97CD256569DFE563817415908E405C7D4550748BFDD003B0F89ACCD03D5E453630BF777889ECC73203A803699F88BADAC7A72E5A46C88F3946D91F7E820D3BFEC39BFF001C38D52EC2540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9b9b2144-ac38-4697-a837-27ee5de8f381', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'278419a3-9644-48aa-a0d1-1a7a50444e9e', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'6ed8e729-faa6-4462-8136-455cb7df4fe2', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a9433f40-4916-45f8-bbe9-1b7a34e5c751', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'038f6b32-53df-451f-85fc-f68f740a2091', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08f66c7d-e177-4034-94f9-3cdf777413d9', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1dd0f909-ab0c-4792-92cf-c3d765155812', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'28a0d5eb-1b39-4562-81f0-d4669525d60f', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a7db25c-546d-4111-95f7-4c1ef2b024a9', N'9b9b2144-ac38-4697-a837-27ee5de8f381')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f44c2ac-67b1-473f-8b55-d3724009f76c', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'56dda435-590e-4a25-91be-7afa97ce2a26', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80f3ac55-f0e0-4e72-8227-4e685eaa5665', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'be295300-6bac-4c03-8776-a000aafeee66', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c7a08000-62e9-4352-96ea-e1caed8783b2', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee507f04-03b7-46df-88b8-a4818bff56a8', N'278419a3-9644-48aa-a0d1-1a7a50444e9e')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'038f6b32-53df-451f-85fc-f68f740a2091', N'Susan@susan.com', 0, N'AIhPTC6s+v/qP/f2Ek247UqHHHa6OGWa/G0sVQEDaGBXBMdBhzV3KVB0iclmE2+xEg==', N'84a5e024-7e84-4d48-8ee4-0c7e93850d77', NULL, 0, 0, NULL, 1, 0, N'Susan')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'06e2c8c6-2688-4274-a0b1-71f534d0f4f2', N'Hello@gmail.com', 0, N'ADh2W6+mnzST82rbrkN7vjUJpvLlKY/T9r57TDAUUIMN9qfOx2b0dcawIx54a47CjQ==', N'b1e14a4a-dabf-4405-bbd1-75fd6e3f4358', NULL, 0, 0, NULL, 1, 0, N'Hello@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08f66c7d-e177-4034-94f9-3cdf777413d9', N'Julian@julian.com', 0, N'AGZep6qU6spimG39XZgRIL5U+MpIM26OtHWNuBJy1v6wIPVwYNaP5UINuKcg4HSG2g==', N'0ed5b99c-6d9c-42f6-a29c-ea5f78db8ac1', NULL, 0, 0, NULL, 1, 0, N'Julian')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1dd0f909-ab0c-4792-92cf-c3d765155812', N'Pete@pete.com', 0, N'AE/i9o1JD3EGXzPQfKrrPB2gOfcHKoWwQfVPe5QhQkk3n+0Yz/roQnOnFz3wQ3Qz5w==', N'127b81af-72da-4bbc-bdb7-ae3137140f08', NULL, 0, 0, NULL, 1, 0, N'Pete')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'28a0d5eb-1b39-4562-81f0-d4669525d60f', N'Divya@divya.com', 0, N'AJvFa8JKL15UsaYhj9a5AFupq3k2K7UHTxqeHuJsxdBCPztHHGUBQF4kki1Ahxi1YQ==', N'62d3da58-99f7-4b06-87dd-777be7befb58', NULL, 0, 0, NULL, 1, 0, N'Divya')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3a7db25c-546d-4111-95f7-4c1ef2b024a9', N'admin@gmail.com', 0, N'AH1q5CrdEbDe10KzOQibO3oPyZLy7WPj+YpzC6RJyyetOB/BdqkKnvv4qpAxL/KqRA==', N'fd55eeae-dc9f-46f2-b377-02d72158f584', NULL, 0, 0, NULL, 0, 0, N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3f44c2ac-67b1-473f-8b55-d3724009f76c', N'Jovon@jovon.com', 0, N'AGP1tNpAiUCd/BWunx8spr9IXbYEDGNUvvmsjW0T/DWuOMeK3bSmQbZ53KOVOdoHqw==', N'66d29490-5ccc-4914-b8bf-d96975534448', NULL, 0, 0, NULL, 1, 0, N'Jovon')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'56dda435-590e-4a25-91be-7afa97ce2a26', N'hello@hi.com', 0, N'AHLX+WzdRERtDU5wTq9VNvvXxqkV9bheuDcPaVxX6lz381iew4tOorpRIFSFQAB6eQ==', N'4ff91a49-79a6-4446-a384-6be9674a864b', NULL, 0, 0, NULL, 1, 0, N'Hello')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'61770acc-f8d1-4957-be4d-611350cde148', N'julian@gmail.com', 0, N'AIz4aaWCRmLeCIDM7eXM2fI9oJkNnNM4Xz0eBMT43ODInY1eTiSwVWkNfF47YmY6DQ==', N'd65704fe-1a5d-41de-bd5b-d2ada9539088', NULL, 0, 0, NULL, 1, 0, N'julian@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'80f3ac55-f0e0-4e72-8227-4e685eaa5665', N'Julie@julie.com', 0, N'ABtxtCQzZJ1GmqvD/CSR4kGGaWZx4/iHK14RtAZZCpkXP6TtVWKf0VEY80f/ppycWw==', N'75bfbe67-2bd4-4740-9538-967c04f15079', NULL, 0, 0, NULL, 1, 0, N'Julie')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9b2baecb-6bda-4d47-ad35-194abf83f362', N'Julie@gmail.com', 0, N'AK0osN/BgzxJ0yLRAH9lWXVw+/l4guVjC/Ui3BhkT0ZRIxdzdpfCJM5WXukh1Jk5Ug==', N'03f0dd0b-4209-4e62-ad73-48cce892b21e', NULL, 0, 0, NULL, 1, 0, N'Julie@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'be295300-6bac-4c03-8776-a000aafeee66', N'austin@gmail.com', 0, N'AEjk9rYaPER234n/vK3ojUPzsd69bWCvnWi9BtzzYFKMtsSfeBb8Lfoh4wb8W8g9aQ==', N'990f090b-de77-479e-ba52-ec2bd4d7aff9', NULL, 0, 0, NULL, 1, 0, N'Austin')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c7a08000-62e9-4352-96ea-e1caed8783b2', N'Sam@sam.com', 0, N'AFHKkMjQrKXOlxLM1zpvYgt5XZg+PzUP6fhrtkIBY2AEed+8qRBKu/tDFRSaws9ZnQ==', N'cdee66bb-ed87-4b51-8cf7-0dbc1edc769a', NULL, 0, 0, NULL, 1, 0, N'Sam')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ee507f04-03b7-46df-88b8-a4818bff56a8', N'Daniel@gmail.com', 0, N'AID141TbJFC4LtaEgn1tbashLiLlDGy+eTpyMnj46U8AGO7qHHGFPsBUdOlSkIrVZw==', N'54a0a72c-c0e2-45fb-bfc2-8beacc31a683', NULL, 0, 0, NULL, 1, 0, N'Daniel')
SET IDENTITY_INSERT [dbo].[Park] ON 

INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (1, N'Egbert Picnic Area', N'Buckeye Trail, Bedford, OH 44146', N'41.384371', N'-81.539926', CAST(N'06:00:00' AS Time), CAST(N'11:00:00' AS Time), N'This park has got everything you''re looking for, from fitness trails, to spacious picnic shelters, to clean restrooms.  Consider hosting your next family reunion here!', N'/Content/images/park8.jpg', NULL, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, N'https://www.google.com/maps/dir//Egbert+Picnic+Area,+Buckeye+Trail,+Bedford,+OH+44146/@41.3843232,-81.5391534,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x8830e21658e0e4f1:0x1d8f137682616e49!2m2!1d-81.5391534!2d41.3843232!3e0')
INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (2, N'Hemlock Creek', N'14800 Button Rd, Walton Hills, OH 44146', N'41.375517', N'-81.574519', CAST(N'06:00:00' AS Time), CAST(N'11:00:00' AS Time), N'This park is located at the confluence of Hemlock Creek and Tinker Creek.  There are excellent hiking trails, picnic shelters, and swimming holes.', N'/Content/images/park2.jpeg', NULL, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, N'https://www.google.com/maps/dir/''''/hemlock+creek+park/@41.3755927,-81.6447301,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8830e3df134f0d43:0xff3fb655f2bba9ce!2m2!1d-81.5746902!2d41.3756139')
INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (3, N'Bedford Viaduct', N' Willis St, Bedford, OH 44146', N'41.385937', N'-81.534208', CAST(N'06:00:00' AS Time), CAST(N'09:00:00' AS Time), N'This small park boasts a paved walking trail, and interpretive signs detailing the history of Bedford.  Here you can take a lovely walk along Tinker''s Creek.', N'/Content/images/park3.jpeg', NULL, NULL, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, N'https://www.google.com/maps/dir//Viaduct+Park,+Willis+St,+Bedford,+OH+44146/@41.3841987,-81.5323626,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x8830e21154d8447f:0x4f1941dd96d9e8d7!2m2!1d-81.5323626!2d41.3841987!3e0')
INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (4, N'Canal Tow Path Trailhead', N'Ohio & Erie Canal Towpath Trailhead Valley View, OH 44125', N'41.372349', N'-81.613493', CAST(N'07:00:00' AS Time), CAST(N'11:00:00' AS Time), N'The tow path is a wonderful place to walk, run, or ride bikes.  It stretches for miles across the greater Cleveland area, and continues through Cuyahoga Valley National Park.', N'/Content/images/photo7.jpeg', NULL, NULL, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, N'https://www.google.com/maps/dir//Ohio+%26+Erie+Canal+Towpath+Trailhead,+Valley+View,+OH+44125/@41.4039376,-81.6586848,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x8830e6a88dac3243:0xe00e464dda03d34!2m2!1d-81.613313!2d41.3722603!3e0')
INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (5, N'Bedford MTB Trails', N'Overlook Ln, Walton Hills, OH 44146', N'41.372405', N'-81.565696', CAST(N'06:00:00' AS Time), CAST(N'11:00:00' AS Time), N'Bedford is a great place to practice mountain biking.  Miles of trails through the forest and along creeks provide riders with excellent beginner terrain.', N'/Content/images/park6.jpeg', NULL, NULL, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, N'https://www.google.com/maps/dir//41.372405,-81.565696/@41.372409,-81.5678847,17z/data=!4m2!4m1!3e0')
INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (6, N'Sehome Arboretum', N'600 25th St, Bellingham, WA 98225', N'48.734609 ', N'-122.481078', CAST(N'06:00:00' AS Time), CAST(N'07:00:00' AS Time), N'A spacious park near Western Washington University.  Plenty of paved walking trails and great views of the ocean and mountains.', N'/Content/images/park4.jpeg', NULL, NULL, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, N'https://www.google.com/maps/place/Sehome+Hill+Arboretum/@48.7354156,-122.4798767,15z/data=!4m2!3m1!1s0x0:0x2d9f1a3f306a64ff?sa=X&ved=0ahUKEwi6jujWvL_aAhXrTN8KHTsPDEkQ_BIIvwEwEA')
INSERT [dbo].[Park] ([ParkID], [ParkName], [Address], [Latitude], [Longitude], [OpenTime], [CloseTime], [Descripton], [Photo], [AvgRating], [NumberRatings], [Restrooms], [PicnicArea], [Grill], [Playground], [HikingTrail], [PavedTrail], [BasketballCourt], [BaseballDiamond], [CampGround], [Fishing], [Swimming], [FitnessTrail], [ADAAccessible], [GoogleMap]) VALUES (7, N'Whatcom Falls', N' 1401 Electric Ave, Bellingham, WA 98229', N'48.750611', N'-122.427608', CAST(N'06:00:00' AS Time), CAST(N'10:00:00' AS Time), N'A gem in the Whatcom Falls neighborhood.  Features playgrounds, paved trails, hiking trails, and fishing.', N'/Content/images/park5.jpeg', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, N'https://www.google.com/maps/dir//Whatcom+Falls+Park,+1401+Electric+Ave,+Bellingham,+WA+98229/@48.7504475,-122.4269052,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x5485a4093f17f287:0xd999dd110f2cf2a0!2m2!1d-122.4269052!2d48.7504475!3e0')
SET IDENTITY_INSERT [dbo].[Park] OFF
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (5, 1, N'~/Images/user1180112861.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (6, 2, N'~/Images/user2180143602.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (7, 4, N'~/Images/user5180227245.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (8, 5, N'~/Images/user7180254687.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (9, 3, N'~/Images/user6180310160.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (10, 6, N'~/Images/user4180408773.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (11, 7, N'~/Images/user8180518287.jpeg', N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Photo] ([PhotoID], [ParkID], [Image], [UserID]) VALUES (1002, 3, N'~/Images/beautiful-daylight-environment-709552185749767.jpg', N'be295300-6bac-4c03-8776-a000aafeee66')
SET IDENTITY_INSERT [dbo].[Photo] OFF
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (1, 2, N'So pretty.', N'Nice place to take kids to play or swim in the creek.  There are also a lot of hiking trails along Tinker''s Creek and a big picnic shelter.', CAST(N'1999-04-05 00:00:00.000' AS DateTime), 4, 1, N'be295300-6bac-4c03-8776-a000aafeee66')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (2, 1, N'Running trail.', N'Nice trees.  It can get crowded here in the summer, and I don''t like the mountain bike trails, the riders are too fast.', CAST(N'1999-04-05 00:00:00.000' AS DateTime), 3, NULL, N'80f3ac55-f0e0-4e72-8227-4e685eaa5665')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (3, 1, N'Nice fitness trail', N'A great, quite place to go for a run and work out on the fitness trail.  The restrooms here are always clean and there is a giant picnic shelter if you want to host a larger gathering', CAST(N'2018-02-09 00:00:00.000' AS DateTime), 5, 1, N'28a0d5eb-1b39-4562-81f0-d4669525d60f')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (4, 6, N'Nice views.', N'This was a nice place to take a walk in the rain, a lot of paved trails and nearby the university if you just want to take a walk between classes.  ', CAST(N'2017-11-22 00:00:00.000' AS DateTime), 4, 1, N'28a0d5eb-1b39-4562-81f0-d4669525d60f')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (5, 3, N'Nice place', N'Cool history here, with a lot of signs detailing the story of the old mill that existed here and the building of the arch for the train bridge.', CAST(N'2018-04-10 11:42:20.000' AS DateTime), 5, NULL, N'3f44c2ac-67b1-473f-8b55-d3724009f76c')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (6, 4, N'Great place to ride my bike.', N'The trail was well maintained, we were able to ride through part of Cuyahoga Valley National Park and it was delightful.  I would definitely recommend going back!', CAST(N'2018-04-10 11:47:34.000' AS DateTime), 5, NULL, N'038f6b32-53df-451f-85fc-f68f740a2091')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (7, 6, N'Need more facilities', N'There were no restrooms anywhere to be found.   A lot of paths, but need more facilities.  Maybe some picnic tables.', CAST(N'2018-04-10 11:54:00.000' AS DateTime), 2, NULL, N'038f6b32-53df-451f-85fc-f68f740a2091')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (8, 7, N'Beautiful Spot', N'This is a cool neighborhood spot to go running or fishing.  The trail network will connect you to any place in town.  Can be busy on weekends.', CAST(N'2018-04-10 12:11:44.967' AS DateTime), 4, NULL, N'08f66c7d-e177-4034-94f9-3cdf777413d9')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (9, 7, N'Beautiful Spot', N'This is a cool neighborhood spot to go running or fishing.  The trail network will connect you to any place in town. ', CAST(N'2018-04-10 12:12:01.397' AS DateTime), 4, NULL, N'08f66c7d-e177-4034-94f9-3cdf777413d9')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (10, 7, N'Beautiful Spot', N'This is a cool neighborhood spot to go running or fishing.  The trail network will connect you to any place in town. ', CAST(N'2018-04-10 12:13:04.080' AS DateTime), 4, NULL, N'08f66c7d-e177-4034-94f9-3cdf777413d9')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (11, 7, N'Beautiful Spot', N'This is a cool neighborhood spot to go running or fishing.  The trail network will connect you to any place in town. ', CAST(N'2018-04-10 12:14:18.140' AS DateTime), 4, NULL, N'08f66c7d-e177-4034-94f9-3cdf777413d9')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (12, 5, N'Good beginner trails', N'I took my brother here for his first mountain bike ride.  These trails are fairly smooth and flat and great for beginners.  You could spend an entire day riding all around the Bedford Metroparks along Tinkers Creek.  ', CAST(N'2018-04-10 12:15:22.300' AS DateTime), 4, NULL, N'08f66c7d-e177-4034-94f9-3cdf777413d9')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (1003, 7, N'Pretty falls', N'There are a lot of trails here for walking and running, and some good fishing in the lake.  ', CAST(N'2018-04-13 14:33:38.570' AS DateTime), 5, NULL, N'be295300-6bac-4c03-8776-a000aafeee66')
INSERT [dbo].[Review] ([ReviewID], [ParkID], [ReviewTitle], [ReviewComments], [ReviewTimeStamp], [Rating], [TotalVotes], [UserID]) VALUES (1004, 5, N'Fun trails!', N'These trails are easy but still fun and can be a good work out.  Just be careful because sometimes the trails connect with the bridal trails in the area.', CAST(N'2018-04-16 10:41:53.970' AS DateTime), 4, NULL, N'c7a08000-62e9-4352-96ea-e1caed8783b2')
SET IDENTITY_INSERT [dbo].[Review] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/16/2018 3:00:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_AspNetUsers]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Park] FOREIGN KEY([ParkID])
REFERENCES [dbo].[Park] ([ParkID])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Park]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_AspNetUsers]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Park] FOREIGN KEY([ParkID])
REFERENCES [dbo].[Park] ([ParkID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Park]
GO
USE [master]
GO
ALTER DATABASE [ParkSomewhereApp] SET  READ_WRITE 
GO
