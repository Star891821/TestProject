/****** Object:  Table [dbo].[MstUsers]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstUsers](
[user_id] [int] IDENTITY(1,1) NOT NULL,
[user_name] [nvarchar](255) NOT NULL,
[user_password] [nvarchar](255) NOT NULL,
[user_givenName] [nvarchar](255) NOT NULL,
[user_surname] [nvarchar](255) NOT NULL,
[user_phone] [nvarchar](15) NULL,
[user_role] [nvarchar](255) NOT NULL,
[user_loginType] [nvarchar](255) NOT NULL,
[enforce2FA] [int] NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
[lastlogin_at] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstFinancePlanning]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstFinancePlanning] (
[finance_id] [int] IDENTITY(1,1) NOT NULL,
[finance_description] [nvarchar](MAX) NOT NULL,
[isactive] bit NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[finance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstCashFlowRequirements]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstCashFlowRequirements] (
[cash_flow_requirement_id] [int] IDENTITY(1,1) NOT NULL,
[cash_flow_requirement_description] [nvarchar](MAX) NOT NULL,
[cash_flow_requirement_amount] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[cash_flow_requirement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstPlannedExpenditure]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstPlannedExpenditure] (
[planned_expenditure_requirement_id] [int] IDENTITY(1,1) NOT NULL,
[planned_expenditure_requirement_description] [nvarchar](MAX) NOT NULL,
[planned_expenditure_owner] [nvarchar](255) NOT NULL,
[planned_expenditure_amount] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[planned_expenditure_requirement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstExpectedFutureInflows]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstExpectedFutureInflows] (
[expected_future_inflows_id] [int] IDENTITY(1,1) NOT NULL,
[expected_future_inflows_source] [nvarchar](MAX) NOT NULL,
[expected_future_inflows_owner] [nvarchar](255) NOT NULL,
[expected_future_inflows_amount] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[expected_future_inflows_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstEmploymentDetails]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstEmploymentDetails] (
[employee_details_id] [int] IDENTITY(1,1) NOT NULL,
[user_id] [int],
[employee_status] [nvarchar](255) NOT NULL,
[job_title] [nvarchar](255) NOT NULL,
[occupation] [nvarchar](255) NOT NULL,
[employer_name] [nvarchar](255) NOT NULL,
[employer_income] [nvarchar](255) NOT NULL,
[super_guarantee] [nvarchar](255) NOT NULL,
[occupation_duties] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,`
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[employee_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstSocialSecurity]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstSocialSecurity] (
[social_security_id] [int] IDENTITY(1,1) NOT NULL,
[benefit_details] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,`
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[social_security_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstIncomeDetails]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstIncomeDetails] (
[income_details_id] [int] IDENTITY(1,1) NOT NULL,
[income_type] [nvarchar](MAX) NOT NULL,
[income_details_owner] [nvarchar](255) NOT NULL,
[income_details_amount] [nvarchar](255) NOT NULL,
[income_details_frequency] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[income_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstExpensesDetails]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstIncomeDetails] (
[expenses_details_id] [int] IDENTITY(1,1) NOT NULL,
[expenses_type] [nvarchar](MAX) NOT NULL,
[expenses_details_owner] [nvarchar](255) NOT NULL,
[expenses_details_amount] [nvarchar](255) NOT NULL,
[expenses_details_frequency] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[expenses_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstAssests]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstAsserts] (
[asserts_id] [int] IDENTITY(1,1) NOT NULL,
[asserts_description] [nvarchar](MAX) NOT NULL,
[asserts_owner] [nvarchar](255) NOT NULL,
[asserts_current_balance] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[asserts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstInsurance]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstInsurance] (
[insurance_id] [int] IDENTITY(1,1) NOT NULL,
[insurer] [nvarchar](MAX) NOT NULL,
[policy_owner] [nvarchar](255) NOT NULL,
[premium_amount] [nvarchar](255) NOT NULL,
[premium_type] [nvarchar](255) NOT NULL,
[super] [nvarchar](255) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[insurance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstHealthSpecialCircumstances]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstHealthSpecialCircumstances] (
[health_special_circumstances_id] [int] IDENTITY(1,1) NOT NULL,
[health_special_circumstances_details] [nvarchar](MAX) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[health_special_circumstances_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstDependantsDetails]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstDependantsDetails] (
[dependents_details_id] [int] IDENTITY(1,1) NOT NULL,
[dependents_details_name] [nvarchar](MAX) NOT NULL,
[dependents_date_of_birth] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[dependents_relationship] [nvarchar](MAX) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[dependents_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstEstatePlanning]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstEstatePlanning] (
[estate_planning_id] [int] IDENTITY(1,1) NOT NULL,
[estate_planning_details] [nvarchar](MAX) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[estate_planning_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MstAssociatedStructures]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstAssociatedStructures] (
[associated_structures_id] [int] IDENTITY(1,1) NOT NULL,
[associated_structures_details] [nvarchar](MAX) NOT NULL,
[created_at] [datetime] DEFAULT CURRENT_TIMESTAMP NULL,
[created_by] [int] NULL,
[modified_at] [datetime] NULL,
[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED
(
[associated_structures_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MstUsers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstFinancePlanning] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstCashFlowRequirements] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstPlannedExpenditure] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstExpectedFutureInflows] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstEmploymentDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstSocialSecurity] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstIncomeDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstExpensesDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstAsserts] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstInsurance] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstHealthSpecialCircumstances] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstDependantsDetails] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstEstatePlanning] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstAssociatedStructures] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstEmploymentDetails]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[MstUsers] ([user_id])
GO