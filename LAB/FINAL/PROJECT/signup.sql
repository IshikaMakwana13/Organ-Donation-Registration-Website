CREATE TABLE [dbo].[signup] (
    [sid]       INT          IDENTITY (1, 1) NOT NULL,
    [user_name] VARCHAR (50) NOT NULL,
    [email]     VARCHAR (50) NOT NULL,
    [password]  VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([sid] ASC)
);
