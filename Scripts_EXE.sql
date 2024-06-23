USE [E_shop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ResetPasswordExpiry] [datetime2](7) NULL,
	[ResetPasswordToken] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuthHistories]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuthHistories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_AuthHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogImages]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[BlogId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_BlogImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Color] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProdId] [int] NULL,
	[ProdVariantId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Color] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[OrderId] [int] NULL,
	[ProdId] [int] NULL,
	[ProdVariantId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[TypePayment] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ProdId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLikes]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLikes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProdId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductLikes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NULL,
	[Tag] [nvarchar](max) NULL,
	[Material] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[IsFeatured] [bit] NOT NULL,
	[Gender] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariants]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [int] NOT NULL,
	[ProdId] [int] NULL,
	[ColorId] [int] NULL,
	[SizeId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ProductVariants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptDetails]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amonut] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ReceiptId] [int] NULL,
	[ProdVariantId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ReceiptDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipts]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[SupplierId] [int] NOT NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Receipts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ProdId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 6/23/2024 10:23:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [nvarchar](max) NULL,
	[DeletedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231112041715_initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231119111509_ResetPassword', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231228021421_TypePayment', N'5.0.17')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'148c41ec-f378-4168-83c5-2665fde87d63', N'AppUser', N'Nguyễn Văn', N'A', N'Admin', N'Thanh Xuân, Hà Nội', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIY1bLDveRbV2CoECs9qR/hG4mRhoTeh8CGr8KB6h4CGwm59NQIXoPC/4j6G0uhXTg==', N'YY47L6MMIGR46U4OOX43RDKG25Y6IPEW', N'5f31de18-f41b-45f1-bfb3-5153463aa792', NULL, 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'49d8c68f-8f48-457a-8457-33366333381b', N'AppUser', N'Trịnh Đức', N'Hiếu', N'User', N'Bách Khoa, Hai Bà Trưng, Hà Nội', N'byn1612@gmail.com', N'BYN1612@GMAIL.COM', N'byn1612@gmail.com', N'BYN1612@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEWmyRhtNlA8dasX0AyxLxU5bEKyMautIDscp4TNjAsXxZ01JObAKK+eNpweMoOYCg==', N'LAH6VIZVNOOXHMZGPSVRDCUKFAB7O6CH', N'67d1b210-2249-40b6-b913-33705f1b9eb4', N'33936951261234556', 0, 0, NULL, 1, 0, CAST(N'2024-04-29T16:54:35.4165013' AS DateTime2), N'ft0O9KjAyogXurZEHGgnC32t7WzP3B+7ZKymBm2F6b4soRhEcEhI0zAyAKwNJJ0eLjiWtwjsMgoS3d6I9N4Q7g==')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'98474c8d-8896-41df-854e-4c03755d8f13', N'AppUser', N'Hoàng Văn', N'C', N'User', N'Cầu Giấy, Hà Nội', N'c@gmail.com', N'C@GMAIL.COM', N'c@gmail.com', N'C@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEL/U948QOfjKx41KZvH7/puAp0jxVAgcJN0SzBxtUArSqksz5CmXUJKdZqzxTY8gxw==', N'DS27AO3Q37EFDJI3U74542PTNQE36CMI', N'1fa381cd-ce55-48bf-bd30-41e9005d034a', N'893457348764', 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'ae88eb56-ae9f-450b-9471-9fd962935d14', N'AppUser', N'Trần Anh', N'Thức', N'User', N'HN', N'jimanhthuc@gmail.com', N'JIMANHTHUC@GMAIL.COM', N'jimanhthuc@gmail.com', N'JIMANHTHUC@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKcJYCtfTfDidZwnNXXBAjuLrzXI1dY4yGn8YPbIoz/AZf/oXV785vV5ALlOWJLRpQ==', N'R36BRV7DKLTUT3HT7IHJWRMW55TFGNCY', N'3f616396-d686-4dfd-9cdf-8c9add1905c6', N'', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b280d88a-8f8b-4015-97e8-4e3460041769', N'AppUser', N'Trần Văn', N'B', N'User', N'Hà Nội, Việt Nam', N'b@gmail.com', N'B@GMAIL.COM', N'b@gmail.com', N'B@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGGUitygXVIatXVHlKB9HET2NYBPOBIh6krm7KPefgsZJNcr5Vd1tEue2iTG6zq0qw==', N'54K44FHPYADUCR3O6PEV5YBAUW57XOKQ', N'456168a5-7e3f-4605-aa12-5abb55172cbe', N'23432476126', 0, 0, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b64cfc22-f8e9-4b87-a151-ecf103eee058', N'AppUser', N'Tran Anh Thuc', N'(K16 DN)', N'User', N'HN', N'thuctade160080@fpt.edu.vn', N'THUCTADE160080@FPT.EDU.VN', N'thuctade160080@fpt.edu.vn', N'THUCTADE160080@FPT.EDU.VN', 0, N'AQAAAAEAACcQAAAAEKNCzJwEwOpyOjDP3j2hdP52kOjFgVHHFrvfiEIvPDDfQZBd/tlRpC1hD9JLVucl/Q==', N'CU3M7KWP7CC7RYQUW362SP3VJKJDOYVA', N'2e05ab6a-f777-44b0-a144-e679a99f405d', N'', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'b9cba919-6077-4b88-8c6b-ac136d54956c', N'AppUser', N'admin2', N'admin2', N'Admin', N'Hà Nội', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECiapvW2MYs/tDmWc04D80DYuF2YBK7OPNSfNm6Toec0HoKXEjsTv2JJau90BIOxkQ==', N'5RCHDK4CMUDCHNJNLT2JFAABYXMOWPYL', N'254d82f9-cb4a-4b87-bd72-b490d213fd14', NULL, 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [FirstName], [LastName], [Role], [Address], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ResetPasswordExpiry], [ResetPasswordToken]) VALUES (N'f6d7ef14-ac05-4472-8153-88ce3df73c9e', N'AppUser', N'Trần Anh', N'Thức', N'User', N'HN', N'thuctafs90113@fpt.edu.vn', N'THUCTAFS90113@FPT.EDU.VN', N'thuctafs90113@fpt.edu.vn', N'THUCTAFS90113@FPT.EDU.VN', 0, N'AQAAAAEAACcQAAAAEDvWpKcpyLdaVW6JqHdeqsR9QkjklB2PwkutcpOoLeI5mDiuic//ORJXX63Tb/fyPw==', N'4CZTDVILIUSBB55PD5QWM3UDEWAOVUBU', N'820f6efa-af7a-4225-8f3c-59e74ca2c3af', N'', 0, 0, NULL, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL)
