USE [VVPSMSDB]
GO
/****** Object:  Table [dbo].[AdmissionDocuments]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmissionDocuments](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[document_name] [nvarchar](255) NOT NULL,
	[document_path] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdmissionForms]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmissionForms](
	[form_id] [int] IDENTITY(1,1) NOT NULL,
	[academic_id] [int] NOT NULL,
	[school_id] [int] NOT NULL,
	[stream_id] [int] NOT NULL,
	[grade_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[student_givenName] [nvarchar](255) NOT NULL,
	[student_surname] [nvarchar](255) NOT NULL,
	[student_dob] [datetime] NOT NULL,
	[student_gender] [varchar](10) NOT NULL,
	[student_age] [int] NOT NULL,
	[parent_name1] [nvarchar](255) NOT NULL,
	[highest_qualification1] [nvarchar](255) NULL,
	[parent_contact1] [nvarchar](15) NOT NULL,
	[parent_email1] [nvarchar](255) NULL,
	[parent_name2] [nvarchar](255) NULL,
	[highest_qualification2] [nvarchar](255) NULL,
	[parent_contact2] [nvarchar](15) NULL,
	[parent_email2] [nvarchar](255) NULL,
	[preferred_contact] [nvarchar](15) NULL,
	[declaration] [int] NOT NULL,
	[siblings_YN] [char](4) NOT NULL,
	[special_needs] [int] NULL,
	[learning_disabilities] [int] NULL,
	[previous_school] [nvarchar](255) NULL,
	[reason_description] [text] NULL,
	[student_expelled] [int] NULL,
	[details_expulsion] [text] NULL,
	[admission_status] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_title] [nvarchar](255) NOT NULL,
	[post_description] [text] NOT NULL,
	[user_id] [int] NOT NULL,
	[status] [nvarchar](255) NOT NULL,
	[post_groups] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArAdmissionDocuments]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArAdmissionDocuments](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[document_name] [nvarchar](255) NOT NULL,
	[document_path] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArAdmissionForms]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArAdmissionForms](
	[form_id] [int] IDENTITY(1,1) NOT NULL,
	[academic_id] [int] NOT NULL,
	[school_code] [int] NOT NULL,
	[stream_id] [int] NOT NULL,
	[grade_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[student_givenName] [nvarchar](255) NOT NULL,
	[student_surname] [nvarchar](255) NOT NULL,
	[student_dob] [datetime] NOT NULL,
	[student_gender] [varchar](10) NOT NULL,
	[student_age] [int] NOT NULL,
	[parent_name1] [nvarchar](255) NOT NULL,
	[highest_qualification1] [nvarchar](255) NULL,
	[parent_contact1] [nvarchar](15) NOT NULL,
	[parent_email1] [nvarchar](255) NULL,
	[parent_name2] [nvarchar](255) NULL,
	[highest_qualification2] [nvarchar](255) NULL,
	[parent_contact2] [nvarchar](15) NULL,
	[parent_email2] [nvarchar](255) NULL,
	[preferred_contact] [nvarchar](15) NULL,
	[declaration] [int] NOT NULL,
	[siblings_YN] [char](4) NOT NULL,
	[special_needs] [int] NULL,
	[learning_disabilities] [int] NULL,
	[previous_school] [nvarchar](255) NULL,
	[reason_description] [text] NULL,
	[student_expelled] [int] NULL,
	[details_expulsion] [text] NULL,
	[admission_status] [int] NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstAcademicYears]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstAcademicYears](
	[academicId] [int] IDENTITY(1,1) NOT NULL,
	[academicyear_name] [nvarchar](255) NOT NULL,
	[academicyear_from] [datetime] NOT NULL,
	[academicyear_to] [datetime] NOT NULL,
	[academicterm_no] [nvarchar](255) NOT NULL,
	[academic_startdate] [datetime] NOT NULL,
	[academic_enddate] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[academicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstAdmissionStatus]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstAdmissionStatus](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_code] [int] NOT NULL,
	[status_description] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
 CONSTRAINT [PK_MstAdmissionStatus] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstClasses]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstClasses](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstGroupOfSchools]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstGroupOfSchools](
	[groupofSchools_id] [int] IDENTITY(1,1) NOT NULL,
	[groupofSchools_Name] [nvarchar](255) NOT NULL,
	[groupofSchools_Code] [nvarchar](255) NOT NULL,
	[groupofSchools_Logo] [nvarchar](255) NULL,
	[group_address] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupofSchools_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstRoleGroups]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstRoleGroups](
	[rolegroup_id] [int] IDENTITY(1,1) NOT NULL,
	[rolegroup_name] [nvarchar](255) NOT NULL,
	[rolegroup_description] [nvarchar](255) NULL,
	[role_id] [int] NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[rolegroup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstSchoolGrades]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstSchoolGrades](
	[grade_id] [int] IDENTITY(1,1) NOT NULL,
	[grade_name] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstSchools]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstSchools](
	[school_id] [int] IDENTITY(1,1) NOT NULL,
	[school_name] [nvarchar](255) NOT NULL,
	[school_code] [nvarchar](255) NOT NULL,
	[school_description] [nvarchar](255) NOT NULL,
	[school_address1] [nvarchar](255) NOT NULL,
	[school_address2] [nvarchar](255) NULL,
	[school_logopath] [nvarchar](255) NULL,
	[school_phone] [nvarchar](15) NOT NULL,
	[school_website] [nvarchar](255) NULL,
	[school_coordinates] [nvarchar](255) NULL,
	[school_landmark] [nvarchar](255) NOT NULL,
	[school_district] [nvarchar](255) NOT NULL,
	[school_state] [nvarchar](255) NOT NULL,
	[school_country] [nvarchar](255) NOT NULL,
	[streams_available] [nvarchar](255) NULL,
	[grades_available] [nvarchar](255) NULL,
	[classes_available] [nvarchar](255) NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[school_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstSchoolStreams]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstSchoolStreams](
	[stream_id] [int] IDENTITY(1,1) NOT NULL,
	[stream_name] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stream_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstUserRoles]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstUserRoles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MstUsers]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MstUsers](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[userpassword] [nvarchar](255) NOT NULL,
	[user_givenName] [nvarchar](255) NOT NULL,
	[user_surname] [nvarchar](255) NOT NULL,
	[user_phone] [nvarchar](15) NULL,
	[role_id] [int] NOT NULL,
	[user_loginType] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[created_at] [datetime] NULL,
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
/****** Object:  Table [dbo].[ParentDocuments]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentDocuments](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NOT NULL,
	[document_name] [nvarchar](255) NOT NULL,
	[document_path] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[parent_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_username] [nvarchar](255) NOT NULL,
	[parent_password] [nvarchar](255) NOT NULL,
	[parent_givenName] [nvarchar](255) NOT NULL,
	[parent_surname] [nvarchar](255) NOT NULL,
	[parent_phone] [nvarchar](15) NULL,
	[parent_role] [nvarchar](255) NULL,
	[parent_loginType] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[lastlogin_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[parent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiblingInfo]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiblingInfo](
	[sibling_id] [int] IDENTITY(1,1) NOT NULL,
	[form_id] [int] NOT NULL,
	[sibling_name] [nvarchar](255) NULL,
	[sibling_dob] [datetime] NULL,
	[sibling_gender] [nvarchar](255) NULL,
	[sibling_school] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sibling_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDocuments]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDocuments](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [int] NOT NULL,
	[document_name] [nvarchar](255) NOT NULL,
	[document_path] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[student_username] [nvarchar](255) NOT NULL,
	[student_password] [nvarchar](255) NOT NULL,
	[student_givenName] [nvarchar](255) NOT NULL,
	[student_surname] [nvarchar](255) NOT NULL,
	[student_phone] [nvarchar](15) NULL,
	[student_role] [nvarchar](255) NULL,
	[student_loginType] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[lastlogin_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeacherDocuments]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeacherDocuments](
	[document_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_id] [int] NOT NULL,
	[document_name] [nvarchar](255) NOT NULL,
	[document_path] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[document_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_username] [nvarchar](255) NOT NULL,
	[teacher_password] [nvarchar](255) NOT NULL,
	[teacher_givenName] [nvarchar](255) NOT NULL,
	[teacher_surname] [nvarchar](255) NOT NULL,
	[teacher_phone] [nvarchar](15) NOT NULL,
	[teacher_role] [nvarchar](255) NOT NULL,
	[school_code] [int] NOT NULL,
	[teacher_loginType] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
	[lastlogin_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRegistration]    Script Date: 08-09-2023 23:01:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRegistration](
	[register_id] [int] IDENTITY(1,1) NOT NULL,
	[register_email] [nvarchar](255) NULL,
	[register_givenname] [nvarchar](255) NOT NULL,
	[register_surname] [nvarchar](255) NOT NULL,
	[register_password] [nvarchar](255) NOT NULL,
	[register_phone] [nvarchar](15) NULL,
	[register_type] [nvarchar](255) NOT NULL,
	[enforce2FA] [int] NOT NULL,
	[activeYN] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[created_by] [int] NULL,
	[modified_at] [datetime] NULL,
	[modified_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[register_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmissionDocuments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AdmissionForms] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Announcements] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ArAdmissionDocuments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ArAdmissionForms] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstAcademicYears] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstAdmissionStatus] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstClasses] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstGroupOfSchools] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstRoleGroups] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstSchoolGrades] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstSchools] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstSchoolStreams] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[MstUserRoles] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ParentDocuments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Parents] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[SiblingInfo] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[StudentDocuments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[TeacherDocuments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[UserRegistration] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[AdmissionDocuments]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[AdmissionForms] ([form_id])
GO
ALTER TABLE [dbo].[AdmissionForms]  WITH CHECK ADD FOREIGN KEY([academic_id])
REFERENCES [dbo].[MstAcademicYears] ([academicId])
GO
ALTER TABLE [dbo].[AdmissionForms]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[MstClasses] ([class_id])
GO
ALTER TABLE [dbo].[AdmissionForms]  WITH CHECK ADD FOREIGN KEY([grade_id])
REFERENCES [dbo].[MstSchoolGrades] ([grade_id])
GO
ALTER TABLE [dbo].[AdmissionForms]  WITH CHECK ADD FOREIGN KEY([school_id])
REFERENCES [dbo].[MstSchools] ([school_id])
GO
ALTER TABLE [dbo].[AdmissionForms]  WITH CHECK ADD FOREIGN KEY([stream_id])
REFERENCES [dbo].[MstSchoolStreams] ([stream_id])
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[MstUsers] ([user_id])
GO
ALTER TABLE [dbo].[MstRoleGroups]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[MstUserRoles] ([role_id])
GO
ALTER TABLE [dbo].[MstUsers]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[MstUserRoles] ([role_id])
GO
ALTER TABLE [dbo].[ParentDocuments]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Parents] FOREIGN KEY([parent_id])
REFERENCES [dbo].[Parents] ([parent_id])
GO
ALTER TABLE [dbo].[ParentDocuments] CHECK CONSTRAINT [FK_Documents_Parents]
GO
ALTER TABLE [dbo].[SiblingInfo]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[AdmissionForms] ([form_id])
GO
ALTER TABLE [dbo].[StudentDocuments]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Students] FOREIGN KEY([student_id])
REFERENCES [dbo].[Students] ([student_id])
GO
ALTER TABLE [dbo].[StudentDocuments] CHECK CONSTRAINT [FK_Documents_Students]
GO
ALTER TABLE [dbo].[TeacherDocuments]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Teachers] FOREIGN KEY([teacher_id])
REFERENCES [dbo].[Teachers] ([teacher_id])
GO
ALTER TABLE [dbo].[TeacherDocuments] CHECK CONSTRAINT [FK_Documents_Teachers]
GO
