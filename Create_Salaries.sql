USE [CompanyDB]
GO

/****** Object:  Table [dbo].[Salaries]    Script Date: 3/20/2025 9:59:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Salaries](
	[salary_id] [int] IDENTITY(1,1) NOT NULL,
	[salary_amount] [numeric](10, 2) NOT NULL,
	[effective_date] [date] NOT NULL,
	[employee_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Salaries] ADD  DEFAULT (getdate()) FOR [effective_date]
GO

ALTER TABLE [dbo].[Salaries]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employees] ([employee_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Salaries]  WITH CHECK ADD CHECK  (([salary_amount]>(0)))
GO


