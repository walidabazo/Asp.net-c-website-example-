USE [shopping]
GO
/****** Object:  Table [dbo].[admin_groupmenu]    Script Date: 11/22/2019 2:21:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_groupmenu](
	[groupmenu_id] [int] IDENTITY(1,1) NOT NULL,
	[groupmenu_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groupmenu] PRIMARY KEY CLUSTERED 
(
	[groupmenu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_groups]    Script Date: 11/22/2019 2:21:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_groups](
	[admin_groups_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_groups_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin_groups] PRIMARY KEY CLUSTERED 
(
	[admin_groups_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_menu]    Script Date: 11/22/2019 2:21:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_menu](
	[admin_menu_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_menu_title] [nvarchar](50) NULL,
	[admin_menu_link] [nvarchar](50) NULL,
	[admin_menu_icon] [nvarchar](50) NULL,
	[admin_menu_active] [bit] NULL CONSTRAINT [DF_admin_menu_admin_menu_active]  DEFAULT ((0)),
	[groupmenu_id] [int] NULL,
 CONSTRAINT [PK_admin_menu] PRIMARY KEY CLUSTERED 
(
	[admin_menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_menu_groups]    Script Date: 11/22/2019 2:21:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_menu_groups](
	[admin_menu_groups_menu_id] [int] NOT NULL,
	[admin_menu_groups_group_id] [int] NOT NULL,
 CONSTRAINT [PK_admin_menu_groups] PRIMARY KEY CLUSTERED 
(
	[admin_menu_groups_menu_id] ASC,
	[admin_menu_groups_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_user_groups]    Script Date: 11/22/2019 2:21:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_user_groups](
	[admin_user_groups_user_id] [int] NOT NULL,
	[admin_user_groups_group_id] [int] NOT NULL,
 CONSTRAINT [PK_admin_user_groups] PRIMARY KEY CLUSTERED 
(
	[admin_user_groups_user_id] ASC,
	[admin_user_groups_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_users]    Script Date: 11/22/2019 2:21:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_users](
	[admin_users_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_users_username] [varchar](50) NULL,
	[admin_users_password] [varchar](50) NULL,
	[admin_users_name] [nvarchar](50) NULL,
	[admin_users_active] [bit] NULL CONSTRAINT [DF_admin_users_admin_users_active]  DEFAULT ((0)),
	[admin_users_job] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin_users] PRIMARY KEY CLUSTERED 
(
	[admin_users_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin_groupmenu] ON 

INSERT [dbo].[admin_groupmenu] ([groupmenu_id], [groupmenu_name]) VALUES (6, N'Admin')
SET IDENTITY_INSERT [dbo].[admin_groupmenu] OFF
SET IDENTITY_INSERT [dbo].[admin_groups] ON 

INSERT [dbo].[admin_groups] ([admin_groups_id], [admin_groups_name]) VALUES (1, N'Admin')
SET IDENTITY_INSERT [dbo].[admin_groups] OFF
SET IDENTITY_INSERT [dbo].[admin_menu] ON 

INSERT [dbo].[admin_menu] ([admin_menu_id], [admin_menu_title], [admin_menu_link], [admin_menu_icon], [admin_menu_active], [groupmenu_id]) VALUES (8, N'Admin Groups', N'../General/Admin_groups.aspx', N'icon_lockopen.gif', 1, 6)
INSERT [dbo].[admin_menu] ([admin_menu_id], [admin_menu_title], [admin_menu_link], [admin_menu_icon], [admin_menu_active], [groupmenu_id]) VALUES (10, N'Admin Group Menu', N'../General/Admin_group_menu.aspx', N'icon_sales.gif', 1, 6)
INSERT [dbo].[admin_menu] ([admin_menu_id], [admin_menu_title], [admin_menu_link], [admin_menu_icon], [admin_menu_active], [groupmenu_id]) VALUES (11, N'Menus', N'../General/Admin_menu.aspx', N'enabled.gif', 1, 6)
INSERT [dbo].[admin_menu] ([admin_menu_id], [admin_menu_title], [admin_menu_link], [admin_menu_icon], [admin_menu_active], [groupmenu_id]) VALUES (12, N'Admin User ', N'../General/admin_user.aspx', N'icon_games.gif', 1, 6)
SET IDENTITY_INSERT [dbo].[admin_menu] OFF
INSERT [dbo].[admin_menu_groups] ([admin_menu_groups_menu_id], [admin_menu_groups_group_id]) VALUES (6, 1)
INSERT [dbo].[admin_user_groups] ([admin_user_groups_user_id], [admin_user_groups_group_id]) VALUES (2, 1)
INSERT [dbo].[admin_user_groups] ([admin_user_groups_user_id], [admin_user_groups_group_id]) VALUES (3, 1)
SET IDENTITY_INSERT [dbo].[admin_users] ON 

INSERT [dbo].[admin_users] ([admin_users_id], [admin_users_username], [admin_users_password], [admin_users_name], [admin_users_active], [admin_users_job]) VALUES (2, N'admin', N'admin', N'walid', 1, NULL)
INSERT [dbo].[admin_users] ([admin_users_id], [admin_users_username], [admin_users_password], [admin_users_name], [admin_users_active], [admin_users_job]) VALUES (3, N'walid', N'walid', N'Mohammed', 1, N'Founder')
SET IDENTITY_INSERT [dbo].[admin_users] OFF
ALTER TABLE [dbo].[admin_menu]  WITH CHECK ADD  CONSTRAINT [FK_admin_menu_admin_groupmenu1] FOREIGN KEY([groupmenu_id])
REFERENCES [dbo].[admin_groupmenu] ([groupmenu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_menu] CHECK CONSTRAINT [FK_admin_menu_admin_groupmenu1]
GO
ALTER TABLE [dbo].[admin_menu_groups]  WITH CHECK ADD  CONSTRAINT [FK_admin_menu_groups_admin_groupmenu] FOREIGN KEY([admin_menu_groups_menu_id])
REFERENCES [dbo].[admin_groupmenu] ([groupmenu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_menu_groups] CHECK CONSTRAINT [FK_admin_menu_groups_admin_groupmenu]
GO
ALTER TABLE [dbo].[admin_menu_groups]  WITH CHECK ADD  CONSTRAINT [FK_admin_menu_groups_admin_groups] FOREIGN KEY([admin_menu_groups_group_id])
REFERENCES [dbo].[admin_groups] ([admin_groups_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_menu_groups] CHECK CONSTRAINT [FK_admin_menu_groups_admin_groups]
GO
ALTER TABLE [dbo].[admin_user_groups]  WITH CHECK ADD  CONSTRAINT [FK_admin_user_groups_admin_groups1] FOREIGN KEY([admin_user_groups_group_id])
REFERENCES [dbo].[admin_groups] ([admin_groups_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_user_groups] CHECK CONSTRAINT [FK_admin_user_groups_admin_groups1]
GO
ALTER TABLE [dbo].[admin_user_groups]  WITH CHECK ADD  CONSTRAINT [FK_admin_user_groups_admin_users1] FOREIGN KEY([admin_user_groups_user_id])
REFERENCES [dbo].[admin_users] ([admin_users_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_user_groups] CHECK CONSTRAINT [FK_admin_user_groups_admin_users1]
GO
