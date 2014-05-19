
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/19/2014 01:32:02
-- Generated from EDMX file: C:\Users\Eanghort\Dropbox\RUPP\Web Programming\ASP.Net\Education\ELearning\ELearning\Models\education.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Education];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SubjectID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbLessons] DROP CONSTRAINT [FK_SubjectID];
GO
IF OBJECT_ID(N'[dbo].[FK_UserAssignedRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbAssignedRoles] DROP CONSTRAINT [FK_UserAssignedRole];
GO
IF OBJECT_ID(N'[dbo].[FK_LessonAssignedRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbAssignedRoles] DROP CONSTRAINT [FK_LessonAssignedRole];
GO
IF OBJECT_ID(N'[dbo].[FK_UserAssignedRole1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbAssignedRoles] DROP CONSTRAINT [FK_UserAssignedRole1];
GO
IF OBJECT_ID(N'[dbo].[FK_LessonExercise]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbExercises] DROP CONSTRAINT [FK_LessonExercise];
GO
IF OBJECT_ID(N'[dbo].[FK_NewsFeedCategoryNewsFeed]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsFeeds] DROP CONSTRAINT [FK_NewsFeedCategoryNewsFeed];
GO
IF OBJECT_ID(N'[dbo].[FK_UserNewsFeed]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NewsFeeds] DROP CONSTRAINT [FK_UserNewsFeed];
GO
IF OBJECT_ID(N'[dbo].[FK_LessonQuiz]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbQuizs] DROP CONSTRAINT [FK_LessonQuiz];
GO
IF OBJECT_ID(N'[dbo].[FK_LessonSection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sections] DROP CONSTRAINT [FK_LessonSection];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscriberSubscriberDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbSubscriberDetails] DROP CONSTRAINT [FK_SubscriberSubscriberDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_NewsFeedSubscriberDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbSubscriberDetails] DROP CONSTRAINT [FK_NewsFeedSubscriberDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_UserTrackUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbTrackUsers] DROP CONSTRAINT [FK_UserTrackUser];
GO
IF OBJECT_ID(N'[dbo].[FK_SectionTrackUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbTrackUsers] DROP CONSTRAINT [FK_SectionTrackUser];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[tbSubjects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbSubjects];
GO
IF OBJECT_ID(N'[dbo].[tbLessons]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbLessons];
GO
IF OBJECT_ID(N'[dbo].[tbAssignedRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbAssignedRoles];
GO
IF OBJECT_ID(N'[dbo].[tbExercises]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbExercises];
GO
IF OBJECT_ID(N'[dbo].[NewsFeedCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsFeedCategories];
GO
IF OBJECT_ID(N'[dbo].[NewsFeeds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewsFeeds];
GO
IF OBJECT_ID(N'[dbo].[tbQuizs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbQuizs];
GO
IF OBJECT_ID(N'[dbo].[Sections]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sections];
GO
IF OBJECT_ID(N'[dbo].[tbSubscribers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbSubscribers];
GO
IF OBJECT_ID(N'[dbo].[tbSubscriberDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbSubscriberDetails];
GO
IF OBJECT_ID(N'[dbo].[tbTrackUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbTrackUsers];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Sex] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [DOB] datetime  NOT NULL,
    [UserType] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbSubjects'
CREATE TABLE [dbo].[tbSubjects] (
    [SubjectID] int IDENTITY(1,1) NOT NULL,
    [SubjectName] nvarchar(max)  NOT NULL,
    [Grade] tinyint  NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbLessons'
CREATE TABLE [dbo].[tbLessons] (
    [LessonID] int IDENTITY(1,1) NOT NULL,
    [LessonName] nvarchar(max)  NOT NULL,
    [SubjectID] int  NOT NULL,
    [LessonNumber] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbAssignedRoles'
CREATE TABLE [dbo].[tbAssignedRoles] (
    [UserID] int  NOT NULL,
    [LessonID] int  NOT NULL,
    [AssignedDate] datetime  NOT NULL,
    [AdminID] int  NOT NULL
);
GO

-- Creating table 'tbExercises'
CREATE TABLE [dbo].[tbExercises] (
    [ExerciseID] int IDENTITY(1,1) NOT NULL,
    [Exeercise] nvarchar(max)  NOT NULL,
    [AnswerKey] nvarchar(max)  NOT NULL,
    [Solution] tinyint  NOT NULL,
    [LessonID] int  NOT NULL
);
GO

-- Creating table 'NewsFeedCategories'
CREATE TABLE [dbo].[NewsFeedCategories] (
    [CategoryID] int IDENTITY(1,1) NOT NULL,
    [CategoryName] nvarchar(max)  NOT NULL,
    [Image] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NewsFeeds'
CREATE TABLE [dbo].[NewsFeeds] (
    [NewsFeedID] int IDENTITY(1,1) NOT NULL,
    [CategoryID] int  NOT NULL,
    [Level] int  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Topic] nvarchar(max)  NOT NULL,
    [Detail] nvarchar(max)  NOT NULL,
    [ContentFileName] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL,
    [UserID] int  NOT NULL
);
GO

-- Creating table 'tbQuizs'
CREATE TABLE [dbo].[tbQuizs] (
    [QuizID] int IDENTITY(1,1) NOT NULL,
    [QuizDetail] nvarchar(max)  NOT NULL,
    [Choice] nvarchar(max)  NOT NULL,
    [LessonID] int  NOT NULL
);
GO

-- Creating table 'Sections'
CREATE TABLE [dbo].[Sections] (
    [SectionID] int IDENTITY(1,1) NOT NULL,
    [SectionName] nvarchar(max)  NOT NULL,
    [LessonID] int  NOT NULL,
    [OrderNumber] int  NOT NULL,
    [ContentFileName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbSubscribers'
CREATE TABLE [dbo].[tbSubscribers] (
    [SubscriberID] int IDENTITY(1,1) NOT NULL,
    [SubscriberEmail] nvarchar(max)  NOT NULL,
    [PreferenceType] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbSubscriberDetails'
CREATE TABLE [dbo].[tbSubscriberDetails] (
    [SubscriberID] int  NOT NULL,
    [NewsFeedID] int  NOT NULL,
    [DateTime] datetime  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbTrackUsers'
CREATE TABLE [dbo].[tbTrackUsers] (
    [TrackUserID] int IDENTITY(1,1) NOT NULL,
    [UserID] int  NOT NULL,
    [SectionID] int  NOT NULL,
    [DataRecord] nvarchar(max)  NOT NULL,
    [ActivityType] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [SubjectID] in table 'tbSubjects'
ALTER TABLE [dbo].[tbSubjects]
ADD CONSTRAINT [PK_tbSubjects]
    PRIMARY KEY CLUSTERED ([SubjectID] ASC);
GO

-- Creating primary key on [LessonID] in table 'tbLessons'
ALTER TABLE [dbo].[tbLessons]
ADD CONSTRAINT [PK_tbLessons]
    PRIMARY KEY CLUSTERED ([LessonID] ASC);
GO

-- Creating primary key on [UserID], [LessonID] in table 'tbAssignedRoles'
ALTER TABLE [dbo].[tbAssignedRoles]
ADD CONSTRAINT [PK_tbAssignedRoles]
    PRIMARY KEY CLUSTERED ([UserID], [LessonID] ASC);
GO

-- Creating primary key on [ExerciseID] in table 'tbExercises'
ALTER TABLE [dbo].[tbExercises]
ADD CONSTRAINT [PK_tbExercises]
    PRIMARY KEY CLUSTERED ([ExerciseID] ASC);
GO

-- Creating primary key on [CategoryID] in table 'NewsFeedCategories'
ALTER TABLE [dbo].[NewsFeedCategories]
ADD CONSTRAINT [PK_NewsFeedCategories]
    PRIMARY KEY CLUSTERED ([CategoryID] ASC);
GO

-- Creating primary key on [NewsFeedID] in table 'NewsFeeds'
ALTER TABLE [dbo].[NewsFeeds]
ADD CONSTRAINT [PK_NewsFeeds]
    PRIMARY KEY CLUSTERED ([NewsFeedID] ASC);
GO

-- Creating primary key on [QuizID] in table 'tbQuizs'
ALTER TABLE [dbo].[tbQuizs]
ADD CONSTRAINT [PK_tbQuizs]
    PRIMARY KEY CLUSTERED ([QuizID] ASC);
GO

-- Creating primary key on [SectionID] in table 'Sections'
ALTER TABLE [dbo].[Sections]
ADD CONSTRAINT [PK_Sections]
    PRIMARY KEY CLUSTERED ([SectionID] ASC);
GO

-- Creating primary key on [SubscriberID] in table 'tbSubscribers'
ALTER TABLE [dbo].[tbSubscribers]
ADD CONSTRAINT [PK_tbSubscribers]
    PRIMARY KEY CLUSTERED ([SubscriberID] ASC);
GO

-- Creating primary key on [SubscriberID], [NewsFeedID] in table 'tbSubscriberDetails'
ALTER TABLE [dbo].[tbSubscriberDetails]
ADD CONSTRAINT [PK_tbSubscriberDetails]
    PRIMARY KEY CLUSTERED ([SubscriberID], [NewsFeedID] ASC);
GO

-- Creating primary key on [TrackUserID] in table 'tbTrackUsers'
ALTER TABLE [dbo].[tbTrackUsers]
ADD CONSTRAINT [PK_tbTrackUsers]
    PRIMARY KEY CLUSTERED ([TrackUserID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SubjectID] in table 'tbLessons'
ALTER TABLE [dbo].[tbLessons]
ADD CONSTRAINT [FK_SubjectID]
    FOREIGN KEY ([SubjectID])
    REFERENCES [dbo].[tbSubjects]
        ([SubjectID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectID'
CREATE INDEX [IX_FK_SubjectID]
ON [dbo].[tbLessons]
    ([SubjectID]);
GO

-- Creating foreign key on [UserID] in table 'tbAssignedRoles'
ALTER TABLE [dbo].[tbAssignedRoles]
ADD CONSTRAINT [FK_UserAssignedRole]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [LessonID] in table 'tbAssignedRoles'
ALTER TABLE [dbo].[tbAssignedRoles]
ADD CONSTRAINT [FK_LessonAssignedRole]
    FOREIGN KEY ([LessonID])
    REFERENCES [dbo].[tbLessons]
        ([LessonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LessonAssignedRole'
CREATE INDEX [IX_FK_LessonAssignedRole]
ON [dbo].[tbAssignedRoles]
    ([LessonID]);
GO

-- Creating foreign key on [AdminID] in table 'tbAssignedRoles'
ALTER TABLE [dbo].[tbAssignedRoles]
ADD CONSTRAINT [FK_UserAssignedRole1]
    FOREIGN KEY ([AdminID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserAssignedRole1'
CREATE INDEX [IX_FK_UserAssignedRole1]
ON [dbo].[tbAssignedRoles]
    ([AdminID]);
GO

-- Creating foreign key on [LessonID] in table 'tbExercises'
ALTER TABLE [dbo].[tbExercises]
ADD CONSTRAINT [FK_LessonExercise]
    FOREIGN KEY ([LessonID])
    REFERENCES [dbo].[tbLessons]
        ([LessonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LessonExercise'
CREATE INDEX [IX_FK_LessonExercise]
ON [dbo].[tbExercises]
    ([LessonID]);
GO

-- Creating foreign key on [CategoryID] in table 'NewsFeeds'
ALTER TABLE [dbo].[NewsFeeds]
ADD CONSTRAINT [FK_NewsFeedCategoryNewsFeed]
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[NewsFeedCategories]
        ([CategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewsFeedCategoryNewsFeed'
CREATE INDEX [IX_FK_NewsFeedCategoryNewsFeed]
ON [dbo].[NewsFeeds]
    ([CategoryID]);
GO

-- Creating foreign key on [UserID] in table 'NewsFeeds'
ALTER TABLE [dbo].[NewsFeeds]
ADD CONSTRAINT [FK_UserNewsFeed]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserNewsFeed'
CREATE INDEX [IX_FK_UserNewsFeed]
ON [dbo].[NewsFeeds]
    ([UserID]);
GO

-- Creating foreign key on [LessonID] in table 'tbQuizs'
ALTER TABLE [dbo].[tbQuizs]
ADD CONSTRAINT [FK_LessonQuiz]
    FOREIGN KEY ([LessonID])
    REFERENCES [dbo].[tbLessons]
        ([LessonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LessonQuiz'
CREATE INDEX [IX_FK_LessonQuiz]
ON [dbo].[tbQuizs]
    ([LessonID]);
GO

-- Creating foreign key on [LessonID] in table 'Sections'
ALTER TABLE [dbo].[Sections]
ADD CONSTRAINT [FK_LessonSection]
    FOREIGN KEY ([LessonID])
    REFERENCES [dbo].[tbLessons]
        ([LessonID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_LessonSection'
CREATE INDEX [IX_FK_LessonSection]
ON [dbo].[Sections]
    ([LessonID]);
GO

-- Creating foreign key on [SubscriberID] in table 'tbSubscriberDetails'
ALTER TABLE [dbo].[tbSubscriberDetails]
ADD CONSTRAINT [FK_SubscriberSubscriberDetail]
    FOREIGN KEY ([SubscriberID])
    REFERENCES [dbo].[tbSubscribers]
        ([SubscriberID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [NewsFeedID] in table 'tbSubscriberDetails'
ALTER TABLE [dbo].[tbSubscriberDetails]
ADD CONSTRAINT [FK_NewsFeedSubscriberDetail]
    FOREIGN KEY ([NewsFeedID])
    REFERENCES [dbo].[NewsFeeds]
        ([NewsFeedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NewsFeedSubscriberDetail'
CREATE INDEX [IX_FK_NewsFeedSubscriberDetail]
ON [dbo].[tbSubscriberDetails]
    ([NewsFeedID]);
GO

-- Creating foreign key on [UserID] in table 'tbTrackUsers'
ALTER TABLE [dbo].[tbTrackUsers]
ADD CONSTRAINT [FK_UserTrackUser]
    FOREIGN KEY ([UserID])
    REFERENCES [dbo].[Users]
        ([UserID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserTrackUser'
CREATE INDEX [IX_FK_UserTrackUser]
ON [dbo].[tbTrackUsers]
    ([UserID]);
GO

-- Creating foreign key on [SectionID] in table 'tbTrackUsers'
ALTER TABLE [dbo].[tbTrackUsers]
ADD CONSTRAINT [FK_SectionTrackUser]
    FOREIGN KEY ([SectionID])
    REFERENCES [dbo].[Sections]
        ([SectionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SectionTrackUser'
CREATE INDEX [IX_FK_SectionTrackUser]
ON [dbo].[tbTrackUsers]
    ([SectionID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------