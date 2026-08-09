CREATE TABLE [dbo].[organpatient] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [pf_name]       VARCHAR (20)  NOT NULL,
    [pm_name]       VARCHAR (20)  NOT NULL,
    [pl_name]       VARCHAR (20)  NOT NULL,
    [p_age]         INT           NOT NULL,
    [p_dob]         DATE          NOT NULL,
    [p_gender]      VARCHAR (20)  NOT NULL,
    [p_bloodgrp]    VARCHAR (20)  NOT NULL,
    [p_idetitycard] VARCHAR (20)  NOT NULL,
    [p_identityno]  VARCHAR (15)  NOT NULL,
    [p_add]         VARCHAR (150) NOT NULL,
    [p_email]       VARCHAR (30)  NOT NULL,
    [p_city]        VARCHAR (30)  NOT NULL,
    [p_district]    VARCHAR (30)  NOT NULL,
    [p_state]       VARCHAR (30)  NOT NULL,
    [p_pincode]     INT           NOT NULL,
    [p_mobileno]    BIGINT        NOT NULL,
    [p_occupation]  VARCHAR (50)  NOT NULL,
    [p_organ]       VARCHAR (500) NOT NULL,
    [emg_nmp]       VARCHAR (30)  NOT NULL,
    [emg_nop]       BIGINT        NOT NULL,
    [emg_addp]      VARCHAR (150) NOT NULL,
    [hear_p]        VARCHAR (80)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


