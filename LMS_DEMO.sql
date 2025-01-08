USE [LibrarySystem]
GO
/****** Object:  Table [dbo].[AdminMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMst](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[UserName] [nvarchar](256) NULL,
	[Password] [nvarchar](256) NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookMst](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](256) NULL,
	[Author] [nvarchar](256) NULL,
	[Detail] [nvarchar](256) NULL,
	[Price] [float] NULL,
	[Publication] [nvarchar](256) NULL,
	[Branch] [nvarchar](256) NULL,
	[Quantities] [int] NULL,
	[AvailableQnt] [int] NULL,
	[RentQnt] [int] NULL,
	[Image] [nvarchar](1000) NULL,
	[pdf] [nchar](10) NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK__BookMst__3DE0C227CF57611B] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BranchMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BranchMst](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PenaltyMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PenaltyMst](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[SID] [int] NULL,
	[BookName] [nvarchar](256) NULL,
	[Price] [numeric](18, 0) NULL,
	[Panalty] [numeric](18, 0) NULL,
	[Detail] [nvarchar](500) NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicationMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicationMst](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[Publication] [nvarchar](256) NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentMst](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[BookName] [nvarchar](256) NULL,
	[SID] [int] NULL,
	[Days] [int] NULL,
	[IssueDate] [datetime] NULL,
	[ReturnDate] [datetime] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentMst]    Script Date: 07-Jan-25 11:05:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentMst](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](256) NULL,
	[BranchName] [nvarchar](256) NULL,
	[Mobile] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[City] [nvarchar](256) NULL,
	[Pincode] [nvarchar](256) NULL,
	[DOB] [datetime] NULL,
	[Gender] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[Password] [nvarchar](256) NULL,
	[Image] [nvarchar](500) NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminMst] ON 
GO
INSERT [dbo].[AdminMst] ([aid], [Name], [UserName], [Password], [EntryDate]) VALUES (1, N'Admin', N'Admin', N'Admin', NULL)
GO
SET IDENTITY_INSERT [dbo].[AdminMst] OFF
GO
SET IDENTITY_INSERT [dbo].[BookMst] ON 
GO
INSERT [dbo].[BookMst] ([BookID], [BookName], [Author], [Detail], [Price], [Publication], [Branch], [Quantities], [AvailableQnt], [RentQnt], [Image], [pdf], [EntryDate]) VALUES (7, N'Test_Book_Name', N'Test_Author', N'txt_detail', 786, N'1', N'1', 1, 1, 0, N'Screenshot 2024-04-18 133825.png', N'          ', CAST(N'2025-01-07T10:22:19.077' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[BookMst] OFF
GO
SET IDENTITY_INSERT [dbo].[BranchMst] ON 
GO
INSERT [dbo].[BranchMst] ([BranchID], [BranchName]) VALUES (1, N'Test_Branch')
GO
SET IDENTITY_INSERT [dbo].[BranchMst] OFF
GO
SET IDENTITY_INSERT [dbo].[PublicationMst] ON 
GO
INSERT [dbo].[PublicationMst] ([PID], [Publication], [EntryDate]) VALUES (1, N'Test Publication', CAST(N'2025-01-03T17:02:07.287' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PublicationMst] OFF
GO
SET IDENTITY_INSERT [dbo].[RentMst] ON 
GO
INSERT [dbo].[RentMst] ([RID], [BookName], [SID], [Days], [IssueDate], [ReturnDate], [Status]) VALUES (1, N'Test_Book_Name', 1, 10, CAST(N'2025-01-07T11:00:06.580' AS DateTime), CAST(N'2025-01-07T11:00:43.153' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[RentMst] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentMst] ON 
GO
INSERT [dbo].[StudentMst] ([SID], [StudentName], [BranchName], [Mobile], [Address], [City], [Pincode], [DOB], [Gender], [Email], [Password], [Image], [EntryDate]) VALUES (1, N'Test_Student', N'Test_Branch', N'9123456789', N'Test_Address', N'Test_City', N'123456', CAST(N'1990-04-01T00:00:00.000' AS DateTime), N'Male', N'test@test.com', N'1234', N'~/img/PHOTO.jpg', CAST(N'2025-01-03T17:30:00.277' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[StudentMst] OFF
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_changepassword]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ADMIN_changepassword]
	
	@aid as int,
	@PASS AS NVARCHAR(256)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	update AdminMst set password=@pass where aid=@aid
	
	END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_DELETE]
	
	@AID AS INT
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	DELETE FROM AdminMst WHERE AID=@AID
	
	END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_INSERT]
	
	@NAME AS NVARCHAR(256),
	@UNAME AS NVARCHAR(256),
	@PASS AS NVARCHAR(256)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	INSERT INTO AdminMst VALUES (@NAME,@UNAME,@PASS,GETDATE())
	
	END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ADMIN_SELECT]
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	SELECT * FROM AdminMst
	
	END
GO
/****** Object:  StoredProcedure [dbo].[ADMIN_SELECT_FOR_LOGIN]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ADMIN_SELECT_FOR_LOGIN]
	@uname as nvarchar(256),
	@pass as nvarchar(256)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	SELECT * FROM AdminMst where UserName=@uname and Password=@pass
	
	END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOOK_DELETE]
	@BOOKID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
		DELETE FROM BookMst WHERE BOOKID=@BOOKID

   
	 
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOOK_INSERT]
  	@BNAME AS NVARCHAR(256),
	@AUTHOR AS NVARCHAR(256),
	@DETAIL AS NVARCHAR(256),
	@PRICE AS FLOAT ,
	@PUBLICATION AS NVARCHAR(256),
	@BRANCH AS NVARCHAR(256), 
	@QUANTITIES AS INT ,
    @AVAILABLEQNT AS INT ,
    @RENTQNT AS INT,
    @img as nvarchar(1000) 
    
AS
BEGIN
 

	SET NOCOUNT ON;
	INSERT INTO BookMst VALUES (
	@BNAME,
	@AUTHOR ,
	@DETAIL ,
	@PRICE,
	@PUBLICATION , 
	@BRANCH ,
	@QUANTITIES 
	, @AVAILABLEQNT,
	@RENTQNT,
	@img 
	,''
	,GETDATE() )
	--INSERT INTO BookMst VALUES ('jghj','ghjghjg' ,'ghjghj' , '22', 'fghfghfg' , 'ghfghfgh' , '5525252' 
--	, '3242','22','ghnghjhjg','',GETDATE() )

    
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_ISSUE_TO_STUDENT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOOK_ISSUE_TO_STUDENT]
	@BID  AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE BookMst SET AvailableQnt=AvailableQnt-1, RentQnt=RentQnt+1 WHERE BookID=@BID
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOOK_SELECT]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BookMst
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_SELECT_By_BID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[BOOK_SELECT_By_BID]
	
	@bid as int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BookMst where BookID=@bid
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_SELECT_By_BNAME]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[BOOK_SELECT_By_BNAME]
	
@BNAME AS NVARCHAR(200)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BookMst where BookName=@BNAME
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_SELECT_By_BRANCH]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOOK_SELECT_By_BRANCH]
	
@BRANCH AS NVARCHAR(200)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BookMst where Branch=@BRANCH
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_SELECT_By_PUBLICATION]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOOK_SELECT_By_PUBLICATION]
	
@PUB AS NVARCHAR(200)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BookMst where Publication=@PUB
END
GO
/****** Object:  StoredProcedure [dbo].[BOOK_UPDATE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[BOOK_UPDATE]
@bid as int,
  	@BNAME AS NVARCHAR(256),
	@AUTHOR AS NVARCHAR(256),
	@DETAIL AS NVARCHAR(256),
	@PRICE AS FLOAT ,
	@PUBLICATION AS NVARCHAR(256),
	@BRANCH AS NVARCHAR(256), 	
    @img as nvarchar(1000)
AS
BEGIN


 update BookMst set BookName=@BNAME,Author=@AUTHOR,Detail=@DETAIL, Price=@PRICE, Publication =@PUBLICATION , Branch=@BRANCH, Image=@img where BookID=@bid

    
END
GO
/****** Object:  StoredProcedure [dbo].[BRANCH_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BRANCH_DELETE]
	@BRANCHID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
		DELETE FROM BranchMst WHERE BRANCHID=@BRANCHID

   
	 
END
GO
/****** Object:  StoredProcedure [dbo].[BRANCH_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BRANCH_INSERT]
	
	@BRANCHNAME AS NVARCHAR(256)
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	INSERT INTO BranchMst VALUES (@BRANCHNAME)
	
	END
GO
/****** Object:  StoredProcedure [dbo].[BRANCH_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BRANCH_SELECT]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BranchMst
END
GO
/****** Object:  StoredProcedure [dbo].[BRANCH_SELECT_BY_BID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BRANCH_SELECT_BY_BID]
@BID AS INT	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BranchMst WHERE BranchID=@BID
END
GO
/****** Object:  StoredProcedure [dbo].[BRANCH_SELECT_BY_BNAME]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BRANCH_SELECT_BY_BNAME]
@BNAME AS NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM BranchMst WHERE BranchName=@BNAME
END
GO
/****** Object:  StoredProcedure [dbo].[BRANCH_UPDATE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BRANCH_UPDATE]
	@BID AS INT,
	@BRANCHNAME AS NVARCHAR(256)
	
	
AS
BEGIN
UPDATE BranchMst SET BranchName= @BRANCHNAME WHERE BranchID=@BID
	
	END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PENALTY_DELETE]
	@PID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
		DELETE FROM PenaltyMst WHERE PID=@PID

   
	 
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PENALTY_INSERT]
	
	
	@SID AS INT,
	@bname as nvarchar(256),
	@price as float,
	@panalty as float,
	@detail as nvarchar(500)
 
AS
BEGIN
	
	SET NOCOUNT ON;

  
	INSERT INTO PenaltyMst VALUES (@SID,@bname,@price,@panalty,@detail,GETDATE())
	
	END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_PAY_NOW]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PENALTY_PAY_NOW]
@panalty as float,
@detail as nvarchar(500),
@pid as int
AS
BEGIN
	
	SET NOCOUNT ON;

update PenaltyMst set Panalty=@panalty,Detail=@detail, EntryDate=GETDATE() where  PID=@pid
	--SELECT * FROM PenaltyMst WHERE SID=@SID and Panalty=0
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PENALTY_SELECT]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PenaltyMst
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT_BY_BNAME]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PENALTY_SELECT_BY_BNAME]
@BNAME AS NVARCHAR(256)	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PenaltyMst WHERE BookName=@BNAME
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT_BY_PID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PENALTY_SELECT_BY_PID]
@PID AS INT	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PenaltyMst WHERE PID=@PID
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT_BY_SID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PENALTY_SELECT_BY_SID]
@SID AS INT	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PenaltyMst WHERE SID=@SID  
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT_BY_SID_and_Panalty_0]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PENALTY_SELECT_BY_SID_and_Panalty_0]
@SID AS INT	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PenaltyMst WHERE SID=@SID and Panalty=0
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT_BY_SID_book]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PENALTY_SELECT_BY_SID_book]
@SID AS INT,
@book as nvarchar(500)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PenaltyMst WHERE SID=@SID and BookName=@book
END
GO
/****** Object:  StoredProcedure [dbo].[PENALTY_SELECT_FOR_PAY]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PENALTY_SELECT_FOR_PAY]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	select * from StudentMst where SID in( SELECT SID FROM PenaltyMst where Panalty=0)
END
GO
/****** Object:  StoredProcedure [dbo].[PUBLICATION_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PUBLICATION_DELETE]
@PID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

DELETE FROM PublicationMst WHERE PID=@PID
	
END
GO
/****** Object:  StoredProcedure [dbo].[PUBLICATION_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PUBLICATION_INSERT]
	@PNAME AS NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO PublicationMst VALUES(@PNAME,GETDATE())
	
END
GO
/****** Object:  StoredProcedure [dbo].[PUBLICATION_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PUBLICATION_SELECT]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PublicationMst
END
GO
/****** Object:  StoredProcedure [dbo].[PUBLICATION_SELECT_BY_PID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PUBLICATION_SELECT_BY_PID]
	@PID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PublicationMst WHERE PID=@PID
END
GO
/****** Object:  StoredProcedure [dbo].[PUBLICATION_SELECT_BY_PNAME]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PUBLICATION_SELECT_BY_PNAME]
	@PNAME AS NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM PublicationMst WHERE Publication=@PNAME
END
GO
/****** Object:  StoredProcedure [dbo].[PUBLICATION_UPDATE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PUBLICATION_UPDATE]
@PID AS INT,
	@PNAME AS NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE PublicationMst SET PUBLICATION= @PNAME WHERE PID=@PID
	
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RENT_DELETE]
	@RID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
		DELETE FROM RentMst WHERE RID=@RID

   
	 
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RENT_INSERT]
	
	@BNAME AS NVARCHAR(256),
	@SID AS INT,
	@DAYS AS INT
	
AS
BEGIN
	
	SET NOCOUNT ON;

  
	INSERT INTO RentMst VALUES (@BNAME,@SID,@DAYS,GETDATE(),NULL,0)
	
	END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RENT_SELECT]
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_BOOK_RENT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_BOOK_RENT]
	@sid  as  int,
	@STATUS AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM RentMst   where SID=@sid and  Status=@STATUS  
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_BOOKNAME]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_BOOKNAME]
	@BNAME AS NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where BookName=@BNAME
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_BY_STATUS]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_BY_STATUS]
	@STATUS AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where Status=@STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_BY_STATUS_AND_SID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_BY_STATUS_AND_SID]
	@SID AS INT,
	@STATUS AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where SID=@SID AND  Status=@STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_RETURN]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RENT_SELECT_RETURN]
	@RID AS INT,
	@STATUS AS INT,
	@bid as  int
AS
BEGIN
	
	SET NOCOUNT ON;

	 UPDATE RentMst SET Status=@STATUS, ReturnDate=GETDATE() WHERE RID=@RID
	 update BookMst set AvailableQnt=AvailableQnt+1,RentQnt=RentQnt-1 where BookID=@bid
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_RID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_RID]
	@rid as int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where RID=@rid
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_SID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_SID]
	@SID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where SID=@SID
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_SID_and_BNAME]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_SID_and_BNAME]
	@BNAME AS NVARCHAR(256),
	@sid as int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where BookName=@BNAME and SID=@sid
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_SID_and_BNAME_and_STATUS]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_SID_and_BNAME_and_STATUS]
	@BNAME AS NVARCHAR(256),
	@sid as int,
	@status as int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where BookName=@BNAME and SID=@sid and Status=@status
END
GO
/****** Object:  StoredProcedure [dbo].[RENT_SELECT_SID_STATUS]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RENT_SELECT_SID_STATUS]
	@sid as int,
	@status as int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM RentMst where SID=@sid and Status=@status
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_change_password]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENT_change_password]
	@sid as int,
	@pass as nvarchar(256)
AS
BEGIN
	
	SET NOCOUNT ON;

update StudentMst set password=@pass where SID=@sid
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_DELETE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_DELETE]
	@SID AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
		DELETE FROM StudentMst WHERE SID=@SID

   
	 
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_INSERT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_INSERT]
	@STUDENTNAME AS NVARCHAR(256),
	@BRANCHNAME AS NVARCHAR(256),
	@MOBILE AS NVARCHAR (256),
	@ADD AS NVARCHAR(256),
	@CITY AS NVARCHAR(256),
	@PINCODE AS NVARCHAR(256),
	@DOB AS DATETIME,
	@GENDER AS NVARCHAR(256),
	@EMAIL AS  NVARCHAR (256),
	@pass as nvarchar(256),
	@img as nvarchar(500)
AS
BEGIN
	
	SET NOCOUNT ON;


	INSERT INTO StudentMst VALUES (@STUDENTNAME, @BRANCHNAME ,@MOBILE , @ADD , @CITY , @PINCODE , @DOB, @GENDER , @EMAIL,@pass,@img,GETDATE()) 
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_SELECT]
	
AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT * FROM StudentMst
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_BY_branch]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENT_SELECT_BY_branch]
@branch AS  NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT * FROM StudentMst WHERE BranchName=@branch
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_BY_EMAIL]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_SELECT_BY_EMAIL]
@EMAIL AS  NVARCHAR(256)
AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT * FROM StudentMst WHERE Email=@EMAIL
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_BY_SID]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_SELECT_BY_SID]
@SID AS INT	
AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT * FROM StudentMst WHERE SID=@SID
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_LOGIN]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENT_SELECT_LOGIN]
@EMAIL AS  NVARCHAR(256),
@pass as nvarchar(256)
AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT * FROM StudentMst WHERE Email=@EMAIL and Password=@pass
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_RENT_BOOK]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_SELECT_RENT_BOOK]
	
	@STATUS AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT distinct s.sid as SID,s.StudentName as StudentName FROM RentMst as r, StudentMst as s where Status=@STATUS and s.SID=r.SID
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_SELECT_SEARCH]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[STUDENT_SELECT_SEARCH]
	@name as nvarchar(256)
AS
BEGIN
	
	SET NOCOUNT ON;


	SELECT * FROM StudentMst where StudentName like @name
END
GO
/****** Object:  StoredProcedure [dbo].[STUDENT_UPDATE]    Script Date: 07-Jan-25 11:05:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_UPDATE]
	@SID AS INT,
	@STUDENTNAME AS NVARCHAR(256),
	@BRANCHNAME AS NVARCHAR(256),
	@MOBILE AS NVARCHAR (256),
	@ADD AS NVARCHAR(256),
	@CITY AS NVARCHAR(256),
	@PINCODE AS NVARCHAR(256)

    
AS
BEGIN
	
UPDATE StudentMst SET StudentName=@STUDENTNAME, Email=@BRANCHNAME, Mobile=@MOBILE, Address=@ADD, City=@CITY, Pincode=@PINCODE  WHERE SID=@SID

END
GO