GO
SET IDENTITY_INSERT [dbo].[AuthHistories] ON 

INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (161, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:27:10.3284632' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (162, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:33:09.7181589' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (163, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:35:20.9934393' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (164, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:43:29.5357511' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (165, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:44:02.0465853' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (166, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:44:38.9808520' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (167, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T00:45:13.7530017' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (168, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T15:31:01.9638391' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (169, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T16:05:50.1133178' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (170, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T16:06:25.7023247' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (171, N'f6d7ef14-ac05-4472-8153-88ce3df73c9e', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T16:10:49.4826631' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (172, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T19:57:26.6071477' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (173, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:00:13.7857293' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (174, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:06:46.3798684' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (175, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:08:02.4128224' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (176, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:08:34.1509548' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (177, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:13:05.2243562' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (178, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:15:00.6697161' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (179, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T21:17:44.0052757' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (180, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T10:49:33.3232811' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (181, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T10:52:45.1870876' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1180, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T15:58:45.1863062' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1181, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T16:01:30.0578402' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1182, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T16:03:29.6738921' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1183, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T18:46:45.7632029' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1184, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:34:21.4985120' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1185, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:51:53.4643862' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1186, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:52:52.9872128' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1187, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:53:16.7368228' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1188, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:10:25.2771518' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1189, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:32:45.1280918' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1190, N'b280d88a-8f8b-4015-97e8-4e3460041769', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T22:28:54.6230986' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1191, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T22:35:07.0229794' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1192, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T22:35:52.6201404' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1193, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:07:33.9426542' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1194, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:09:19.7265984' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1195, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:11:52.9678359' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1196, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:40:21.6774018' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1197, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:04:18.1334316' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1198, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:05:15.4171702' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1199, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:06:08.4053373' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1200, N'f6d7ef14-ac05-4472-8153-88ce3df73c9e', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:08:32.1577092' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1201, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-15T10:02:38.3103758' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1202, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-15T10:16:53.9082448' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1203, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-18T19:37:29.8722932' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1204, N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-18T21:08:50.5548926' AS DateTime2), NULL, NULL)
INSERT [dbo].[AuthHistories] ([Id], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1205, N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-18T21:16:17.2907457' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AuthHistories] OFF
GO
SET IDENTITY_INSERT [dbo].[BlogImages] ON 

INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'/Images/list-image-blog/5bf21b96-0aca-4498-a39c-287e76910116.jpg', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:16:52.8277659' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'/Images/list-image-blog/6ff1c928-4618-4347-9af4-364c170bde68.jpg', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:17:40.5572788' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'/Images/list-image-blog/f05c5e79-207f-4734-8e3b-9e80e4fa4d2a.jpg', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:18:31.8664923' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'/Images/list-image-blog/b209df23-553b-408b-88a8-c5c4cd1b0e28.jpg', 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:19:02.3712768' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'/Images/list-image-blog/312db72e-1bac-4485-9a9c-322d7f9f37db.jpg', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:19:33.0431790' AS DateTime2), NULL, NULL)
INSERT [dbo].[BlogImages] ([Id], [Name], [BlogId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'/Images/list-image-blog/40597822-0ec2-4acb-b85f-55a0d3c26ce3.jpg', 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:07.3656667' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[BlogImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'TẦM QUAN TRỌNG CỦA THỜI TRANG BỀN VỮNG', N'Ngành công nghiệp thời trang đóng góp 10% lượng khí thải nhà kính toàn cầu, 20% lượng nước thải công nghiệp và 35% lượng vi nhựa trong đại dương. Những con số này cho thấy tác động tiêu cực của ngành thời trang truyền thống đến môi trường. Chính vì vậy, thời trang bền vững đang nổi lên như một xu hướng tất yếu của tương lai, thu hút sự quan tâm của ngày càng nhiều người tiêu dùng và các thương hiệu thời trang.', N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T11:16:52.8274359' AS DateTime2), NULL, CAST(N'2024-06-06T15:31:56.9365390' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Vậy thời trang bền vững là gì?', N'Thời trang bền vững là một triết lý thiết kế, sản xuất, tiêu thụ và tái sử dụng quần áo một cách có trách nhiệm với môi trường và xã hội. Nó bao gồm nhiều yếu tố như:
- Sử dụng vật liệu thân thiện với môi trường: Các thương hiệu thời trang bền vững sử dụng các vật liệu tái chế, hữu cơ, hoặc có nguồn gốc bền vững như bông hữu cơ, len alpaca, gai dầu, v.v.
-Quy trình sản xuất hiệu quả: Các quy trình sản xuất được tối ưu hóa để giảm thiểu lượng nước, năng lượng và hóa chất sử dụng.', N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T11:17:40.5572761' AS DateTime2), NULL, CAST(N'2024-06-06T15:39:50.2424396' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Thời trang bền vững mang lại nhiều lợi ích cho môi trường, xã hội và nền kinh tế', N'Giảm thiểu tác động môi trường: Sử dụng vật liệu thân thiện với môi trường và quy trình sản xuất hiệu quả giúp giảm thiểu lượng khí thải nhà kính, ô nhiễm nước và đất, và bảo vệ tài nguyên thiên nhiên.
Cải thiện điều kiện lao động: Đảm bảo điều kiện lao động công bằng giúp nâng cao đời sống của người lao động trong ngành thời trang.
Khuyến khích tiêu dùng có trách nhiệm: Khuyến khích người tiêu dùng mua sắm thông minh và sử dụng quần áo lâu dài giúp giảm thiểu rác thải thời trang và bảo vệ môi trường.
Phát triển kinh tế bền vững: Ngành thời trang bền vững đang phát triển nhanh chóng và tạo ra nhiều cơ hội việc làm mới.', N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T11:18:31.8664882' AS DateTime2), NULL, CAST(N'2024-06-06T15:42:20.4143096' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Bạn có thể chung tay cùng chúng tôi bằng cách', N'Mua sắm các sản phẩm thời trang in ấn theo yêu cầu của chúng tôi được làm từ vật liệu thân thiện với môi trường.
Hỗ trợ các tổ chức bảo vệ môi trường và động vật hoang dã.
Nâng cao ý thức cộng đồng về bảo vệ môi trường và bảo vệ động vật.
Sử dụng các phương tiện giao thông công cộng hoặc đi bộ để giảm thiểu khí thải carbon.', N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T11:19:02.3712733' AS DateTime2), NULL, CAST(N'2024-06-06T16:19:10.4403635' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Là một thương hiệu thời trang in ấn theo yêu cầu, chúng tôi cam kết', N'Sử dụng các vật liệu in ấn thân thiện với môi trường như mực in gốc nước, giấy tái chế và bao bì compostable.
Áp dụng quy trình in ấn hiệu quả để giảm thiểu lượng rác thải và tiết kiệm năng lượng.
Hợp tác với các nhà cung cấp có trách nhiệm về mặt xã hội và môi trường.
Khuyến khích khách hàng mua sắm thông minh và sử dụng sản phẩm của chúng tôi một cách lâu dài.
Hãy cùng chung tay xây dựng một ngành thời trang bền vững để bảo vệ môi trường và tạo ra một tương lai tốt đẹp hơn cho tất cả mọi người.', N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T11:19:33.0431752' AS DateTime2), NULL, CAST(N'2024-06-06T16:14:39.7658625' AS DateTime2))
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Bảo vệ môi trường trong xanh sạch đẹp', N'Tiết kiệm năng lượng và nước trong sinh hoạt.
Trồng cây xanh và bảo vệ môi trường xung quanh.
Mỗi hành động nhỏ của bạn đều góp phần tạo nên sự khác biệt lớn!
Cùng nhau, chúng ta có thể bảo vệ Bắc Cực và Nam Cực, bảo vệ môi trường sống của gấu bắc cực và cánh cụt, và bảo vệ hành tinh xanh của chúng ta cho thế hệ tương lai.', N'148c41ec-f378-4168-83c5-2665fde87d63', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T11:20:07.3656629' AS DateTime2), NULL, CAST(N'2024-06-06T16:21:36.7860522' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Christian Dior', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:30.5173983' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Louis Vuiton', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:37.6594055' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'H&M', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:30:48.5637983' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Zara', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:30:53.6217243' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Uniqlo', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:01.0849470' AS DateTime2), NULL, NULL)
INSERT [dbo].[Brands] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Áo Thun Customized', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T16:09:35.6077441' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1052, CAST(250000.00 AS Decimal(18, 2)), N'Đen', N'S', 1, NULL, 4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1054, CAST(250000.00 AS Decimal(18, 2)), N'Đen', N'M', 1, NULL, 4, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1055, CAST(250000.00 AS Decimal(18, 2)), N'Đen', N'M', 1, NULL, 3, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1056, CAST(250000.00 AS Decimal(18, 2)), N'Đen', N'M', 1, NULL, 8, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1057, CAST(250000.00 AS Decimal(18, 2)), N'Trắng', N'M', 1, NULL, 3, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Carts] ([Id], [Price], [Color], [Size], [Quantity], [UserId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1058, CAST(250000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1, NULL, 4, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Áo', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:19:52.5459039' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Quần', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:26:52.1921904' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Đồng hồ', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:26:56.6496112' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Thắt lưng', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:27:00.8790527' AS DateTime2), NULL, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Giày', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:27:03.8265325' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Đen', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:51.6828558' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Trắng', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:55.2583990' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Vàng', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:45.3082162' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Be', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:52.9042219' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Nâu', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:58.3321714' AS DateTime2), NULL, CAST(N'2023-12-10T10:33:18.9465868' AS DateTime2))
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Đỏ', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:33:47.8441433' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Tím', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:21.1755472' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'Hồng', 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:36:41.4367400' AS DateTime2), NULL, NULL)
INSERT [dbo].[Colors] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'Xanh', 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:36:52.4975554' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 

INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'QJM6B', CAST(50000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:30.1197604' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'MHIO7', CAST(75000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:32.9560180' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'C28M4', CAST(100000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:35.5162774' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'5R8NJ', CAST(125000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:38.4361948' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'KDL38', CAST(150000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:34:41.1161535' AS DateTime2), NULL, CAST(N'2024-05-25T20:44:41.8861986' AS DateTime2))
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'M3SNU', CAST(100000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2024-01-05T14:40:36.0683913' AS DateTime2), NULL, NULL)
INSERT [dbo].[Coupons] ([Id], [Name], [Discount], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'EEIH5', CAST(75000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2024-01-07T23:11:01.4299466' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1026, 3, CAST(750000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'Trắng', N'M', 1031, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1027, 3, CAST(750000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'Đen', N'M', 1033, 4, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1028, 1, CAST(250000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'Đen', N'XL', 1034, 3, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[OrderDetails] ([Id], [Quantity], [TotalPrice], [Price], [Color], [Size], [OrderId], [ProdId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1029, 6, CAST(1500000.00 AS Decimal(18, 2)), CAST(250000.00 AS Decimal(18, 2)), N'Trắng', N'L', 1035, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1030, NULL, 0, CAST(500000.00 AS Decimal(18, 2)), N'HN', N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-06T20:16:18.3590521' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1031, N'hàng dễ vỡ ', 2, CAST(750000.00 AS Decimal(18, 2)), N'Đà nẵng', N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:09:09.6193326' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1032, NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'HN', N'b64cfc22-f8e9-4b87-a151-ecf103eee058', NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:20:23.4537351' AS DateTime2), NULL, NULL, 1)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1033, N'Bảo quản thật kĩ', 2, CAST(750000.00 AS Decimal(18, 2)), N'DN ', N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:05:01.0818026' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1034, N'Bảo quản hàng ', 2, CAST(250000.00 AS Decimal(18, 2)), N'Liên chiểu', N'ae88eb56-ae9f-450b-9471-9fd962935d14', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:06:45.2819889' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[Orders] ([Id], [Description], [Status], [TotalPrice], [Address], [UserId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt], [TypePayment]) VALUES (1035, N'ko có', 2, CAST(1350000.00 AS Decimal(18, 2)), N'Ngũ Hành Sơn', N'f6d7ef14-ac05-4472-8153-88ce3df73c9e', NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:09:31.1141397' AS DateTime2), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'/Images/list-image-product/a8ab75d8-8aef-4750-b016-76a2fcd809c5.jpg', 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:43:52.9693000' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (16, N'/Images/list-image-product/a6408abf-71e6-4504-ba85-59f4c2ea3423.png', 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T17:37:30.8342361' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (17, N'/Images/list-image-product/064fd7e2-5a4b-4704-8e31-7fc95094cf82.png', 8, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T17:38:59.7960631' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (19, N'/Images/list-image-product/c2a5a299-b941-4564-828e-01e81b5ee5d7.png', 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:35:08.1054795' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (20, N'/Images/list-image-product/1d5c8539-dad9-4375-ab78-8337e03e5a8a.png', 9, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:35:22.9459156' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (21, N'/Images/list-image-product/af15a2f4-78cc-4b4a-9df4-f47ebe50ca3b.png', 3, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:36:57.0281411' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (22, N'/Images/list-image-product/34007068-4296-4af3-9e67-c22757a004ef.png', 4, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:37:10.9136429' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (24, N'/Images/list-image-product/e23cda85-fa56-400c-a9da-5c032c043fce.png', 2, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:42:54.3289979' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductImages] ([Id], [Name], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (25, N'/Images/list-image-product/dd7c1e0b-1735-4046-95f8-db36db8bf97e.png', 5, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:51:32.4568531' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLikes] ON 

INSERT [dbo].[ProductLikes] ([Id], [Name], [Price], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2008, NULL, 0, N'49d8c68f-8f48-457a-8457-33366333381b', 9, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:51:06.7032153' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductLikes] ([Id], [Name], [Price], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2011, NULL, 0, NULL, 3, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T19:52:35.7837006' AS DateTime2), NULL, NULL)
INSERT [dbo].[ProductLikes] ([Id], [Name], [Price], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2013, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-18T21:08:30.2493561' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductLikes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Áo Mẫu 1', N'Các sản phẩm của Artive đều có thiết kế sang trọng, thanh lịch và độc đáo. Một phần cũng bởi Artive là người yêu cái đẹp, yêu thiên nhiên nên do đó, các thiết kế của chúng tôi có phần tự do, thoáng mát. Đến nay, Artive vẫn luôn không ngừng cập nhật những xu hướng mới để tạo ra những sản phẩm mang chất riêng.

Thời trang cao cấp của Dior không bao giờ lỗi mốt nên bạn có thể sử dụng chúng lâu dài, tuy là thế nhưng có một vài thiết kế của hãng không có tính ứng dụng cao nên dẫn đến nhiều tranh cãi.', CAST(250000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'Vải Cotton', N'new', 1, 1, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:21:46.5965997' AS DateTime2), NULL, CAST(N'2024-06-07T19:35:08.0413327' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Áo mẫu 7', N'Áo thun mặc vào rất dễ chịu và thoải mái khi đi ra ngoài', CAST(250000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'fashion', N'99% vải cotton, 1% elastane', N'new', 1, 1, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:36:02.5206392' AS DateTime2), NULL, CAST(N'2024-06-07T20:45:46.3157446' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'Áo Mẫu 2', N'Áo mẫu 2 nhẹ bằng linen có cổ đứng gân nổi và khoá kéo dọc thân trước. Túi chéo hai bên có khuy bấm và chun bọc ở cổ tay và gấu. Có lớp lót. Dáng vừa để mặc thoải mái và tạo dáng cổ điển. Vải làm từ linen rất thoáng khí, đẹp cả khi là ủi hay để nhăn và mềm theo thời gian.', CAST(250000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'fashion', N'Vải Cotton', N'new', 1, 1, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:39:32.3822083' AS DateTime2), NULL, CAST(N'2024-06-07T19:36:57.0263754' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Áo mẫu 3', N'Được làm bằng vải cotton mịn với công nghệ DRY. Chiếc áo này được thiết kế tỉ mỉ, với số đo và chiều rộng của dây cài cổ áo có thể mặc riêng.', CAST(250000.00 AS Decimal(18, 2)), CAST(75000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'71% Bông, 25% Polyeste, 4% Elastan', N'new', 1, 1, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:40:17.7229294' AS DateTime2), NULL, CAST(N'2024-06-07T19:37:10.9122254' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Áo mẫu 8', N'Mặc áo này sẽ rất là cute và hợp nhất khi các couple mang ra ngoài rất chi là hợp', CAST(250000.00 AS Decimal(18, 2)), CAST(130000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'vải cotton', N'new', 1, 2, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:41:25.3349485' AS DateTime2), NULL, CAST(N'2024-06-07T20:51:32.4496355' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Giày chạy bộ', N'Giày thể thao chạy bộ', CAST(750000.00 AS Decimal(18, 2)), CAST(350000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'vải, boost', N'new', 0, 1, 5, 5, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:43:52.9690632' AS DateTime2), NULL, NULL)
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'Áo mẫu 4', N'Một thiết kế của “Doraemon Sustainability Mode”, đại sứ bền vững toàn cầu của Artive. Được làm từ 100% vải polyester tái chế, làm đầy và thêu.
', CAST(250000.00 AS Decimal(18, 2)), CAST(220000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'100% Polyeste ( 100% Sử Dụng Sợi Polyeste Tái Chế )', N'new', 1, 2, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:14:07.3942462' AS DateTime2), NULL, CAST(N'2024-06-07T18:54:58.4906575' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'Áo mẫu 5', N'Áo chui đầu dệt kim mềm có chứa sợi len với cổ tròn, vai ráp trễ và tay ngắn.', CAST(250000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Fashion', N'Pôlyexte 52%, Acrylic 41%, Len 4%, Vải thun cotton 3%', N'new', 1, 2, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-23T21:19:09.7740322' AS DateTime2), NULL, CAST(N'2024-06-07T18:52:09.0199356' AS DateTime2))
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [OriginalPrice], [Discount], [Tag], [Material], [Status], [IsFeatured], [Gender], [BrandId], [CategoryId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'Áo mẫu 6', N'Áo polo nữ mặc rất dễ chịu và thoáng mát.', CAST(250000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'Áo thun', N'Vải cotton', N'new', 1, 2, 6, 1, 6, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:48:13.3886335' AS DateTime2), NULL, CAST(N'2024-06-07T19:35:22.9438002' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariants] ON 

INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, 299, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, 297, 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, 300, 2, 9, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, 300, 2, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, 298, 3, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, 347, 4, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, 300, 5, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, 300, 6, 6, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, 300, 4, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, 300, 7, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, 300, 7, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, 300, 8, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (19, 299, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (21, 300, 1, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (22, 300, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (23, 300, 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (24, 294, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (25, 300, 1, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (28, 300, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (29, 300, 1, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (30, 300, 1, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (31, 300, 1, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (32, 300, 1, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (33, 300, 1, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (34, 300, 1, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (35, 300, 3, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (36, 300, 3, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (37, 300, 3, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (38, 300, 3, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (39, 300, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (40, 300, 3, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (41, 300, 3, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (43, 299, 3, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (44, 300, 3, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (45, 300, 3, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (46, 300, 3, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (47, 300, 3, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (48, 300, 3, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (49, 300, 3, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (50, 297, 4, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (51, 300, 4, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (52, 300, 4, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (53, 300, 4, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (54, 300, 4, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (55, 300, 4, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (56, 300, 4, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (57, 300, 4, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (58, 300, 4, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (59, 300, 4, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (60, 300, 4, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (61, 300, 4, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (62, 300, 4, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (63, 300, 7, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (64, 300, 7, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (65, 300, 7, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (66, 300, 7, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (67, 300, 7, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (68, 300, 7, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (69, 300, 7, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (70, 300, 7, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (71, 300, 7, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (72, 300, 7, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (73, 300, 7, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (74, 300, 7, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (75, 300, 7, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (76, 300, 8, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (77, 300, 8, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (78, 300, 8, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (79, 300, 8, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (80, 300, 8, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (81, 300, 8, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (82, 300, 8, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (83, 300, 8, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (84, 300, 8, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (85, 300, 8, 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (86, 300, 8, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (87, 300, 8, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (88, 300, 8, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (89, 300, 8, 7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (90, 300, 2, 9, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (91, 300, 2, 9, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (92, 300, 2, 9, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (93, 300, 5, 8, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (94, 300, 5, 8, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (95, 300, 5, 8, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductVariants] ([Id], [Stock], [ProdId], [ColorId], [SizeId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (96, 300, 5, 8, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductVariants] OFF
GO
SET IDENTITY_INSERT [dbo].[ReceiptDetails] ON 

INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, 100, CAST(25000000.00 AS Decimal(18, 2)), 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, 150, CAST(37500000.00 AS Decimal(18, 2)), 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, 150, CAST(52500000.00 AS Decimal(18, 2)), 2, 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:40.6316152' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, 150, CAST(37500000.00 AS Decimal(18, 2)), 3, 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:06.8859152' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, 200, CAST(50000000.00 AS Decimal(18, 2)), 3, 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:06.8966115' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, 200, CAST(15000000.00 AS Decimal(18, 2)), 4, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:36.5164693' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, 100, CAST(25000000.00 AS Decimal(18, 2)), 5, 7, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:16.1080896' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, 150, CAST(52500000.00 AS Decimal(18, 2)), 5, 7, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:16.1174672' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, 150, CAST(52500000.00 AS Decimal(18, 2)), 6, 8, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:45.5294647' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, 200, CAST(36000000.00 AS Decimal(18, 2)), 7, 14, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:30:26.3274136' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (11, 100, CAST(22000000.00 AS Decimal(18, 2)), 8, 10, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0032345' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (12, 50, CAST(11000000.00 AS Decimal(18, 2)), 8, 11, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0144145' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (13, 50, CAST(3750000.00 AS Decimal(18, 2)), 8, 6, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0228155' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (14, 50, CAST(3750000.00 AS Decimal(18, 2)), 8, 9, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:30.0261075' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (15, 100, CAST(25000000.00 AS Decimal(18, 2)), 9, 4, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:20:03.8781705' AS DateTime2), NULL, NULL)
INSERT [dbo].[ReceiptDetails] ([Id], [Amonut], [TotalPrice], [ReceiptId], [ProdVariantId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (16, 100, CAST(7500000.00 AS Decimal(18, 2)), 10, 6, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:38:06.9374102' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[ReceiptDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipts] ON 

INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'0H9GXYC', CAST(62500000.00 AS Decimal(18, 2)), N'oke', N'148c41ec-f378-4168-83c5-2665fde87d63', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:23:36.6577453' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'PI4T7KP', CAST(52500000.00 AS Decimal(18, 2)), N'Nhập sản phẩm của H&M', N'148c41ec-f378-4168-83c5-2665fde87d63', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:20:40.5854774' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'006KXQW', CAST(87500000.00 AS Decimal(18, 2)), N'Nhập quần jean zara', N'148c41ec-f378-4168-83c5-2665fde87d63', 4, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:06.8793854' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'JRGILYA', CAST(15000000.00 AS Decimal(18, 2)), N'nhập áo ba lỗ Uniqlo', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:21:36.5114762' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'26WPYIC', CAST(77500000.00 AS Decimal(18, 2)), N'Nhập giày thể thao và giày chạy bộ Uniqlo', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:16.0999451' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'903TZSQ', CAST(52500000.00 AS Decimal(18, 2)), N'Nhập giày chạy bộ uniqlo', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T11:22:45.5262554' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'GVB93H9', CAST(36000000.00 AS Decimal(18, 2)), N'nhập hàng ngày 30/12', N'148c41ec-f378-4168-83c5-2665fde87d63', 3, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:30:26.2910189' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'ZAXGD9X', CAST(40500000.00 AS Decimal(18, 2)), N'Nhập hàng Uniqlo ngày 30/12', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-30T13:32:29.9901259' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'68N0F6J', CAST(25000000.00 AS Decimal(18, 2)), N'Nhập hàng 8/1', N'148c41ec-f378-4168-83c5-2665fde87d63', 4, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:20:03.8290419' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'VT7S1WJ', CAST(7500000.00 AS Decimal(18, 2)), N'Nhập áo 3 lỗ', N'148c41ec-f378-4168-83c5-2665fde87d63', 5, NULL, NULL, NULL, NULL, CAST(N'2024-01-08T21:38:06.9136822' AS DateTime2), NULL, NULL)
INSERT [dbo].[Receipts] ([Id], [Name], [TotalPrice], [Description], [UserId], [SupplierId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1009, N'THU1JNC', CAST(0.00 AS Decimal(18, 2)), N'Nhập áo sơ mi trắng size M ngày 29/4', N'b9cba919-6077-4b88-8c6b-ac136d54956c', 1, NULL, NULL, NULL, NULL, CAST(N'2024-04-29T16:46:11.5411220' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Receipts] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1011, N'áo đẹp quá', 5, NULL, 8, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:08:48.3163611' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1012, N'Áo quá chất lượng ạ', 5, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', 8, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:10:44.2590451' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1013, N'oke đẹp quá', 4, N'ae88eb56-ae9f-450b-9471-9fd962935d14', 7, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T20:33:13.9450757' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1014, N'áo đẹp quá', 4, N'b64cfc22-f8e9-4b87-a151-ecf103eee058', 3, NULL, NULL, NULL, NULL, CAST(N'2024-06-07T22:36:11.3851743' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1015, N'Áo đẹp quá', 4, N'ae88eb56-ae9f-450b-9471-9fd962935d14', 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-08T10:08:16.4716687' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1016, N'Áo trông rất đẹp', 5, N'ae88eb56-ae9f-450b-9471-9fd962935d14', 4, NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:04:34.7470806' AS DateTime2), NULL, NULL)
INSERT [dbo].[Reviews] ([Id], [Content], [Rating], [UserId], [ProdId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1017, N'Áo quá cute', 5, N'f6d7ef14-ac05-4472-8153-88ce3df73c9e', 1, NULL, NULL, NULL, NULL, CAST(N'2024-06-14T20:08:47.9711478' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'S', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:43.4114789' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'M', 1, NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:46.8894904' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'L', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:17.0559384' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'XL', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:22.5177063' AS DateTime2), NULL, CAST(N'2024-06-07T16:07:17.0955312' AS DateTime2))
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'XXL', 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:28.7973446' AS DateTime2), NULL, CAST(N'2024-06-07T16:07:29.5728750' AS DateTime2))
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'39', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:33.1962644' AS DateTime2), NULL, CAST(N'2024-05-25T20:37:27.4849575' AS DateTime2))
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (7, N'40', 2, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:38.9009605' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (8, N'41', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:31:49.0972188' AS DateTime2), NULL, CAST(N'2023-12-10T10:32:21.5961683' AS DateTime2))
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (9, N'42', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:26.0213777' AS DateTime2), NULL, NULL)
INSERT [dbo].[Sizes] ([Id], [Name], [CategoryId], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (10, N'43', 5, NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:32:32.0214264' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (1, N'Christian Dior', N'099999999', N'Hãng thời trang đến từ UK', N'UK', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:09.7156257' AS DateTime2), NULL, CAST(N'2024-01-04T22:09:08.6153387' AS DateTime2))
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (2, N'Louis Vuiton', N'08888888', N'Hãng thời trang đến từ Pháp', N'France', NULL, NULL, NULL, NULL, CAST(N'2023-11-12T11:20:24.6228014' AS DateTime2), NULL, CAST(N'2024-01-04T22:09:18.5239828' AS DateTime2))
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (3, N'H&M', N'07777777777', N'Chuyên cung cấp các loại quần áo phụ kiện', N'Thụy Điển', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:28:03.5229647' AS DateTime2), NULL, NULL)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (4, N'Zara', N'066666666', N'Chuyên cung cấp quần áo ', N'Tây Ban Nha', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:29:00.3954140' AS DateTime2), NULL, NULL)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (5, N'Uniqlo', N'055555555', N'Hãng cung cấp quần áo đến từ Nhật Bản', N'Nhật Bản', NULL, NULL, NULL, NULL, CAST(N'2023-12-10T10:29:31.0144782' AS DateTime2), NULL, NULL)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Description], [Address], [IsDeleted], [DeletedBy], [DeletedAt], [CreatedBy], [CreatedAt], [UpdatedBy], [UpdatedAt]) VALUES (6, N'Artive', N'02563456789', N'Chuyên cung cấp và sửa chữa các loại áo', N'Việt Nam', NULL, NULL, NULL, NULL, CAST(N'2024-06-07T16:12:55.2551280' AS DateTime2), NULL, CAST(N'2024-06-07T18:51:19.5949687' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [TypePayment]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AuthHistories]  WITH CHECK ADD  CONSTRAINT [FK_AuthHistories_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AuthHistories] CHECK CONSTRAINT [FK_AuthHistories_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BlogImages]  WITH CHECK ADD  CONSTRAINT [FK_BlogImages_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[BlogImages] CHECK CONSTRAINT [FK_BlogImages_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products_ProdId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_ProductVariants_ProdVariantId] FOREIGN KEY([ProdVariantId])
REFERENCES [dbo].[ProductVariants] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_ProductVariants_ProdVariantId]
GO
ALTER TABLE [dbo].[Colors]  WITH CHECK ADD  CONSTRAINT [FK_Colors_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Colors] CHECK CONSTRAINT [FK_Colors_Categories_CategoryId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProdId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductVariants_ProdVariantId] FOREIGN KEY([ProdVariantId])
REFERENCES [dbo].[ProductVariants] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductVariants_ProdVariantId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProdId]
GO
ALTER TABLE [dbo].[ProductLikes]  WITH CHECK ADD  CONSTRAINT [FK_ProductLikes_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductLikes] CHECK CONSTRAINT [FK_ProductLikes_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductLikes]  WITH CHECK ADD  CONSTRAINT [FK_ProductLikes_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductLikes] CHECK CONSTRAINT [FK_ProductLikes_Products_ProdId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Products_ProdId]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Sizes_SizeId]
GO
ALTER TABLE [dbo].[ReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetails_ProductVariants_ProdVariantId] FOREIGN KEY([ProdVariantId])
REFERENCES [dbo].[ProductVariants] ([Id])
GO
ALTER TABLE [dbo].[ReceiptDetails] CHECK CONSTRAINT [FK_ReceiptDetails_ProductVariants_ProdVariantId]
GO
ALTER TABLE [dbo].[ReceiptDetails]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetails_Receipts_ReceiptId] FOREIGN KEY([ReceiptId])
REFERENCES [dbo].[Receipts] ([Id])
GO
ALTER TABLE [dbo].[ReceiptDetails] CHECK CONSTRAINT [FK_ReceiptDetails_Receipts_ReceiptId]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_Receipts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_Receipts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Receipts]  WITH CHECK ADD  CONSTRAINT [FK_Receipts_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Receipts] CHECK CONSTRAINT [FK_Receipts_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Products_ProdId] FOREIGN KEY([ProdId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Products_ProdId]
GO
ALTER TABLE [dbo].[Sizes]  WITH CHECK ADD  CONSTRAINT [FK_Sizes_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Sizes] CHECK CONSTRAINT [FK_Sizes_Categories_CategoryId]
GO
