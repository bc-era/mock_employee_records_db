USE [CompanyDB]
GO

/****** Object:  Table [dbo].[Employees]    Script Date: 3/20/2025 9:53:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[hire_date] [date] NOT NULL,
	[job_title] [varchar](100) NOT NULL,
	[department_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [hire_date]
GO

ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([department_id])
REFERENCES [dbo].[Departments] ([department_id])
ON DELETE CASCADE
GO


