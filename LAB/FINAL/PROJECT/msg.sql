CREATE TABLE [dbo].[msg] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [yr_nm]    VARCHAR (50)  NOT NULL,
    [yr_email] VARCHAR (50)  NOT NULL,
    [yr_msg]   VARCHAR (200) NOT NULL,
    [UId]      INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
);
