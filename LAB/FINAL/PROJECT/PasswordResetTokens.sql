CREATE TABLE [dbo].[PasswordResetTokens] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Email]      VARCHAR (100) NOT NULL,
    [Token]      VARCHAR (200) NOT NULL,
    [ExpiryDate] DATETIME      NOT NULL,
    [IsUsed]     BIT           DEFAULT ((0)) NOT NULL,
    [CreatedAt]  DATETIME      DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE NONCLUSTERED INDEX [IX_PasswordResetTokens_Email_Token]
    ON [dbo].[PasswordResetTokens]([Email] ASC, [Token] ASC);
