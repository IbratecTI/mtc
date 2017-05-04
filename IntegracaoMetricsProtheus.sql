-- =============================================
-- Nome da Tabela:	Usr_ZZ1010		
-- Descriçao:		Armazena os registros de cadastro de Clientes e Fornecedores no sistema Metrics para serem exportads
--					para a tabela ZZ1010 no Banco de Dados do Protheus.		
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:		
--						
--						
--						
-- =============================================
USE MT_Ibratec

GO

IF Object_id('[dbo].[Usr_ZZ1010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ1010]

GO

CREATE TABLE [dbo].[Usr_ZZ1010]
  (
     [Filial]     [VARCHAR](2) NOT NULL,
     [TPLan]      [VARCHAR](1) NOT NULL,
     [CodCli]     [VARCHAR](6) NOT NULL,
     [LojCli]     [VARCHAR](2) NOT NULL,
     [NomCli]     [VARCHAR](120) NOT NULL,
     [FanCli]     [VARCHAR](60) NOT NULL,
     [TipCli]     [VARCHAR](1) NOT NULL,
     [TipFor]     [VARCHAR](1) NOT NULL,
     [EndCli]     [VARCHAR](100) NOT NULL,
     [MunCli]     [VARCHAR](60) NOT NULL,
     [EstCli]     [VARCHAR](2) NOT NULL,
     [BaiCli]     [VARCHAR](60) NOT NULL,
     [CEPCli]     [VARCHAR](9) NOT NULL,
     [CGCCli]     [VARCHAR](18) NOT NULL,
     [DATCli]     [VARCHAR](8) NOT NULL,
     [INSCli]     [VARCHAR](15) NOT NULL,
     [CodMun]     [VARCHAR](5) NOT NULL,
     [CodPai]     [VARCHAR](5) NOT NULL,
     [Pessoa]     [VARCHAR](1) NOT NULL,
     [MoedaL]     [VARCHAR](1) NOT NULL,
     [TMPVis]     [VARCHAR](5) NOT NULL,
     [TMPSTD]     [VARCHAR](5) NOT NULL,
     [B2B]        [VARCHAR](5) NOT NULL,
     [Tel]        [VARCHAR](15) NOT NULL,
     [Vincul]     [VARCHAR](5) NOT NULL,
     [IDRep]      [VARCHAR](5) NOT NULL,
     [PLCRRE]     [VARCHAR](5) NOT NULL,
     [PLFil]      [VARCHAR](5) NOT NULL,
     [TipDoc]     [VARCHAR](1) NOT NULL,
     [ImpMet]     [VARCHAR](1) NOT NULL,
     [Versao]     [FLOAT] NOT NULL,
     [ContaC]     [VARCHAR](20) NOT NULL,
     [ContaF]     [VARCHAR](20) NOT NULL,
     [ContaC2]    [VARCHAR](20) NOT NULL,
     [ContaF2]    [VARCHAR](20) NOT NULL,
     [CTAADC]     [VARCHAR](20) NOT NULL,
     [CTAADF]     [VARCHAR](20) NOT NULL,
     [D_E_L_E_T_] [VARCHAR](1) NOT NULL,
     [StatusInt]  [INT] NOT NULL,
     [R_E_C_N_O_] [INT] IDENTITY(1, 1) NOT NULL,
     CONSTRAINT [ZZ1010_PK] PRIMARY KEY CLUSTERED ( [R_E_C_N_O_] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
  )
ON [PRIMARY]

GO

ALTER TABLE [dbo].[Usr_ZZ1010]
  ADD CONSTRAINT [DF_Usr_ZZ1010_StatusInt] DEFAULT ((0)) FOR [StatusInt]

GO

-- =============================================
-- Nome da Tabela:	Usr_ZZ4010		
-- Descriçao:		Armazena os registros de cadastro de Produtos no sistema Metrics para serem exportads
--					para a tabela ZZ4010 no Banco de Dados do Protheus.		
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:		
--						
--						
--						
-- =============================================
USE [MT_Ibratec]

GO

IF Object_id('[dbo].[Usr_ZZ4010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ4010]

GO

CREATE TABLE [dbo].[Usr_ZZ4010]
  (
     [Filial]     [VARCHAR](2) NULL,
     [Cod]        [VARCHAR](20) NOT NULL,
     [Descricao]  [VARCHAR](100) NULL,
     [LocPad]     [VARCHAR](2) NOT NULL,
     [UM]         [VARCHAR](2) NOT NULL,
     [Grupo]      [VARCHAR](4) NOT NULL,
     [PosIPI]     [VARCHAR](10) NOT NULL,
     [Tipo]       [VARCHAR](2) NOT NULL,
     [TipCon]     [VARCHAR](1) NOT NULL,
     [MCustD]     [VARCHAR](1) NOT NULL,
     [Apropr]     [VARCHAR](1) NOT NULL,
     [TipoDE]     [VARCHAR](1) NOT NULL,
     [Rastro]     [VARCHAR](1) NOT NULL,
     [MRP]        [VARCHAR](1) NOT NULL,
     [CodBar]     [VARCHAR](15) NOT NULL,
     [Locali]     [VARCHAR](1) NOT NULL,
     [Contra]     [VARCHAR](1) NOT NULL,
     [Import]     [VARCHAR](1) NOT NULL,
     [Anuent]     [VARCHAR](1) NOT NULL,
     [TipoCQ]     [VARCHAR](1) NOT NULL,
     [Solici]     [VARCHAR](1) NOT NULL,
     [INSS]       [VARCHAR](1) NOT NULL,
     [FlagSU]     [VARCHAR](1) NOT NULL,
     [ClassV]     [VARCHAR](1) NOT NULL,
     [Midia]      [VARCHAR](1) NOT NULL,
     [EnvoBR]     [VARCHAR](1) NOT NULL,
     [QtdSer]     [FLOAT] NOT NULL,
     [Ativo]      [VARCHAR](1) NOT NULL,
     [TipCNV]     [VARCHAR](1) NOT NULL,
     [CpoTen]     [VARCHAR](1) NOT NULL,
     [ImpMet]     [VARCHAR](1) NOT NULL,
     [Versao]     [INT] NOT NULL,
     [Conta]      [VARCHAR](20) NOT NULL,
     [Conta2]     [VARCHAR](20) NOT NULL,
     [D_E_L_E_T_] [VARCHAR](1) NOT NULL,
     [DtInclusao] [DATETIME] NOT NULL,
     [CodNew]     [VARCHAR](20) NOT NULL,
     [StatusInt]  [INT] NOT NULL,
     [R_E_C_N_O_] [INT] IDENTITY(1, 1) NOT NULL,
     CONSTRAINT [ZZ4010_PK] PRIMARY KEY CLUSTERED ( [R_E_C_N_O_] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
  )
ON [PRIMARY]

GO

ALTER TABLE [dbo].[Usr_ZZ4010]
  ADD CONSTRAINT [DF_Usr_ZZ4010_StatusInt] DEFAULT ((0)) FOR [StatusInt]

GO

-- =============================================
-- Nome da Tabela:	Usr_ZZ5010		
-- Descriçao:		Armazena os registros de Cabeçalhos de Notas Fiscais no sistema Metrics para serem exportads
--					para a tabela ZZ5010 no Banco de Dados do Protheus.		
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:		
--						
--						
--						
-- =============================================
USE [MT_Ibratec]

GO

/****** Object:  Table [dbo].[USR_ZZ5010]    Script Date: 04/05/2017 12:20:28 ******/
IF Object_id('[dbo].[Usr_ZZ5010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ5010]

GO

CREATE TABLE [dbo].[USR_ZZ5010]
  (
     [Filial]     [VARCHAR](2) NOT NULL,
     [TpLan]      [VARCHAR](1) NOT NULL,
     [NumDoc]     [VARCHAR](9) NOT NULL,
     [SerDoc]     [VARCHAR](3) NOT NULL,
     [CodCli]     [VARCHAR](6) NOT NULL,
     [Loja]       [VARCHAR](2) NOT NULL,
     [DatEmi]     [VARCHAR](8) NOT NULL,
     [EstDoc]     [VARCHAR](2) NOT NULL,
     [ValFre]     [VARCHAR](16) NOT NULL,
     [ValSeg]     [VARCHAR](16) NOT NULL,
     [ICMFre]     [VARCHAR](16) NOT NULL,
     [ValBru]     [VARCHAR](16) NOT NULL,
     [ValICM]     [VARCHAR](16) NOT NULL,
     [BasICM]     [VARCHAR](16) NOT NULL,
     [ValIPI]     [VARCHAR](16) NOT NULL,
     [BasIPI]     [VARCHAR](16) NOT NULL,
     [ValMer]     [VARCHAR](16) NOT NULL,
     [BasISS]     [VARCHAR](16) NOT NULL,
     [ValISS]     [VARCHAR](16) NOT NULL,
     [ValCSL]     [VARCHAR](16) NOT NULL,
     [ValDes]     [VARCHAR](16) NOT NULL,
     [CodCFO]     [VARCHAR](5) NOT NULL,
     [Observ]     [VARCHAR](30) NOT NULL,
     [Propri]     [VARCHAR](1) NOT NULL,
     [Tipo]       [VARCHAR](1) NOT NULL,
     [CampoA]     [VARCHAR](1) NOT NULL,
     [BasCOF]     [VARCHAR](16) NOT NULL,
     [ValCOF]     [VARCHAR](16) NOT NULL,
     [BasPIS]     [VARCHAR](16) NOT NULL,
     [ValPIS]     [VARCHAR](16) NOT NULL,
     [Cond]       [VARCHAR](3) NOT NULL,
     [TipoCL]     [VARCHAR](1) NOT NULL,
     [Especi]     [VARCHAR](5) NOT NULL,
     [ChvNfe]     [VARCHAR](44) NOT NULL,
     [DocSai]     [VARCHAR](9) NOT NULL,
     [SerSai]     [VARCHAR](3) NOT NULL,
     [ValDsc]     [VARCHAR](16) NOT NULL,
     [DatDig]     [VARCHAR](8) NOT NULL,
     [BasFre]     [VARCHAR](16) NOT NULL,
     [ValIRF]     [VARCHAR](16) NOT NULL,
     [NotOri]     [VARCHAR](6) NOT NULL,
     [SerOri]     [VARCHAR](3) NOT NULL,
     [BasINS]     [VARCHAR](16) NOT NULL,
     [ValINS]     [VARCHAR](16) NOT NULL,
     [ReduIC]     [VARCHAR](1) NOT NULL,
     [ReduIP]     [VARCHAR](1) NOT NULL,
     [DocEnt]     [VARCHAR](9) NOT NULL,
     [SerEnt]     [VARCHAR](3) NOT NULL,
     [OrigLa]     [VARCHAR](2) NOT NULL,
     [Status]     [VARCHAR](5) NOT NULL,
     [RecbMt]     [VARCHAR](8) NOT NULL,
     [TipLan]     [VARCHAR](1) NOT NULL,
     [TpFre]      [VARCHAR](1) NOT NULL,
     [ImpMet]     [VARCHAR](1) NOT NULL,
     [DtOcor]     [DATETIME] NOT NULL,
     [HrOcor]     [VARCHAR](20) NOT NULL,
     [D_E_L_E_T_] [VARCHAR](1) NOT NULL,
     [DtOcom]     [DATETIME] NOT NULL,
     [DtFat]      [DATETIME] NOT NULL,
     [Objid]      [FLOAT] NOT NULL,
     [CodSef]     [VARCHAR](3) NOT NULL,
     [RecSef]     [VARCHAR](50) NOT NULL,
     [StatusInt]  [INT] NOT NULL,
     [R_E_C_N_O_] [INT] IDENTITY(1, 1) NOT NULL,
     CONSTRAINT [ZZ5010_PK] PRIMARY KEY CLUSTERED ( [R_E_C_N_O_] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
  )
ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZZ5010]
  ADD CONSTRAINT [DF_USR_ZZ5010_StatusInt] DEFAULT ((0)) FOR [StatusInt]

GO

-- =============================================
-- Nome da Tabela:	Usr_ZZ3010		
-- Descriçao:		Armazena os registros de Itens de Notas Fiscais no sistema Metrics para serem exportads
--					para a tabela ZZ3010 no Banco de Dados do Protheus.		
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:		
--						
--						
--						
-- =============================================
USE [MT_Ibratec]

GO

IF Object_id('[dbo].[Usr_ZZ3010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ3010]

GO

CREATE TABLE [dbo].[USR_ZZ3010]
  (
     [Filial]     [VARCHAR](2) NOT NULL,
     [TpLan]      [VARCHAR](1) NOT NULL,
     [NumIte]     [VARCHAR](2) NOT NULL,
     [CodZer]     [VARCHAR](5) NOT NULL,
     [CodPro]     [VARCHAR](20) NOT NULL,
     [UniMed]     [VARCHAR](2) NOT NULL,
     [Qtdven]     [VARCHAR](16) NULL,
     [ValVen]     [VARCHAR](18) NOT NULL,
     [ValTot]     [VARCHAR](16) NOT NULL,
     [ValIPI]     [VARCHAR](16) NOT NULL,
     [ValICM]     [VARCHAR](16) NOT NULL,
     [Grupo]      [VARCHAR](4) NOT NULL,
     [Tp]         [VARCHAR](2) NOT NULL,
     [NumSeq]     [VARCHAR](6) NOT NULL,
     [OrigLa]     [VARCHAR](2) NOT NULL,
     [CodTes]     [VARCHAR](3) NOT NULL,
     [CodCFO]     [VARCHAR](5) NOT NULL,
     [PerDes]     [VARCHAR](7) NOT NULL,
     [PerIPI]     [VARCHAR](7) NOT NULL,
     [PerICM]     [VARCHAR](7) NOT NULL,
     [NumPed]     [VARCHAR](6) NOT NULL,
     [ItemPV]     [VARCHAR](2) NOT NULL,
     [CodCli]     [VARCHAR](6) NOT NULL,
     [Loja]       [VARCHAR](2) NOT NULL,
     [CodLoc]     [VARCHAR](2) NOT NULL,
     [DatEmi]     [VARCHAR](8) NOT NULL,
     [SerDoc]     [VARCHAR](3) NOT NULL,
     [TipDoc]     [VARCHAR](1) NOT NULL,
     [NumDoc]     [VARCHAR](9) NOT NULL,
     [EstDoc]     [VARCHAR](2) NOT NULL,
     [BasIPI]     [VARCHAR](16) NOT NULL,
     [BasICM]     [VARCHAR](16) NOT NULL,
     [TipICM]     [VARCHAR](1) NOT NULL,
     [TipIPI]     [VARCHAR](1) NOT NULL,
     [TipISS]     [VARCHAR](1) NOT NULL,
     [PosIPI]     [VARCHAR](8) NOT NULL,
     [SitTri]     [VARCHAR](3) NOT NULL,
     [ValDsc]     [VARCHAR](16) NOT NULL,
     [Descri]     [VARCHAR](60) NOT NULL,
     [CoCIAP]     [VARCHAR](1) NOT NULL,
     [CampoA]     [VARCHAR](1) NOT NULL,
     [BasCOF]     [VARCHAR](16) NOT NULL,
     [ValCOF]     [VARCHAR](16) NOT NULL,
     [AliCOF]     [VARCHAR](6) NOT NULL,
     [BasPIS]     [VARCHAR](16) NOT NULL,
     [ValPIS]     [VARCHAR](16) NOT NULL,
     [DatDig]     [VARCHAR](8) NOT NULL,
     [DocSai]     [VARCHAR](9) NOT NULL,
     [SerSai]     [VARCHAR](3) NOT NULL,
     [AliPis]     [VARCHAR](6) NOT NULL,
     [TipCom]     [VARCHAR](1) NOT NULL,
     [VarFre]     [VARCHAR](16) NOT NULL,
     [TipLan]     [VARCHAR](1) NOT NULL,
     [ImpMet]     [VARCHAR](1) NOT NULL,
     [DtOcor]     [DATETIME] NOT NULL,
     [CCusto]     [VARCHAR](9) NOT NULL,
     [Conta]      [VARCHAR](20) NOT NULL,
     [HrOcor]     [VARCHAR](20) NOT NULL,
     [NotOri]     [VARCHAR](9) NOT NULL,
     [SerOri]     [VARCHAR](3) NOT NULL,
     [D_E_L_E_T_] [VARCHAR](1) NOT NULL,
     [DtOCom]     [DATETIME] NOT NULL,
     [DtOFat]     [DATETIME] NOT NULL,
     [BrICMS]     [VARCHAR](16) NOT NULL,
     [ICMSRe]     [VARCHAR](16) NOT NULL,
     [BasISS]     [VARCHAR](16) NOT NULL,
     [AlqISS]     [VARCHAR](6) NOT NULL,
     [ValISS]     [VARCHAR](16) NOT NULL,
     [BasINS]     [VARCHAR](16) NOT NULL,
     [AlqINS]     [VARCHAR](6) NOT NULL,
     [ValINS]     [VARCHAR](16) NOT NULL,
     [BasIRF]     [VARCHAR](16) NOT NULL,
     [AlqIRF]     [VARCHAR](6) NOT NULL,
     [ValIRF]     [VARCHAR](16) NOT NULL,
     [AlqPIS]     [VARCHAR](6) NOT NULL,
     [AlqCOF]     [VARCHAR](6) NOT NULL,
     [BasCSL]     [VARCHAR](16) NOT NULL,
     [AlqCSL]     [VARCHAR](6) NOT NULL,
     [ValCSL]     [VARCHAR](16) NOT NULL,
     [BasIMS]     [VARCHAR](16) NOT NULL,
     [AlqIMS]     [VARCHAR](6) NOT NULL,
     [ValIMS]     [VARCHAR](16) NOT NULL,
     [BasIM6]     [VARCHAR](16) NOT NULL,
     [AlqIM6]     [VARCHAR](6) NOT NULL,
     [ValIM6]     [VARCHAR](16) NOT NULL,
     [ValDes]     [VARCHAR](16) NULL,
     [Objid]      [FLOAT] NOT NULL,
     [ObjidI]     [FLOAT] NOT NULL,
     [CodNew]     [VARCHAR](20) NULL,
     [IteOri]     [VARCHAR](4) NOT NULL,
     [StatusInt]  [INT] NOT NULL,
     [R_E_C_N_O_] [INT] IDENTITY(1, 1) NOT NULL,
     CONSTRAINT [ZZ3010_PK] PRIMARY KEY CLUSTERED ( [R_E_C_N_O_] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
  )
ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZZ3010]
  ADD CONSTRAINT [DF_USR_ZZ3010_StatusInt] DEFAULT ((0)) FOR [StatusInt]

GO

-- =============================================
-- Nome da Tabela:	Usr_ZR6010		
-- Descriçao:		Armazena os registros dos Rateios Financeiros das Notas do Compras no sistema Metrics para serem exportads
--					para a tabela ZR6010 no Banco de Dados do Protheus.		
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:		
--						
--						
--						
-- =============================================
USE [MT_Ibratec]

GO

IF Object_id('[dbo].[Usr_ZR6010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZR6010]

GO

CREATE TABLE [dbo].[USR_ZR6010]
  (
     [Filial]     [VARCHAR](2) NOT NULL,
     [Doc]        [VARCHAR](9) NOT NULL,
     [Serie]      [VARCHAR](3) NOT NULL,
     [Fornec]     [VARCHAR](6) NOT NULL,
     [Loja]       [VARCHAR](2) NOT NULL,
     [ItemNF]     [VARCHAR](50) NULL,
     [Item]       [VARCHAR](2) NOT NULL,
     [Perc]       [VARCHAR](10) NOT NULL,
     [CC]         [VARCHAR](9) NOT NULL,
     [Conta]      [VARCHAR](20) NOT NULL,
     [ItemCT]     [VARCHAR](9) NOT NULL,
     [CLVL]       [VARCHAR](9) NOT NULL,
     [Custo1]     [FLOAT] NOT NULL,
     [Custo2]     [FLOAT] NOT NULL,
     [Custo3]     [FLOAT] NOT NULL,
     [Custo4]     [FLOAT] NOT NULL,
     [Custo5]     [FLOAT] NOT NULL,
     [ImpMet]     [VARCHAR](1) NOT NULL,
     [DtOcorCom]  [DATETIME] NOT NULL,
     [HrOcor]     [VARCHAR](20) NULL,
     [D_E_L_E_T_] [VARCHAR](1) NOT NULL,
     [StatusInt]  [INT] NOT NULL,
     [R_E_C_N_O_] [INT] IDENTITY(1, 1) NOT NULL,
     CONSTRAINT [ZR6010_PK] PRIMARY KEY CLUSTERED ( [R_E_C_N_O_] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
  )
ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZR6010]
  ADD CONSTRAINT [DF_USR_ZR6010_StatusInt] DEFAULT ((0)) FOR [StatusInt]

GO

-- =============================================
-- Nome da Tabela:	Usr_ZI5010		
-- Descriçao:		Armazena os registros das Declarações de Importação do sistema Metrics para serem exportads
--					para a tabela ZI5010 no Banco de Dados do Protheus.		
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:		
--						
--						
--						
-- =============================================
USE [MT_Ibratec]

GO

IF Object_id('[dbo].[Usr_ZI5010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZI5010]

GO

USE [MT_Ibratec]

GO

CREATE TABLE [dbo].[USR_ZI5010]
  (
     [Filial]     [VARCHAR](2) NOT NULL,
     [Doc]        [VARCHAR](9) NOT NULL,
     [Serie]      [VARCHAR](3) NOT NULL,
     [Espec]      [VARCHAR](5) NOT NULL,
     [Fornec]     [VARCHAR](6) NOT NULL,
     [Loja]       [VARCHAR](2) NOT NULL,
     [TPImp]      [VARCHAR](1) NOT NULL,
     [DocImp]     [VARCHAR](50) NOT NULL,
     [BsPIS]      [FLOAT] NOT NULL,
     [AlPIS]      [FLOAT] NOT NULL,
     [VlPIS]      [FLOAT] NOT NULL,
     [BsCOF]      [FLOAT] NOT NULL,
     [AlCOF]      [FLOAT] NOT NULL,
     [VlCOF]      [FLOAT] NOT NULL,
     [ACDRAW]     [VARCHAR](20) NOT NULL,
     [DtPPIS]     [VARCHAR](8) NOT NULL,
     [DtPCOF]     [VARCHAR](8) NOT NULL,
     [Local]      [VARCHAR](1) NOT NULL,
     [NDI]        [VARCHAR](12) NOT NULL,
     [DtDI]       [VARCHAR](8) NOT NULL,
     [LocDes]     [VARCHAR](30) NOT NULL,
     [UFDes]      [VARCHAR](2) NOT NULL,
     [DtDes]      [VARCHAR](8) NOT NULL,
     [CodExp]     [VARCHAR](6) NOT NULL,
     [NaDic]      [VARCHAR](3) NOT NULL,
     [SQADic]     [VARCHAR](3) NOT NULL,
     [CodFab]     [VARCHAR](6) NOT NULL,
     [VdeSDI]     [FLOAT] NOT NULL,
     [BCImp]      [FLOAT] NOT NULL,
     [DsPAD]      [FLOAT] NOT NULL,
     [VlrII]      [FLOAT] NOT NULL,
     [VlrIOF]     [FLOAT] NOT NULL,
     [Item]       [VARCHAR](4) NOT NULL,
     [LojExp]     [VARCHAR](2) NOT NULL,
     [LojFab]     [VARCHAR](2) NOT NULL,
     [VTrans]     [VARCHAR](1) NOT NULL,
     [VaFRMM]     [FLOAT] NOT NULL,
     [Interm]     [VARCHAR](1) NOT NULL,
     [CNPJAE]     [VARCHAR](14) NOT NULL,
     [UFTerc]     [VARCHAR](2) NOT NULL,
     [D_E_L_E_T_] [VARCHAR](1) NOT NULL,
     [Objid]      [FLOAT] NOT NULL,
     [ObjidI]     [FLOAT] NOT NULL,
     [StatusInt]  [INT] NOT NULL,
     [R_E_C_N_O_] [INT] IDENTITY(1, 1) NOT NULL,
     CONSTRAINT [ZI5010_PK] PRIMARY KEY CLUSTERED ( [R_E_C_N_O_] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
  )
ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZI5010]
  ADD CONSTRAINT [DF_USR_ZI5010_StatusInt] DEFAULT ((0)) FOR [StatusInt]

GO

USE [MT_Ibratec]

GO

/****** Object:  StoredProcedure [dbo].[USR_SP_IntegraCliFor]    Script Date: 04/05/2017 13:53:41 ******/
SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 15/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de cadastro de Clientes e Fornecedores do 
--				Metrics "CRM_Clientes"  para a tabela de integração Local "Usr_ZZ1010"
-- =============================================
-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[USR_SP_IntegraCliFor]'
                  AND SPECIFIC_NAME = N'[dbo].[USR_SP_IntegraCliFor]')
  DROP PROCEDURE [dbo].[[USR_SP_IntegraCliFor]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integraclifor] (@cod    AS VARCHAR(20),
                                               @versao AS INT)
AS
    INSERT INTO USR_ZZ1010
                (Filial,
                 TPLan,
                 CodCli,
                 LojCli,
                 NomCli,
                 FanCli,
                 TipCli,
                 TipFor,
                 EndCli,
                 MunCli,
                 EstCli,
                 BaiCli,
                 CEPCli,
                 CGCCli,
                 DATCli,
                 INSCli,
                 CodMun,
                 CodPai,
                 Pessoa,
                 MoedaL,
                 TMPVis,
                 TMPSTD,
                 B2B,
                 Tel,
                 Vincul,
                 IDRep,
                 PLCRRE,
                 PLFil,
                 TipDoc,
                 ImpMet,
                 Versao,
                 ContaC,
                 ContaF,
                 ContaC2,
                 ContaF2,
                 CTAADC,
                 CTAADF,
                 D_E_L_E_T_)
    SELECT '01'                                                                                                                           AS FILIAL,
           '1'                                                                                                                            AS TPLAN,
           RIGHT('000000'
                 + CONVERT(VARCHAR, Crm_Clientes.CodCliente), 6)                                                                          AS CODCLIFOR,
           '01'                                                                                                                           AS LOJCLIFOR,
           CONVERT(VARCHAR(120), Isnull(Crm_Clientes.RazaoSocial, ''))                                                                    AS NOMCLIFOR,
           CONVERT(VARCHAR(60), Isnull(Crm_Clientes.Nome, 'N/T'))                                                                         AS FANCLIFOR,
           CONVERT(VARCHAR(1), LEFT(Isnull(Crm_Clientes.Usr_TIPO, 'R'), 1))                                                               AS TIPCLI,
           CONVERT(VARCHAR(1), LEFT(Isnull(Crm_Clientes.Usr_TIPOFORN, 'J'), 1))                                                           AS TIPFOR,
           CONVERT(VARCHAR(100), Isnull(Crm_Enderecos.Endereco, ''))                                                                      AS ENDCLIFOR,
           CONVERT(VARCHAR(60), Isnull(Crm_Enderecos.Cidade, ''))                                                                         AS MUNCLIFOR,
           CASE
             WHEN crmTCCountry.IdCountry <> 1 THEN 'EX'
             ELSE CONVERT(VARCHAR(2), Isnull(Crm_Enderecos.UF, ''))
           END                                                                                                                            ESTCLIFOR,
           CONVERT(VARCHAR(60), Isnull(Crm_Enderecos.Bairro, ''))                                                                         AS BAICLIFOR,
           Replace(CONVERT(VARCHAR(9), Isnull(Crm_Enderecos.CEP, '')), '-', '')                                                           AS CEPCLIFOR,
           CASE
             WHEN crmTCCountry.IdCountry <> 1 THEN ''
             ELSE Replace(Replace(Replace(Ltrim(Rtrim(CONVERT(VARCHAR(18), Isnull(Crm_Clientes.CGC, '')))), '.', ''), '/', ''), '-', '')
           END                                                                                                                            AS CGCCLIFOR,
           Substring(CONVERT(VARCHAR(10), Crm_Clientes.DtAlteracao, 103), 7, 4)
           + Substring(CONVERT(VARCHAR(10), Crm_Clientes.DtAlteracao, 103), 4, 2)
           + Substring(CONVERT(VARCHAR(10), Crm_Clientes.DtAlteracao, 103), 1, 2)                                                         AS DATCLIFOR,
           Replace (Replace(CONVERT(VARCHAR(18), Isnull(Crm_Clientes.InscEst, '')), '.', ''), '-', '')                                    AS INSCLIFOR,
           RIGHT (CONVERT(VARCHAR, Isnull(Crm_Enderecos.CodMunicipio, '')), 5)                                                            AS CODMUN,
           RIGHT ('00000'
                  + CONVERT(VARCHAR, Isnull(crmTCCountry.CountryCode, '01058')), 5)                                                       AS CODPAI,
           CASE
             WHEN Crm_Clientes.FisicaJuridica NOT IN ( 'F', 'J' ) THEN 'X'
             ELSE CONVERT(VARCHAR(1), LEFT(Isnull(Crm_Clientes.FisicaJuridica, 'J'), 1))
           END                                                                                                                            AS PESSOA,
           '2'                                                                                                                            AS MOEDALC,
           '00:00'                                                                                                                        AS TMPVIS,
           '00:00'                                                                                                                        AS TMPSTD,
           '2'                                                                                                                            AS B2B,
           Replace(Replace(Replace(Replace(CONVERT(VARCHAR(15), Isnull(Crm_Clientes.Telefone, '')), '(', ''), ')', ''), '-', ''), ' ', '')AS TEL,
           '1'                                                                                                                            AS VINCULA,
           '2'                                                                                                                            AS ID_REPR,
           'N'                                                                                                                            AS PLCRRES,
           'N'                                                                                                                            AS PLFIL,
           Isnull(Crm_clientes.TipoRegistro, 'A')                                                                                         AS TIPDOC,
           CASE
             WHEN Isnull(Crm_Clientes.Status, '') = 'A' THEN '1'
             WHEN Isnull(Crm_Clientes.Status, '') = 'I' THEN '2'
           END                                                                                                                            AS IMPMET,
           Crm_clientes.Version                                                                                                           AS VERSAO,
           LEFT(Isnull(Crm_Clientes.Usr_ContaContabilCliente, ''), 9)                                                                     AS CCONTAC,
           LEFT(Isnull(Crm_Clientes.Usr_ContaContabilFornecedor, ''), 9)                                                                  AS CCONTAF,
           ''                                                                                                                             CCONTAC2,
           ''                                                                                                                             CCONTAF2,
           Isnull(LEFT(Crm_Clientes.usr_contacontabildevcli, 9), '')                                                                      AS CTAADC,
           Isnull(LEFT(Crm_Clientes.usr_contacontabiladiantfor, 9), '')                                                                   AS CTAADF,
           ''                                                                                                                             AS D_E_L_E_T_
    FROM   Crm_Clientes WITH (NOLOCK)
           LEFT JOIN Crm_Enderecos
                  ON Crm_Enderecos.ObjId_Cliente = Crm_Clientes.ObjId
                     AND Crm_Enderecos.Faturamento = 'S'
           LEFT JOIN crmTCCountry
                  ON crmTCCountry.IdCountry = Crm_Enderecos.CodPais
    WHERE  Crm_Clientes.CodCliente = @cod
           AND Crm_Clientes.Version = @versao

GO

USE [MT_Ibratec]

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 15/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de cadastro de Produtos do Metrics "ItensEstoque" 
-- para a tabela de integração Local "Usr_ZZ4010"
-- =============================================
-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraProdutos]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraProdutos]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraProdutos]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integraprodutos](@cod    AS VARCHAR(20),
                                                @versao AS INT)
AS
    INSERT INTO USR_ZZ4010
                (Filial,
                 Cod,
                 Descricao,
                 LocPad,
                 UM,
                 Grupo,
                 PosIPI,
                 Tipo,
                 TipCon,
                 MCustD,
                 Apropr,
                 TipoDE,
                 Rastro,
                 MRP,
                 CodBar,
                 Locali,
                 Contra,
                 Import,
                 Anuent,
                 TipoCQ,
                 Solici,
                 INSS,
                 FlagSU,
                 ClassV,
                 Midia,
                 EnvoBR,
                 QtdSer,
                 Ativo,
                 TipCNV,
                 CpoTen,
                 ImpMet,
                 Versao,
                 Conta,
                 Conta2,
                 D_E_L_E_T_,
                 DtInclusao,
                 CodNew)
    SELECT '01'                                                                                                                  AS FILIAL,
           RIGHT('00000000000000000000'
                 + CONVERT(VARCHAR, Isnull(Rtrim(Upper(ItensEstoque.CodItem)), '')), 20) COLLATE sql_latin1_general_cp1251_ci_as AS CODPRO,
           CONVERT(VARCHAR(100), ItensEstoque.descricao)                                                                         AS DESCR,
           '01'                                                                                                                  AS LOCPAD,
           CONVERT(VARCHAR(2), Isnull(ItensEstoque.UnidadeEst, ''))                                                              AS UM,
           CONVERT(VARCHAR(4), Isnull(EstGruposMateriais.CodigoExterno, ''))                                                     AS GRUPO,
           CONVERT(VARCHAR(8), Replace(Isnull(ItensEstoque.ClassificacaoFiscal, ''), '.', ''))                                   AS POSIPI,
           CASE
             WHEN ItensEstoque.TipoItemSped = '00' THEN 'ME'
             WHEN ItensEstoque.TipoItemSped = '01' THEN 'MP'
             WHEN ItensEstoque.TipoItemSped = '02' THEN 'EM'
             WHEN ItensEstoque.TipoItemSped = '03' THEN 'PP'
             WHEN ItensEstoque.TipoItemSped = '04' THEN 'PA'
             WHEN ItensEstoque.TipoItemSped = '05' THEN 'SP'
             WHEN ItensEstoque.TipoItemSped = '06' THEN 'PI'
             WHEN ItensEstoque.TipoItemSped = '07'
                  AND ItensEstoque.TipoDeMaterial NOT IN ( '0062', 'UNIF' ) THEN 'MC'
             WHEN ItensEstoque.TipoItemSped = '08' THEN 'AI'
             WHEN ItensEstoque.TipoItemSped = '09' THEN 'SV'
             WHEN ItensEstoque.TipoItemSped = '10' THEN 'OI'
             WHEN ItensEstoque.TipoDeMaterial IN ( '0062', 'UNIF' ) THEN 'GN'
             ELSE ''
           END                                                                                                                   AS TIPO,
           'M'                                                                                                                   AS TIPCON,
           '1'                                                                                                                   AS MCUSTD,
           'D'                                                                                                                   AS APROPR,
           'N'                                                                                                                   AS TIPODEC,
           'N'                                                                                                                   AS RASTRO,
           'S'                                                                                                                   AS MRP,
           '0'                                                                                                                   AS CODBAR,
           'N'                                                                                                                   AS LOCALIZ,
           'N'                                                                                                                   AS CONTRAT,
           'N'                                                                                                                   AS IMPORT,
           '2'                                                                                                                   AS ANUENT,
           'M'                                                                                                                   AS TIPOCQ,
           'N'                                                                                                                   AS SOLICIT,
           'N'                                                                                                                   AS INSS,
           '1'                                                                                                                   AS FLAGSUG,
           '1'                                                                                                                   AS CLASSVE,
           '2'                                                                                                                   AS MIDIA,
           '0'                                                                                                                   AS ENVOBR,
           Cast(1 AS FLOAT)                                                                                                      AS QTDSER,
           CONVERT(VARCHAR(1), ItensEstoque.Status)                                                                              AS ATIVO,
           'M'                                                                                                                   AS TIPCONV,
           '2'                                                                                                                   AS CPOTENC,
           '1'                                                                                                                   IMPMET,
           ItensEstoque.Version                                                                                                  AS VERSAO,
           --convert(varchar(2),isnull(EstClassificacaoFiscal.Aliquota,'')) as ALIQIPI,
           Isnull(PCIE.Codigo, Isnull(PCGM.Codigo, Isnull(PCMGM.Codigo, '')))                                                    CONTA,
           Isnull(PCEIE.Codigo, Isnull(PCEGM.Codigo, Isnull(PCEMGM.Codigo, '')))                                                 CONTA2,
           ''                                                                                                                    AS D_E_L_E_T_,
           Getdate()                                                                                                             AS DTINCLUSAO,
           CONVERT(VARCHAR(20), ItensEstoque.CodItem)                                                                            AS CODNEW
    FROM   ItensEstoque WITH (NOLOCK)
           LEFT JOIN CTBPlanoContabil PCIE
                  ON PCIE.Codigo = LEFT(ItensEstoque.usr_contacredito, 9)
           LEFT JOIN EstlocaisEstoque WITH (NOLOCK)
                  ON itensestoque.Objidlocalestoquepadrao = Estlocaisestoque.objid
           LEFT JOIN EstGruposMateriais WITH (NOLOCK)
                  ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
           LEFT JOIN CTBPlanoContabil PCGM
                  ON PCGM.ObjId = EstGruposMateriais.ObjIdCtContabil
           INNER JOIN EstMasterGruposMateriais
                   ON EstMasterGruposMateriais.CodGrupo = EstGruposMateriais.MasterGrupo
           LEFT JOIN CTBPlanoContabil PCMGM
                  ON PCMGM.ObjId = EstMasterGruposMateriais.ObjIdCtContabil
           LEFT JOIN CTBPlanoContabilEmpresa PCEIE
                  ON PCEIE.ObjId_CTBPlanoContabilOrigem = PCIE.ObjId
                     AND PCEIE.codempresa = 2
           LEFT JOIN CTBPlanoContabilEmpresa PCEGM
                  ON PCEGM.ObjId_CTBPlanoContabilOrigem = PCGM.ObjId
                     AND PCEGM.CodEmpresa = 2
           LEFT JOIN CTBPlanoContabilEmpresa PCEMGM
                  ON PCEMGM.ObjId_CTBPlanoContabilOrigem = PCMGM.ObjId
                     AND PCEMGM.CodEmpresa = 2
           LEFT JOIN EstClassificacaoFiscal
                  ON EstClassificacaoFiscal.Codigo = ItensEstoque.ClassificacaoFiscal
    WHERE  ItensEstoque.CodItem = @cod
           AND ItensEstoque.Version = @versao
    UNION
    SELECT '01'                                                                                                                  AS FILIAL,
           RIGHT('00000000000000000000' + 'I'
                 + CONVERT(VARCHAR, Isnull(Rtrim(Upper(ItensEstoque.CodItem)), '')), 20) COLLATE sql_latin1_general_cp1251_ci_as AS CODPRO,
           CONVERT(VARCHAR(100), ItensEstoque.descricao)                                                                         AS DESCR,
           '01'                                                                                                                  AS LOCPAD,
           CONVERT(VARCHAR(2), Isnull(ItensEstoque.UnidadeEst, ''))                                                              AS UM,
           CONVERT(VARCHAR(4), Isnull(EstGruposMateriais.CodigoExterno, ''))                                                     AS GRUPO,
           CONVERT(VARCHAR(8), Replace(Isnull(ItensEstoque.ClassificacaoFiscal, ''), '.', ''))                                   AS POSIPI,
           'PI'                                                                                                                  AS TIPO,
           'M'                                                                                                                   AS TIPCON,
           '1'                                                                                                                   AS MCUSTD,
           'D'                                                                                                                   AS APROPR,
           'N'                                                                                                                   AS TIPODEC,
           'N'                                                                                                                   AS RASTRO,
           'S'                                                                                                                   AS MRP,
           '0'                                                                                                                   AS CODBAR,
           'N'                                                                                                                   AS LOCALIZ,
           'N'                                                                                                                   AS CONTRAT,
           'N'                                                                                                                   AS IMPORT,
           '2'                                                                                                                   AS ANUENT,
           'M'                                                                                                                   AS TIPOCQ,
           'N'                                                                                                                   AS SOLICIT,
           'N'                                                                                                                   AS INSS,
           '1'                                                                                                                   AS FLAGSUG,
           '1'                                                                                                                   AS CLASSVE,
           '2'                                                                                                                   AS MIDIA,
           '0'                                                                                                                   AS ENVOBR,
           Cast(1 AS FLOAT)                                                                                                      AS QTDSER,
           CONVERT(VARCHAR(1), ItensEstoque.Status)                                                                              AS ATIVO,
           'M'                                                                                                                   AS TIPCONV,
           '2'                                                                                                                   AS CPOTENC,
           '1'                                                                                                                   IMPMET,
           ItensEstoque.Version                                                                                                  AS VERSAO,
           --convert(varchar(2),isnull(EstClassificacaoFiscal.Aliquota,'')) as ALIQIPI,
           Isnull(PCGM.Codigo, Isnull(PCMGM.Codigo, '113140001'))                                                                CONTA,
           Isnull(PCEGM.Codigo, Isnull(PCEMGM.Codigo, '113140002'))                                                              CONTA2,
           ''                                                                                                                    AS D_E_L_E_T_,
           Getdate()                                                                                                             AS DTINCLUSAO,
           'I'
           + CONVERT(VARCHAR(20), ItensEstoque.CodItem)                                                                          AS CODNEW
    FROM   ItensEstoque WITH (NOLOCK)
           LEFT JOIN CTBPlanoContabil PCIE
                  ON PCIE.Codigo = LEFT(ItensEstoque.usr_contacredito, 9)
           LEFT JOIN EstlocaisEstoque WITH (NOLOCK)
                  ON itensestoque.Objidlocalestoquepadrao = Estlocaisestoque.objid
           LEFT JOIN EstGruposMateriais WITH (NOLOCK)
                  ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
           LEFT JOIN CTBPlanoContabil PCGM
                  ON PCGM.ObjId = EstGruposMateriais.ObjIdCtContabil
                     AND PCGM.codigo = '113140001'
           INNER JOIN EstMasterGruposMateriais
                   ON EstMasterGruposMateriais.CodGrupo = EstGruposMateriais.MasterGrupo
           LEFT JOIN CTBPlanoContabil PCMGM
                  ON PCMGM.ObjId = EstMasterGruposMateriais.ObjIdCtContabil
                     AND PCMGM.codigo = '113140001'
           LEFT JOIN CTBPlanoContabilEmpresa PCEIE
                  ON PCEIE.ObjId_CTBPlanoContabilOrigem = PCIE.ObjId
                     AND PCEIE.codempresa = 2
           LEFT JOIN CTBPlanoContabilEmpresa PCEGM
                  ON PCEGM.ObjId_CTBPlanoContabilOrigem = PCGM.ObjId
                     AND PCEGM.CodEmpresa = 2
           LEFT JOIN CTBPlanoContabilEmpresa PCEMGM
                  ON PCEMGM.ObjId_CTBPlanoContabilOrigem = PCMGM.ObjId
                     AND PCEMGM.CodEmpresa = 2
           LEFT JOIN EstClassificacaoFiscal
                  ON EstClassificacaoFiscal.Codigo = ItensEstoque.ClassificacaoFiscal
    WHERE  ItensEstoque.TipoDeItem = 'A'
           AND ItensEstoque.CodItem = @cod
           AND ItensEstoque.Version = @versao

GO

USE [MT_Ibratec]

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 15/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de Cabeçalho de Notas Fiscais de Saída e Entrada
--				Metrics "NotasFiscais, EstNotasFiscaisEntrada"  para a tabela de integração Local "Usr_ZZ5010"
-- =============================================
-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraNotasFiscais]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraNotasFiscais]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraNotasFiscais]

GO

ALTER PROCEDURE [dbo].[Usr_sp_integranotasfiscais]
AS
    DECLARE @dtocorFat DATETIME
    DECLARE @dtocorCom DATETIME
    -- Declaração das Variaveis
    DECLARE @dtFechamentoMatriz CHAR(8)
    DECLARE @dtFechamentoFilial CHAR(8)

    -- Atribuindo a data do ultimo fechamento as variaveis
    SET @dtFechamentoMatriz = (SELECT Max(ZBL_BLQMOV)
                               FROM   [P11P01].Protheus11.dbo.ZBL010
                               WHERE  ZBL_DTALT = (SELECT Max(ZBL_DTALT)
                                                   FROM   [P11P01].Protheus11.dbo.ZBL010
                                                   WHERE  ZBL_FILIAL = 01))
    SET @dtFechamentoFilial = (SELECT Max(ZBL_BLQMOV)
                               FROM   [P11P01].Protheus11.dbo.ZBL010
                               WHERE  ZBL_DTALT = (SELECT Max(ZBL_DTALT)
                                                   FROM   [P11P01].Protheus11.dbo.ZBL010
                                                   WHERE  ZBL_FILIAL = 02))

    DECLARE xeventos CURSOR local FOR
      SELECT Isnull(Max(USR_ZZ5010.DtFat), '1899-12-31') dtocorFat
      FROM   USR_ZZ5010
      WHERE  D_E_L_E_T_ <> '*'

    OPEN xeventos;

    FETCH next FROM xeventos INTO @dtocorFat

    WHILE @@FETCH_STATUS = 0
      BEGIN
          BEGIN
              INSERT INTO USR_ZZ5010
                          (Filial,
                           TpLan,
                           NumDoc,
                           SerDoc,
                           CodCli,
                           Loja,
                           DatEmi,
                           EstDoc,
                           ValFre,
                           ValSeg,
                           ICMFre,
                           ValBru,
                           ValICM,
                           BasICM,
                           ValIPI,
                           BasIPI,
                           ValMer,
                           BasISS,
                           ValISS,
                           ValCSL,
                           ValDes,
                           CodCFO,
                           Observ,
                           Propri,
                           Tipo,
                           CampoA,
                           BasCOF,
                           ValCOF,
                           BasPIS,
                           ValPIS,
                           Cond,
                           TipoCL,
                           Especi,
                           ChvNfe,
                           DocSai,
                           SerSai,
                           ValDsc,
                           DatDig,
                           BasFre,
                           ValIRF,
                           NotOri,
                           SerOri,
                           BasINS,
                           ValINS,
                           ReduIC,
                           ReduIP,
                           DocEnt,
                           SerEnt,
                           OrigLa,
                           Status,
                           RecbMt,
                           TipLan,
                           TpFre,
                           ImpMet,
                           DtOcor,
                           HrOcor,
                           D_E_L_E_T_,
                           DtOcom,
                           DtFat,
                           Objid,
                           CodSef,
                           RecSef)
              SELECT DISTINCT CASE
                                WHEN NotasFiscais.CodEmpresa = '122' THEN '03'
                                ELSE RIGHT('0'
                                           + CONVERT(VARCHAR(2), Isnull(NotasFiscais.CodEmpresa, '')), 2)
                              END                                                                                   AS FILIAL,
                              CONVERT(VARCHAR(1), '1')                                                              AS TIPPLAN,
                              RIGHT('000000000'
                                    + CONVERT(VARCHAR, NotasFiscais.NumNota), 9)                                    AS NUMDOC,
                              CONVERT(VARCHAR(3), Isnull(LEFT(NotasFiscais.SerieNota, 3), ''))                      AS SERDOC,
                              RIGHT('000000'
                                    + CONVERT(VARCHAR, NotasFiscais.codcliente), 6)                                 AS CODCLIFOR,
                              CONVERT(VARCHAR(2), '01')                                                             AS LOJA,
                              Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2)                AS DATEMI,
                              CONVERT(VARCHAR(2), Isnull(NotasFiscais.UF, ''))                                      AS ESTDOC,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValFrete)), 0)       AS VALFRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValSeguro)), 0)      AS VALSEG,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValorICMSTran)), 0)  AS ICMFRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(15, 2), NotasFiscais.ValorTotalNota)), 0) AS VALBRU,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValTotalICMS)), 0)   AS VALICM,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValBaseClICMS)), '') AS BASEICM,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValTotalIPI)), 0)    AS VALIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.BASIPI)), '')            AS BASIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValorProdutos)), 0)  AS VALMER,
                              CONVERT(VARCHAR(16), '0')                                                             AS BASISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValTotalISS)), 0)    AS VALISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.TotalCSSL)), 0)      AS VALCSL,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), NotasFiscais.ValOutrasDes)), 0)   AS VALDES,
                              CASE
                                WHEN NotasFiscais.cfop1 IN ( '.', '0000' ) THEN '1000'
                                ELSE LEFT(Replace(Isnull(NotasFiscais.cfop1, ''), '.', ''), 4)
                              END                                                                                   AS CODCFO,
                              CONVERT(VARCHAR(30), Isnull(LEFT(NotasFiscais.Comentario, 30), ''))                   AS OBSERV,
                              CONVERT(VARCHAR(1), 'S')                                                              AS PROPRI,
                              CASE
                                WHEN CFOP.Devolucao = 'S'
                                     AND CFOP.TpOperacaoBenef NOT IN ( 1 )
                                     AND NotasFiscais.cfop1 NOT IN ( '1.916', '2.916' ) THEN 'D'
                                WHEN NotasFiscais.cfop1 IN ( '1.916', '2.916', '1.902', '2.902' ) THEN 'N'
                                WHEN CFOP.TpOperacaoBenef = 1 THEN 'B'
                                WHEN CFOP.FinalidadeOperacaoNFE = 2
                                     AND ItemNota.ValorIPI_INT > 0 THEN 'P'
                                WHEN CFOP.FinalidadeOperacaoNFE = 2
                                     AND ItemNota.ValorICMS_INT > 0 THEN 'I'
                                WHEN CFOP.FinalidadeOperacaoNFE = 2
                                     AND ItemNota.ValorTotal > 0 THEN 'C'
                                WHEN CFOP.CreditoICMS = 'S' THEN 'I'
                                ELSE 'N'
                              END                                                                                   AS TIPO,
                              CONVERT(VARCHAR(1), '1')                                                              AS CAMPOA,
                              0                                                                                     AS BASCOF,
                              0                                                                                     AS VALCOF,
                              0                                                                                     AS BASPIS,
                              0                                                                                     AS VALPIS,
                              --isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.BASCOF)),'') as BASCOF,
                              --isnull(convert(varchar(16),convert(decimal(14,2),NotasFiscais.TotalCOFINS)),0) as VALCOF,
                              --isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.BASPIS)),'') as BASPIS,
                              --isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.VALPIS)),0) as VALPIS,
                              '001'                                                                                 AS COND,
                              CONVERT(VARCHAR(1), '1')                                                              AS TIPOCL,
                              CASE
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 1 THEN 'NF'
                                WHEN NotasFiscais.ModeloFiscal = 55 THEN 'NFE'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 10 THEN 'CA'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 11 THEN 'CTF'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 2 THEN 'NFCF'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 20 THEN 'OCC'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 21 THEN 'NFCF'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 24 THEN 'NTST'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 57 THEN 'CTE'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 6 THEN 'NFCEE'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 7 THEN 'NFST'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 8 THEN 'CTR'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 9 THEN 'CTA'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 58 THEN 'NFS'
                                WHEN Isnull(NotasFiscais.ModeloFiscal, '') = 59 THEN 'NFSE'
                                ELSE ''
                              END                                                                                   AS ESPECI,
                              CONVERT(VARCHAR(44), Isnull(LEFT(Nfe.AccessKey, 44), ''))                             AS CHVNFE,
                              CONVERT(VARCHAR(9), Isnull(NotasFiscais.NumNota, ''))                                 AS DOCSAI,
                              CONVERT(VARCHAR(3), Isnull(LEFT(NotasFiscais.SerieNota, 3), ''))                      AS SERSAI,
                              CONVERT(VARCHAR(16), Isnull(ItemNota.VALDSC, 0))                                      AS VALDSC,
                              Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)                          AS DATDIG,
                              CONVERT(VARCHAR(16), '0')                                                             AS BASEFRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.VALIR)), 0)              AS VALIRF,
                              ''                                                                                    AS NOTORI,
                              ''                                                                                    AS SERORI,
                              CONVERT(VARCHAR(16), '0')                                                             AS BASINS,
                              CONVERT(VARCHAR(16), '0')                                                             AS VALINS,
                              CONVERT(VARCHAR(1), '0')                                                              AS REDUICM,
                              CONVERT(VARCHAR(1), '0')                                                              AS REDUIP,
                              CONVERT(VARCHAR(9), '0')                                                              AS DOCENT,
                              CONVERT(VARCHAR(3), '0')                                                              AS SERENT,
                              CONVERT(VARCHAR(2), 'NF')                                                             AS ORIGLA,
                              CONVERT(VARCHAR(5), '')                                                               AS STATUS,
                              CONVERT(VARCHAR(8), '')                                                               AS RECBMNT,
                              CONVERT(VARCHAR(1), '1')                                                              AS TPPLAN,
                              CONVERT(VARCHAR(1), CASE
                                                    WHEN Isnull(NotasFiscais.PgtoFrete, '') = 3 THEN 9
                                                    ELSE Isnull(NotasFiscais.PgtoFrete, '')
                                                  END)                                                              AS TPFRETE,
                              CASE
                                WHEN Isnull(LogMsgs.Texto, '') = 'NF Processada' THEN '1'
                                WHEN Isnull(LogMsgs.Texto, '') = 'Cancelado' THEN '2'
                                ELSE ''
                              END                                                                                   AS IMPMET,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                  AS DTOCOR,
                              Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 7, 2)                          AS HROCOR,
                              CONVERT(VARCHAR(1), '')                                                               AS D_E_L_E_T,
                              '1899-12-31'                                                                          AS DTOCORCOM,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                  AS DTOCORFAT,
                              NotasFiscais.ObjID,
                              ''                                                                                    CODSEF,
                              ''                                                                                    RECSEF
              FROM   NotasFiscais WITH (NOLOCK)
                     INNER JOIN (SELECT ItemNota.ObjID_Nota,
                                        Sum(Isnull(ItemNota.baseimpcofins, 0)) AS BASCOF,
                                        Sum(Isnull(ItemNota.baseimppis, 0))    AS BASPIS,
                                        Sum(Isnull(Itemnota.valorimppis, 0))   AS VALPIS,
                                        Sum(Isnull(ItemNota.Desconto, 0))      AS VALDSC,
                                        Sum(Isnull(Itemnota.ValorIR, 0))       AS VALIR,
                                        Sum(Isnull(Itemnota.BaseIPI, 0))       AS BASIPI,
                                        Sum(Isnull(Itemnota.ValorIPI_INT, 0))  AS ValorIPI_INT,
                                        Sum(Isnull(ItemNota.ValorICMS_INT, 0)) AS ValorICMS_INT,
                                        Sum(Isnull(ItemNota.ValorTotal, 0))    AS ValorTotal
                                 FROM   ItemNota WITH (NOLOCK)
                                 GROUP  BY ItemNota.ObjID_Nota)ItemNota
                             ON ItemNota.ObjID_Nota = NotasFiscais.ObjID
                     LEFT JOIN (SELECT DISTINCT nfiTMTransaction.NumNota,
                                                nfiTMTransaction.accesskey,
                                                nfiTMTransaction.Status,
                                                nfiTMTransaction.Operation
                                FROM   nfiTMTransaction WITH (NOLOCK)
                                WHERE  nfiTMTransaction.Status IN( 4, 5 ))nfe
                            ON nfe.NumNota = NotasFiscais.NumNota
                     LEFT JOIN (SELECT idobj,
                                       dtocor,
                                       Texto
                                FROM   LogMsgs WITH (NOLOCK)
                                WHERE  Texto IN ( 'NF Processada', 'Cancelado' )
                                       AND Entidade = 'NF.SAIDA')LogMsgs
                            ON LogMsgs.IdObj = NotasFiscais.ObjID
                               AND ( ( LogMsgs.Texto = 'NF Processada'
                                       AND nfe.Operation = 0 )
                                      OR ( LogMsgs.Texto = 'Cancelado'
                                           AND nfe.operation = 1 )
                                      OR ( LogMsgs.Texto = 'Cancelado'
                                           AND nfe.Operation = 2 ) )
                     LEFT JOIN CFOP
                            ON CFOP.cfop = NotasFiscais.cfop1
                     LEFT JOIN (SELECT NotasFiscais.Numnota,
                                       fatdevolucaoitemnota.objidnotadevolucao,
                                       NotasFiscais.SerieNota
                                FROM   NotasFiscais
                                       INNER JOIN fatdevolucaoitemnota
                                               ON fatdevolucaoitemnota.objidnotadevolvida = NotasFiscais.objid)NfDev
                            ON NfDev.objidnotadevolucao = NotasFiscais.ObjID
              WHERE  LogMsgs.DtOcor > @dtocorFat
                     AND LogMsgs.DtOcor >= '2014-12-01'
                     AND ( ( NotasFiscais.CodEmpresa = 01
                             AND Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                                 + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                                 + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2) > @dtFechamentoMatriz )
                            OR ( NotasFiscais.CodEmpresa = 02
                                 AND Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2) > @dtFechamentofilial )
                            OR ( NotasFiscais.CodEmpresa = 122
                                 AND Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2) > @dtFechamentofilial ) )
          END

          FETCH next FROM xeventos INTO @dtocorFat
      END

    CLOSE xeventos

    DEALLOCATE xeventos

    --Carregando Notas emitidas no Compras	
    DECLARE xeventos CURSOR local FOR
      SELECT Isnull(Max(USR_ZZ5010.DtOCom), '1899-12-31') dtocorCom
      FROM   USR_ZZ5010

    OPEN xeventos;

    FETCH next FROM xeventos INTO @dtocorCom

    WHILE @@FETCH_STATUS = 0
      BEGIN
          BEGIN
              INSERT INTO USR_ZZ5010
                          (Filial,
                           TpLan,
                           NumDoc,
                           SerDoc,
                           CodCli,
                           Loja,
                           DatEmi,
                           EstDoc,
                           ValFre,
                           ValSeg,
                           ICMFre,
                           ValBru,
                           ValICM,
                           BasICM,
                           ValIPI,
                           BasIPI,
                           ValMer,
                           BasISS,
                           ValISS,
                           ValCSL,
                           ValDes,
                           CodCFO,
                           Observ,
                           Propri,
                           Tipo,
                           CampoA,
                           BasCOF,
                           ValCOF,
                           BasPIS,
                           ValPIS,
                           Cond,
                           TipoCL,
                           Especi,
                           ChvNfe,
                           DocSai,
                           SerSai,
                           ValDsc,
                           DatDig,
                           BasFre,
                           ValIRF,
                           NotOri,
                           SerOri,
                           BasINS,
                           ValINS,
                           ReduIC,
                           ReduIP,
                           DocEnt,
                           SerEnt,
                           OrigLa,
                           Status,
                           RecbMt,
                           TipLan,
                           TpFre,
                           ImpMet,
                           DtOcor,
                           HrOcor,
                           D_E_L_E_T_,
                           DtOcom,
                           DtFat,
                           Objid,
                           CodSef,
                           RecSef)
              SELECT DISTINCT CASE
                                WHEN ESTNotasFiscaisEntrada.idEmpresa = '122' THEN '03'
                                ELSE RIGHT('0'
                                           + CONVERT(VARCHAR(2), Isnull(ESTNotasFiscaisEntrada.idEmpresa, '')), 2)
                              END                                                                                             AS FILIAL,
                              CONVERT(VARCHAR(1), '1')                                                                        AS TIPPLAN,
                              RIGHT('000000000'
                                    + CONVERT(VARCHAR, ESTNotasFiscaisEntrada.NumNota), 9)                                    AS NUMDOC,
                              CONVERT(VARCHAR(3), Isnull(LEFT(ESTNotasFiscaisEntrada.Serie, 3), ''))                          AS SERDOC,
                              RIGHT('000000'
                                    + CONVERT(VARCHAR, ESTNotasFiscaisEntrada.CliFor_Codigo), 6)                              AS CODCLIFOR,
                              '01'                                                                                            AS LOJA,
                              Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEmissao, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEmissao, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEmissao, 103), 1, 2)                AS DATEMI,
                              CONVERT(VARCHAR(2), ESTNotasFiscaisEntrada.CliFor_UF)                                           AS ESTDOC,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValFrete)), 0)       AS VALFRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValSeguro)), 0)      AS VALSEG,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValorICMSTran)), 0)  AS ICMFRE,
                              CONVERT(VARCHAR(16), CONVERT(DECIMAL(15, 2), ESTNotasFiscaisEntrada.ValorTotalNota), 0)         AS VALBRU,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValTotalICMS)), 0)   AS VALICM,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValBaseClICMS)), '') AS BASICM,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValTotalIPI)), 0)    AS VALIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValBaseIPI)), '')    AS BASIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValorProdutos)), 0)  AS VALMER,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseISS)), 0)            AS BASISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValTotalISS)), 0)    AS VALISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValTotalReter)), 0)  AS VALCSL,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValOutrasDes)), 0)   AS VALDES,
                              CASE
                                WHEN ESTNotasFiscaisEntrada.cfop IN ( '.', '0000' ) THEN '1000'
                                ELSE LEFT(Replace(Isnull(ESTNotasFiscaisEntrada.cfop, ''), '.', ''), 4)
                              END                                                                                             AS CODCFO,
                              CONVERT(VARCHAR(30), Isnull(LEFT(ESTNotasFiscaisEntrada.Observacao, 30), ''))                   AS OBSERV,
                              CONVERT(VARCHAR(1), 'N')                                                                        AS PROPRI,
                              CASE
                                WHEN CFOP.Devolucao = 'S'
                                     AND CFOP.TpOperacaoBenef = 0
                                     AND ESTNotasFiscaisEntrada.cfop NOT IN ( '1.916', '2.916' ) THEN 'D'
                                WHEN ESTNotasFiscaisEntrada.cfop IN ( '1.916', '2.916', '1.902', '2.902' ) THEN 'N'
                                WHEN CFOP.TpOperacaoBenef = 3 THEN 'B'
                                WHEN CFOP.FinalidadeOperacaoNFE = 2
                                     AND ESTItemNotaEntrada.ValorIPI > 0 THEN 'P'
                                WHEN CFOP.FinalidadeOperacaoNFE = 2
                                     AND ESTItemNotaEntrada.ValorICMS > 0 THEN 'I'
                                WHEN CFOP.FinalidadeOperacaoNFE = 2
                                     AND ESTItemNotaEntrada.ValorTotal > 0 THEN 'C'
                                WHEN CFOP.CreditoICMS = 'S'
                                     AND ESTItemNotaEntrada.ValorICMS > 0 THEN 'I'
                                WHEN CFOP.TpOperacaoBenef = '3' THEN 'N'
                                ELSE 'N'
                              END                                                                                             AS TIPO,
                              CONVERT(VARCHAR(1), '')                                                                         AS CAMPOA,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BASECOF)), '')           AS BASECOF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.VALCOF)), 0)             AS VALCOF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BASEPIS)), '')           AS BASEPIS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.VALPIS)), 0)             AS VALPIS,
                              '001'                                                                                           AS COND,
                              CONVERT(VARCHAR(1), '1')                                                                        AS TIPLOCL,
                              CASE
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 1 THEN 'NF'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 55 THEN 'NFE'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 10 THEN 'CA'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 11 THEN 'CTF'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 2 THEN 'NFCF'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 20 THEN 'OCC'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 21 THEN 'NFCF'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 24 THEN 'NTST'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 57 THEN 'CTE'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 6 THEN 'NFCEE'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 7 THEN 'NFST'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 8 THEN 'CTR'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 9 THEN 'CTA'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 58 THEN 'NFS'
                                WHEN Isnull(EstNotasFiscaisEntrada.ModeloFiscal, '') = 59 THEN 'NFSE'
                                ELSE ''
                              END                                                                                             AS ESPECI,
                              CONVERT(VARCHAR(44), Isnull(LEFT(ESTNotasFiscaisEntrada.AccessKey, 44), ''))                    AS CHVNFE,
                              CONVERT(VARCHAR(9), '')                                                                         AS DOCSAI,
                              CONVERT(VARCHAR(3), '')                                                                         AS SERSAI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.Desconto)), 0)       AS VALDSC,
                              Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2)                AS DATDIG,
                              CONVERT(VARCHAR(16), '0')                                                                       AS BASEFRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTNotasFiscaisEntrada.ValTotalIR)), 0)     AS VALIRF,
                              ''                                                                                              AS NOTORI,
                              ''                                                                                              AS SERORI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BASINS)), '')            AS BASINS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.VALINS)), 0)             AS VALINS,
                              CONVERT(VARCHAR(1), '0')                                                                        AS REDUICM,
                              CONVERT(VARCHAR(1), '0')                                                                        AS REDUIP,
                              CONVERT(VARCHAR(9), Isnull(ESTNotasFiscaisEntrada.NumNota, ''))                                 AS DOCENT,
                              CONVERT(VARCHAR(3), Isnull(ESTNotasFiscaisEntrada.Serie, ''))                                   AS SERENT,
                              CONVERT(VARCHAR(2), 'NF')                                                                       AS ORIGLA,
                              CONVERT(VARCHAR(5), '')                                                                         AS STATUS,
                              CONVERT(VARCHAR(8), '')                                                                         AS RECBMNT,
                              CONVERT(VARCHAR(1), '1')                                                                        AS TIPPLAN,
                              CASE
                                WHEN Isnull(ESTNotasFiscaisEntrada.pagtofrete, '') = 'E' THEN '0'
                                WHEN Isnull(ESTNotasFiscaisEntrada.pagtofrete, '') = 'D' THEN '1'
                                WHEN Isnull(ESTNotasFiscaisEntrada.pagtofrete, '') = 'O' THEN '2'
                                WHEN Isnull(ESTNotasFiscaisEntrada.pagtofrete, '') = 'S' THEN '9'
                                ELSE ''
                              END                                                                                             TPFRETE,
                              CASE
                                WHEN Isnull(LogMsgs.Texto, '') = 'NF Processada' THEN '1'
                                WHEN Isnull(LogMsgs.Texto, '') = 'Cancelado' THEN '2'
                                WHEN Isnull(LogMsgs.Texto, '') = 'N/D' THEN '6'
                              END                                                                                             AS IMPMET,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                            AS DTOCOR,
                              Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 7, 2)                                    AS HROCOR,
                              CONVERT(VARCHAR(1), '')                                                                         AS D_E_L_E_T,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                            AS DTOCORCOM,
                              '1899-12-31'                                                                                    AS DTOCORFAT,
                              ESTNotasFiscaisEntrada.Objid,
                              ''                                                                                              CODSEF,
                              ''                                                                                              RECSEF
              FROM   ESTNotasFiscaisEntrada WITH (NOLOCK)
                     INNER JOIN (SELECT ESTItemNotaEntrada.Objid_NotasFiscaisEntrada,
                                        Sum(Isnull(ESTItemNotaEntrada.BaseCOFINS, 0))  AS BASECOF,
                                        Sum(Isnull(ESTItemNotaEntrada.ValorCOFINS, 0)) AS VALCOF,
                                        Sum(Isnull(ESTItemNotaEntrada.BasePIS, 0))     AS BASEPIS,
                                        Sum(Isnull(ESTItemNotaEntrada.ValorPIS, 0))    AS VALPIS,
                                        Isnull(ESTItemNotaEntrada.NumNotaOrigem, '')   AS NOTORI,
                                        Isnull(ESTItemNotaEntrada.SerieNotaOrigem, '') AS SERORI,
                                        Sum(Isnull(ESTItemNotaEntrada.BaseINSS, 0))    AS BASINS,
                                        Sum(Isnull(ESTItemNotaEntrada.ValorINSS, 0))   AS VALINS,
                                        Sum(Isnull(ESTItemNotaEntrada.ValorICMS, 0))   AS ValorICMS,
                                        Sum(Isnull(ESTItemNotaEntrada.ValorIPI, 0))    AS ValorIPI,
                                        Sum(Isnull(ESTItemNotaEntrada.ValorTotal, 0))  AS ValorTotal,
                                        Sum(Isnull(ESTItemNotaEntrada.BaseISS, 0))     AS BaseISS
                                 FROM   ESTItemNotaEntrada WITH (NOLOCK)
                                 GROUP  BY ESTItemNotaEntrada.Objid_NotasFiscaisEntrada,
                                           ESTItemNotaEntrada.NumNotaOrigem,
                                           ESTItemNotaEntrada.SerieNotaOrigem) ESTItemNotaEntrada
                             ON ESTItemNotaEntrada.Objid_NotasFiscaisEntrada = ESTNotasFiscaisEntrada.Objid
                     LEFT JOIN (SELECT idobj,
                                       DtOcor,
                                       Texto
                                FROM   LogMsgs
                                WHERE  Texto IN ( 'NF Processada', 'Cancelado', 'N/D' )
                                       AND Entidade = 'COMPRAS')LogMsgs
                            ON LogMsgs.idobj = ESTNotasFiscaisEntrada.ObjID
                     LEFT JOIN CFOP
                            ON CFOP.cfop = EstNotasFiscaisEntrada.cfop
              WHERE  LogMsgs.DtOcor > @dtocorCom
                     AND LogMsgs.dtocor >= '2014-12-01'
                     AND ( ( ESTNotasFiscaisEntrada.idEmpresa = 01
                             AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                 + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                 + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoMatriz )
                            OR ( ESTNotasFiscaisEntrada.idEmpresa = 02
                                 AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoFilial )
                            OR ( ESTNotasFiscaisEntrada.idEmpresa = 122
                                 AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoFilial ) )
          END

          FETCH next FROM xeventos INTO @dtocorCom
      END

    CLOSE xeventos

    DEALLOCATE xeventos

GO

USE [MT_Ibratec]

GO

-- ===========================================
-- Author:		Fernando Lima
-- Create date: 17/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de Itens de Fiscais de Estrada e Saída do Metrics 
--          	"ItemNota e ESTItemNotaEntrada" para a tabela de integração Local "Usr_ZZ3010"
-- =============================================
-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraItensNotas]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraItensNotas]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraItensNotas]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integraitensnotas]
AS
    DECLARE @dtocorFat DATETIME
    DECLARE @dtocorCom DATETIME
    -- Declaração das Variaveis
    DECLARE @dtFechamentoMatriz CHAR(8)
    DECLARE @dtFechamentoFilial CHAR(8)

    -- Atribuindo a data do ultimo fechamento as variaveis
    SET @dtFechamentoMatriz = (SELECT Max(ZBL_BLQMOV)
                               FROM   [P11P01].Protheus11.dbo.ZBL010
                               WHERE  ZBL_DTALT = (SELECT Max(ZBL_DTALT)
                                                   FROM   [P11P01].Protheus11.dbo.ZBL010
                                                   WHERE  ZBL_FILIAL = 01))
    SET @dtFechamentoFilial = (SELECT Max(ZBL_BLQMOV)
                               FROM   [P11P01].Protheus11.dbo.ZBL010
                               WHERE  ZBL_DTALT = (SELECT Max(ZBL_DTALT)
                                                   FROM   [P11P01].Protheus11.dbo.ZBL010
                                                   WHERE  ZBL_FILIAL = 02))
    --Define a Data a partir da qual serao importados os lançamentos, considerando a data de emissao das Notas Fiscais de Entrada e Saída 
    SET @dtocorFat = '2014-12-01'
    SET @dtocorCom = '2014-12-01'

    DECLARE xeventos CURSOR local FOR
      SELECT Isnull(Max(USR_ZZ3010.DTOFat), '1899-12-31') dtocorFat
      FROM   USR_ZZ3010
      WHERE  D_E_L_E_T_ <> '*'

    OPEN xeventos;

    FETCH next FROM xeventos INTO @dtocorFat

    WHILE @@FETCH_STATUS = 0
      BEGIN
          BEGIN
              INSERT INTO USR_ZZ3010
                          (Filial,
                           TpLan,
                           NumIte,
                           CodZer,
                           CodPro,
                           UniMed,
                           Qtdven,
                           ValVen,
                           ValTot,
                           ValIPI,
                           ValICM,
                           Grupo,
                           Tp,
                           NumSeq,
                           OrigLa,
                           CodTes,
                           CodCFO,
                           PerDes,
                           PerIPI,
                           PerICM,
                           NumPed,
                           ItemPV,
                           CodCli,
                           Loja,
                           CodLoc,
                           DatEmi,
                           SerDoc,
                           TipDoc,
                           NumDoc,
                           EstDoc,
                           BasIPI,
                           BasICM,
                           TipICM,
                           TipIPI,
                           TipISS,
                           PosIPI,
                           SitTri,
                           ValDsc,
                           Descri,
                           CoCIAP,
                           CampoA,
                           BasCOF,
                           ValCOF,
                           AliCOF,
                           BasPIS,
                           ValPIS,
                           DatDig,
                           DocSai,
                           SerSai,
                           AliPis,
                           TipCom,
                           VarFre,
                           TipLan,
                           ImpMet,
                           DtOcor,
                           CCusto,
                           Conta,
                           HrOcor,
                           NotOri,
                           SerOri,
                           D_E_L_E_T_,
                           DtOCom,
                           DtOFat,
                           BrICMS,
                           ICMSRe,
                           BasISS,
                           AlqISS,
                           ValISS,
                           BasINS,
                           AlqINS,
                           ValINS,
                           BasIRF,
                           AlqIRF,
                           ValIRF,
                           AlqPIS,
                           AlqCOF,
                           BasCSL,
                           AlqCSL,
                           ValCSL,
                           BasIMS,
                           AlqIMS,
                           ValIMS,
                           BasIM6,
                           AlqIM6,
                           ValIM6,
                           ValDes,
                           Objid,
                           ObjidI,
                           CodNew,
                           IteOri)
              SELECT DISTINCT CASE
                                WHEN NotasFiscais.CodEmpresa = '122' THEN '03'
                                ELSE RIGHT('0'
                                           + CONVERT(VARCHAR(2), Isnull(NotasFiscais.CodEmpresa, '')), 2)
                              END                                                                                                                   AS FILIAL,
                              '0'                                                                                                                   AS TPLAN,
                              CONVERT(VARCHAR(2), ItemNota.NumSeq)                                                                                  AS NUMITE,
                              '00000'                                                                                                               AS CODZER,
                              RIGHT('00000000000000000000'
                                    + CONVERT(VARCHAR, Isnull(Rtrim(Upper(Itemnota.CodMaterial)), '')), 20) COLLATE sql_latin1_general_cp1251_ci_as AS CODPRO,
                              --convert(varchar(2),isnull(itemnota.Unidade,'UN')) as UNIMED,	
                              CONVERT(VARCHAR(2), Isnull(ItensEstoque.UnidadeEst, 'UN'))                                                            AS UNIMED,
                              ---isnull(convert(varchar(16),convert(decimal(14,7),ItemNota.Quantidade/ 
                              --Case When ItemNota.FatorConv = 0 then 1 else ItemNota.FatorConv end)),'')as QTDVC,
                              CASE
                                WHEN Itemnota.unidade = Itensestoque.unidadecusto THEN CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 6), itemnota.quantidade * Isnull(fatconv.fatconvcustoest, 1)))
                                WHEN Itemnota.unidade = Itensestoque.UnidadeEst THEN CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 6), itemnota.quantidade))
                                ELSE CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 6), itemnota.quantidade))
                              END                                                                                                                   AS QTDVC,
                              --isnull(convert(varchar(16),convert(decimal(14,7),ItemNota.ValorUnitario * 
                              --case When ItemNota.FatorConv = 0 then 1 else ItemNota.FatorConv end )),'') VALVC,
                              CASE
                                WHEN Isnull(itemnota.quantidade, 0) = 0 THEN '0'
                                ELSE CONVERT(VARCHAR(18), CONVERT(DECIMAL(18, 8), itemnota.ValorTotal / CASE
                                                                                                          WHEN Itemnota.unidade = Itensestoque.unidadecusto THEN itemnota.quantidade * Isnull(fatconv.fatconvcustoest, 1)
                                                                                                          ELSE itemnota.quantidade
                                                                                                        END))
                              END                                                                                                                   VALVC,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.ValorTotal)), '')                                        AS VALTOT,
                              CONVERT(VARCHAR(16), Isnull(ItemNota.ValorIPI_INT, '0'))                                                              AS VALIPI,
                              CONVERT(VARCHAR(16), Isnull(ItemNota.ValorICMS_INT, '0'))                                                             AS VALICM,
                              CONVERT(VARCHAR(4), Isnull(EstGruposMateriais.CodigoExterno, ''))                                                     GRUPO,
                              CASE
                                WHEN ItensEstoque.TipoDeItem = 'A' THEN 'PA'
                                WHEN ItensEstoque.TipoDeItem = 'C' THEN 'MC'
                                WHEN ItensEstoque.TipoDeItem = 'P' THEN 'MP'
                                WHEN ItensEstoque.TipoDeItem = 'S' THEN 'MO'
                                WHEN ItensEstoque.TipoDeItem = 'I' THEN 'PI'
                                ELSE ''
                              END                                                                                                                   AS TP,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.NumSeq, '0'))                                                                     AS NUMSEQ,
                              'NF'                                                                                                                  AS ORIGLA,
                              CONVERT(VARCHAR(3), Isnull(CTBTpTransacao.codigo, ''))                                                                CODTES,
                              CASE
                                WHEN ItemNota.Cfop IN ( '.', '0000' ) THEN '1000'
                                ELSE LEFT(Replace(Isnull(ItemNota.Cfop, ''), '.', ''), 4)
                              END                                                                                                                   AS CODCFO,
                              CONVERT(VARCHAR(7), '')                                                                                               AS PERDES,
                              CONVERT(VARCHAR(7), Isnull(ItemNota.AliquotaIPI, '0'))                                                                AS PERIPI,
                              CONVERT(VARCHAR(7), Isnull(ItemNota.AliquotaICMS, '0'))                                                               AS PERICM,
                              CONVERT(VARCHAR(6), '')                                                                                               AS NUMPED,
                              CONVERT(VARCHAR(2), '')                                                                                               AS ITEMPVPC,
                              RIGHT('000000'
                                    + CONVERT(VARCHAR, NotasFiscais.codcliente), 6)                                                                 AS CODCLIFOR,
                              CONVERT(VARCHAR(2), '01')                                                                                             AS LOJA,
                              CASE
                                WHEN Isnull(ItensEstoque.ObjIdLocalEstoquePadrao, 01) = 01 THEN '01'
                                ELSE CONVERT(VARCHAR(2), Isnull(EstLocaisEstoque.CodigoExterno, '01'))
                              END                                                                                                                   AS CODLOC,
                              Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2)                                                AS DATEMI,
                              CONVERT(VARCHAR(3), NotasFiscais.SerieNota)                                                                           AS SERDOC,
                              CONVERT(VARCHAR(1), '')                                                                                               AS TIPDOC,
                              RIGHT('000000000'
                                    + CONVERT(VARCHAR, NotasFiscais.NumNota), 9)                                                                    AS NUMDOC,
                              CONVERT(VARCHAR(2), Isnull(NotasFiscais.UF, ''))                                                                      AS ESTDOC,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.BaseIPI)), '')                                           AS BASIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.BaseICMS)), '')                                          AS BASICM,
                              CONVERT(VARCHAR(1), '')                                                                                               AS TIPICM,
                              CONVERT(VARCHAR(1), '')                                                                                               AS TIPIPI,
                              CONVERT(VARCHAR(1), '')                                                                                               AS TIPISS,
                              CONVERT(VARCHAR(8), Isnull(Replace(ItemNota.ClassificacaoFiscal, '.', ''), ''))                                       AS POSIPI,
                              CONVERT(VARCHAR(3), Isnull(ItemNota.SituacaoTributaria, ''))                                                          AS SITTRI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.Desconto)), 0)                                           AS VALDSC,
                              CONVERT(VARCHAR(60), Isnull(ItemNota.Texto, ''))                                                                      AS DESCRI,
                              CONVERT(VARCHAR(1), '')                                                                                               AS COCIAP,
                              CONVERT(VARCHAR(1), '')                                                                                               AS CAMPOA,
                              --case when ItemNota.CreditaCofins = 'N' then isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.baseimpcofins)),'')else '' end  as BASCOF,
                              --case when ItemNota.CreditaCofins = 'N' then isnull(convert(varchar(16),convert(decimal(14,2),Itemnota.valorimpcofins)),0) else '' end as VALCOF,
                              --case when ItemNota.CreditaCofins = 'N' then isnull(convert(varchar(6),convert(decimal(14,2),Itemnota.aliquotaimpcofins)),0)else '' end  as ALICOF,
                              --case when ItemNota.CreditaPis = 'N' then isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.baseimppis)),'') else '' end as BASPIS,
                              --case when ItemNota.CreditaPis = 'N' then isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.valorimppis)),0) else '' end as VALPIS, 
                              0                                                                                                                     AS BASCOF,
                              0                                                                                                                     AS VALCOF,
                              0                                                                                                                     AS ALICOF,
                              0                                                                                                                     AS BASPIS,
                              0                                                                                                                     AS VALPIS,
                              Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)                                                          AS DATDIG,
                              CONVERT(VARCHAR(9), NotasFiscais.NumNota)                                                                             AS DOCSE,
                              CONVERT(VARCHAR(3), NotasFiscais.SerieNota)                                                                           AS SERSE,
                              --case when ItemNota.CreditaPis = 'N' then convert(varchar(6),isnull(ItemNota.AliquotaPIS,'0')) else '' end as ALIPIS,
                              0                                                                                                                     AS ALIPIS,
                              CONVERT(VARCHAR(1), '')                                                                                               AS TIPCOM,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.valorfrete)), 0)                                         AS VALFRE,
                              CONVERT(VARCHAR(1), '')                                                                                               AS TIPPLAN,
                              CASE
                                WHEN Isnull(LogMsgs.Texto, '') = 'NF Processada' THEN '1'
                                WHEN Isnull(LogMsgs.Texto, '') = 'Cancelado' THEN '2'
                                ELSE ''
                              END                                                                                                                   AS IMPMET,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                                                  AS DTOCOR,
                              ''                                                                                                                    AS CCUSTO,
                              CASE
                                WHEN ItemNota.cfop IN ( '5.206', '6.206' ) THEN Isnull(LEFT(Crm_Clientes.usr_cpcontpadrao, 9), '')
                                ELSE Isnull(Isnull(CTBPlanoContabilEmpresa.Codigo, CTBPlanoContabil.Codigo), '')
                              END                                                                                                                   CONTA,
                              Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 7, 2)                                                          AS HROCOR,
                              CASE
                                WHEN ItemNota.cfop IN ( '1.604', '5.605' ) THEN 'CIAP'
                                ELSE Isnull(View_Usr_AgrupaNotasOrigem.NFORI, '')
                              END                                                                                                                   AS NOTORI,
                              Isnull(View_Usr_AgrupaNotasOrigem.SERORI, '')                                                                         AS SERORI,
                              CONVERT(VARCHAR(1), '')                                                                                               AS D_E_L_E_T,
                              '1899-12-31'                                                                                                          AS DTOCORCOM,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                                                  AS DTOCORFAT,
                              '0'                                                                                                                   AS BRICMS,
                              '0'                                                                                                                   AS ICMSRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.baseiss)), '')                                           AS BASISS,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.AliquotaISS, '0'))                                                                AS ALQISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), Itemnota.ValorISS_INT)), 0)                                       AS VALISS,
                              '0'                                                                                                                   AS BASINS,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.AliquotaINSS, '0'))                                                               AS ALQINS,
                              '0'                                                                                                                   AS VALINS,
                              '0'                                                                                                                   AS BASIRF,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.AliquotaIR, '0'))                                                                 AS ALQIRF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), Itemnota.ValorIR)), 0)                                            AS VALIRF,
                              --'0' AS BASPIS,
                              CASE
                                WHEN ItemNota.CreditaPis = 'N' THEN CONVERT(VARCHAR(6), Isnull(ItemNota.AliquotaPIS, '0'))
                                ELSE ''
                              END                                                                                                                   AS ALQPIS,
                              --'0' AS VALPIS,
                              --'0' AS BASCOF,
                              CASE
                                WHEN ItemNota.CreditaCofins = 'N' THEN CONVERT(VARCHAR(6), Isnull(ItemNota.AliquotaCOFINS, '0'))
                                ELSE ''
                              END                                                                                                                   AS ALQCOF,
                              --'0' AS VALCOF,
                              '0'                                                                                                                   AS BASCSL,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.AliquotaCSSL, '0'))                                                               AS ALQCSL,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), Itemnota.ValorCSSL)), 0)                                          AS VALCSL,
                              --Anulamos o Case para sempre trazer os valores de Credito de PIS e COFINS independentemente o campo Credito estar 
                              --marcado na NotaFiscal do Faturamento
                              --case when ItemNota.CreditaCofins = 'S' then isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.baseimpcofins)),'') else isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.baseimpcofins)),'') end AS BASIM5,
                              --case when ItemNota.CreditaCofins = 'S' then convert(varchar(6),isnull(ItemNota.aliquotaimpcofins,'0')) else convert(varchar(6),isnull(ItemNota.aliquotaimpcofins,'0')) end AS ALQIM5,
                              --case when ItemNota.CreditaCofins = 'S' then isnull(convert(varchar(16),convert(decimal(14,2),Itemnota.valorimpcofins)),0) else isnull(convert(varchar(16),convert(decimal(14,2),Itemnota.valorimpcofins)),0) end AS VALIM5,
                              --case when ItemNota.CreditaPis = 'S' then isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.baseimppis)),'') else isnull(convert(varchar(16),convert(decimal(14,2),ItemNota.baseimppis)),'')  end AS BASIM6,
                              --case when ItemNota.CreditaPis = 'S' then convert(varchar(6),isnull(ItemNota.aliquotaimppis,'0')) else  convert(varchar(6),isnull(ItemNota.aliquotaimppis,'0'))  end  AS ALQIM6, 
                              --case when ItemNota.CreditaPis = 'S' then isnull(convert(varchar(16),convert(decimal(14,2),Itemnota.valorimppis)),0) else isnull(convert(varchar(16),convert(decimal(14,2),Itemnota.valorimppis)),0) end  AS VALIM6,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.baseimpcofins)), '')                                     AS BASIM5,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.aliquotaimpcofins, '0'))                                                          AS ALQIM5,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), Itemnota.valorimpcofins)), 0)                                     AS VALIM5,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.baseimppis)), '')                                        AS BASIM6,
                              CONVERT(VARCHAR(6), Isnull(ItemNota.aliquotaimppis, '0'))                                                             AS ALQIM6,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), Itemnota.valorimppis)), 0)                                        AS VALIM6,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ItemNota.valordespesas)), 0)                                      AS VALDES,
                              NotasFiscais.ObjID,
                              itemnota.ObjID                                                                                                        AS Objid_Item,
                              ItensEstoque.CodItem,
                              Isnull(CONVERT(VARCHAR(4), View_Usr_AgrupaNotasOrigem.NUMSEQORI), '')                                                 AS ITEORI
              FROM   ItemNota WITH (NOLOCK)
                     INNER JOIN NotasFiscais WITH (NOLOCK)
                             ON ItemNota.ObjID_Nota = NotasFiscais.Objid
                     LEFT JOIN ItensEstoque WITH (NOLOCK)
                            ON Itemnota.CodMaterial = ItensEstoque.CodItem
                     LEFT JOIN (SELECT EstGruposMateriais.CodGrupo,
                                       CTBPlanoContabil.Codigo,
                                       CodigoExterno,
                                       EstGruposMateriais.MasterGrupo
                                FROM   EstGruposMateriais
                                       INNER JOIN CTBPlanoContabil
                                               ON CTBPlanoContabil.Objid = EstGruposMateriais.ObjidCtContabil) EstGruposMateriais
                            ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
                     LEFT JOIN (SELECT EstMasterGruposMateriais.codgrupo,
                                       CTBPlanoContabil.Codigo
                                FROM   EstMasterGruposMateriais
                                       INNER JOIN CTBPlanoContabil
                                               ON CTBPlanoContabil.Objid = EstMasterGruposMateriais.ObjidCtContabil)EstMasterGruposMateriais
                            ON EstMasterGruposMateriais.CodGrupo = EstGruposMateriais.MasterGrupo
                     LEFT JOIN EstLocaisEstoque
                            ON EstLocaisEstoque.ObjID = ItemNota.ObjId_LocalEstoque
                     LEFT JOIN (SELECT DISTINCT nfiTMTransaction.NumNota,
                                                nfiTMTransaction.accesskey,
                                                nfiTMTransaction.Status,
                                                nfiTMTransaction.Operation
                                FROM   nfiTMTransaction WITH (NOLOCK)
                                WHERE  nfiTMTransaction.Status IN( 4, 5 ))nfe
                            ON nfe.NumNota = NotasFiscais.NumNota
                     LEFT JOIN (SELECT idobj,
                                       dtocor,
                                       Texto
                                FROM   LogMsgs WITH (NOLOCK)
                                WHERE  Texto IN ( 'NF Processada', 'Cancelado' )
                                       AND Entidade = 'NF.SAIDA')LogMsgs
                            ON LogMsgs.IdObj = NotasFiscais.ObjID
                               AND ( ( LogMsgs.Texto = 'NF Processada'
                                       AND nfe.Operation = 0 )
                                      OR ( LogMsgs.Texto = 'Cancelado'
                                           AND nfe.Operation = 1 )
                                      OR ( LogMsgs.Texto = 'Cancelado'
                                           AND nfe.Operation = 2 ) )
                     LEFT JOIN Crm_Clientes WITH (NOLOCK)
                            ON Crm_Clientes.CodCliente = NotasFiscais.codcliente
                     LEFT JOIN CTBTpTransacao
                            ON CTBTpTransacao.objid = ItemNota.ObjIDTpTransacao
                     LEFT JOIN View_Usr_AgrupaNotasOrigem
                            ON View_Usr_AgrupaNotasOrigem.objiditemdevolucao = ItemNota.ObjID
                     LEFT JOIN CFOP
                            ON CFOP.cfop = ItemNota.cfop
                     LEFT JOIN (SELECT ItensEstoque.CodItem,
                                       Isnull(PCIE.ObjId, Isnull(PCGM.ObjId, PCMGM.ObjId)) ObjidContaContabil
                                FROM   ItensEstoque
                                       LEFT JOIN CTBPlanoContabil PCIE
                                              ON PCIE.Codigo = LEFT(ItensEstoque.usr_contacredito, 9)
                                       INNER JOIN EstGruposMateriais
                                               ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
                                       LEFT JOIN CTBPlanoContabil PCGM
                                              ON PCGM.ObjId = EstGruposMateriais.ObjIdCtContabil
                                       INNER JOIN EstMasterGruposMateriais
                                               ON EstMasterGruposMateriais.CodGrupo = EstGruposMateriais.MasterGrupo
                                       LEFT JOIN CTBPlanoContabil PCMGM
                                              ON PCMGM.ObjId = EstMasterGruposMateriais.ObjIdCtContabil)CC
                            ON CC.CodItem = ItemNota.CodMaterial
                     --left join CTBPlanoContabil PCCRM1 on PCCRM1.Codigo = left(Crm_Clientes.Usr_cpcontpadrao,9)
                     LEFT JOIN CTBPlanoContabil PCCRM2
                            ON PCCRM2.Codigo = LEFT(Crm_Clientes.Usr_cpcontdevolucao, 9)
                     --left join CTBPlanoContabil PCCRM3 on PCCRM3.Codigo = left(Crm_Clientes.Usr_cpcontserv,9)
                     LEFT JOIN CTBPlanoContabil PCCRM4
                            ON PCCRM4.Codigo = LEFT(Crm_Clientes.Usr_cpcontdevserv, 9)
                     LEFT JOIN CTBPlanoContabilEmpresa
                            ON CTBPlanoContabilEmpresa.ObjId_CTBPlanoContabilOrigem = ( CASE
                                                                                          WHEN CFOP.Devolucao = 'S'
                                                                                               AND NotasFiscais.TipoNota = 'S'
                                                                                               AND ItensEstoque.TipoDeItem <> 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM2.ObjId)
                                                                                          WHEN CFOP.Devolucao = 'S'
                                                                                               AND NotasFiscais.TipoNota = 'S'
                                                                                               AND ItensEstoque.TipoDeItem = 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM4.ObjId)
                                                                                          WHEN CFOP.cfopimportacao = 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM2.ObjId)
                                                                                        END )
                               AND CTBPlanoContabilEmpresa.CodEmpresa = NotasFiscais.CodEmpresa
                     LEFT JOIN CTBPlanoContabil
                            ON CTBPlanoContabil.ObjId = ( CASE
                                                            WHEN ItensEstoque.TipoDeItem <> 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM2.ObjId)
                                                            WHEN ItensEstoque.TipoDeItem = 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM4.ObjId)
                                                          END )
                     LEFT JOIN (SELECT ite.coditem,
                                       CASE
                                         WHEN ite.tipodematerial IN ( 'PF' )
                                              AND ite.UnidadeEst = 'FL'
                                              AND ite.UnidadeCusto = 'KG' THEN 1 / ( Isnull(ite.Gramatura, 1) * ite.Altura * ite.largura / 1000000000 )
                                         ELSE Isnull(fcu.FatorConversao, 1 / Isnull(fcu2.FatorConversao, 1))
                                       END fatconvcustoest
                                FROM   ITENSESTOQUE ite
                                       LEFT JOIN FatConvUnidade fcu
                                              ON fcu.CodItem = ite.CodItem
                                                 AND ite.UnidadeCusto = fcu.UnidadeOrigem
                                                 AND ite.UnidadeEst = fcu.UnidadeDestino
                                       LEFT JOIN FatConvUnidade fcu2
                                              ON fcu2.CodItem = ite.CodItem
                                                 AND ite.UnidadeCusto = fcu2.UnidadeDestino
                                                 AND ite.UnidadeEst = fcu2.UnidadeOrigem) fatconv
                            ON fatconv.CodItem = Itensestoque.CodItem
              --LEFT JOIN basTCUnit with (NOLOCK) ON basTCUnit.Name = ItensEstoque.UnidadeEst and basTCUnit.IsActv = 0	
              WHERE  LogMsgs.DtOcor > @dtocorFat
                     AND LogMsgs.DtOcor >= '2014-12-01'
                     AND ( ( NotasFiscais.CodEmpresa = 01
                             AND Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                                 + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                                 + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2) > @dtFechamentoMatriz )
                            OR ( NotasFiscais.CodEmpresa = 02
                                 AND Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2) > @dtFechamentofilial )
                            OR ( NotasFiscais.CodEmpresa = 122
                                 AND Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), NotasFiscais.DataEmissao, 103), 1, 2) > @dtFechamentofilial ) )
          END

          FETCH next FROM xeventos INTO @dtocorFat
      END

    CLOSE xeventos

    DEALLOCATE xeventos

    --Carregando Notas emitidas no Compras		
    DECLARE xeventos CURSOR local FOR
      SELECT Isnull(Max(USR_ZZ3010.DTOCom), '1899-12-31') dtocorCom
      FROM   USR_ZZ3010

    OPEN xeventos;

    FETCH next FROM xeventos INTO @dtocorCom

    WHILE @@FETCH_STATUS = 0
      BEGIN
          BEGIN
              INSERT INTO USR_ZZ3010
                          (Filial,
                           TpLan,
                           NumIte,
                           CodZer,
                           CodPro,
                           UniMed,
                           Qtdven,
                           ValVen,
                           ValTot,
                           ValIPI,
                           ValICM,
                           Grupo,
                           Tp,
                           NumSeq,
                           OrigLa,
                           CodTes,
                           CodCFO,
                           PerDes,
                           PerIPI,
                           PerICM,
                           NumPed,
                           ItemPV,
                           CodCli,
                           Loja,
                           CodLoc,
                           DatEmi,
                           SerDoc,
                           TipDoc,
                           NumDoc,
                           EstDoc,
                           BasIPI,
                           BasICM,
                           TipICM,
                           TipIPI,
                           TipISS,
                           PosIPI,
                           SitTri,
                           ValDsc,
                           Descri,
                           CoCIAP,
                           CampoA,
                           BasCOF,
                           ValCOF,
                           AliCOF,
                           BasPIS,
                           ValPIS,
                           DatDig,
                           DocSai,
                           SerSai,
                           AliPis,
                           TipCom,
                           VarFre,
                           TipLan,
                           ImpMet,
                           DtOcor,
                           CCusto,
                           Conta,
                           HrOcor,
                           NotOri,
                           SerOri,
                           D_E_L_E_T_,
                           DtOCom,
                           DtOFat,
                           BrICMS,
                           ICMSRe,
                           BasISS,
                           AlqISS,
                           ValISS,
                           BasINS,
                           AlqINS,
                           ValINS,
                           BasIRF,
                           AlqIRF,
                           ValIRF,
                           AlqPIS,
                           AlqCOF,
                           BasCSL,
                           AlqCSL,
                           ValCSL,
                           BasIMS,
                           AlqIMS,
                           ValIMS,
                           BasIM6,
                           AlqIM6,
                           ValIM6,
                           ValDes,
                           Objid,
                           ObjidI,
                           CodNew,
                           IteOri)
              SELECT DISTINCT CASE
                                WHEN ESTNotasFiscaisEntrada.idEmpresa = '122' THEN '03'
                                ELSE RIGHT('0'
                                           + CONVERT(VARCHAR(2), Isnull(ESTNotasFiscaisEntrada.idEmpresa, '')), 2)
                              END                                                                                       AS FILIAL,
                              CONVERT(VARCHAR(1), '')                                                                   AS TPLAN,
                              CONVERT(VARCHAR(2), ESTItemNotaEntrada.NumSeq)                                            AS NUMITE,
                              '00000'                                                                                   AS CODZER,
                              CASE
                                WHEN EstNotasFiscaisEntrada.ComplementarImposto = 'S' THEN RIGHT('00000000000000000000'
                                                                                                 + CONVERT(VARCHAR, Isnull(Rtrim(Upper(View_Usr_AgrupaNotasOrigem.CodItem)), '')), 20) COLLATE sql_latin1_general_cp1251_ci_as
                                ELSE RIGHT('00000000000000000000'
                                           + CONVERT(VARCHAR, Isnull(Rtrim(Upper(ESTItemNotaEntrada.CodItem)), '')), 20) COLLATE sql_latin1_general_cp1251_ci_as
                              END                                                                                       AS CODPRO,
                              --convert(varchar(2),isnull(EstItemnotaentrada.Unidade,'')) as UNIMED,
                              CONVERT(VARCHAR(2), Isnull(ItensEstoque.UnidadeEst, 'UN'))                                AS UNIMED,
                              --isnull(convert(varchar(16),convert(decimal(14,6),ESTItemNotaEntrada.Quantidade)),'')as QTDVC,
                              --isnull(convert(varchar(16),convert(decimal(14,6),ESTItemNotaEntrada.QuantidadeEstoque)),'0') 	as QTDVC,
                              CASE
                                WHEN ESTItemNotaEntrada.unidade = Itensestoque.unidadecusto THEN CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 6), ESTItemNotaEntrada.quantidade * Isnull(fatconv.fatconvcustoest, 1)))
                                WHEN ESTItemNotaEntrada.unidade = Itensestoque.UnidadeEst THEN CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 6), ESTItemNotaEntrada.quantidade))
                                ELSE CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 6), ESTItemNotaEntrada.quantidade))
                              END                                                                                       AS QTDVC,
                              --isnull(convert(varchar(16),convert(decimal(14,7),ESTItemNotaEntrada.ValorUnitario)),'') VALVC,
                              --isnull(convert(varchar(16),convert(decimal(14,7),ESTItemNotaEntrada.ValorTotal/isnull(ESTItemNotaEntrada.QuantidadeEstoque,1))),'') VALVC,
                              CASE
                                WHEN Isnull(ESTItemNotaEntrada.quantidade, 0) = 0 THEN '0'
                                ELSE CONVERT(VARCHAR(18), CONVERT(DECIMAL(18, 8), ESTItemNotaEntrada.ValorTotal / CASE
                                                                                                                    WHEN ESTItemNotaEntrada.unidade = Itensestoque.unidadecusto THEN ESTItemNotaEntrada.quantidade * Isnull(fatconv.fatconvcustoest, 1)
                                                                                                                    ELSE ESTItemNotaEntrada.quantidade
                                                                                                                  END))
                              END                                                                                       VALVC,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorTotal)), '')  AS VALTOT,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorIPI)), 0)     AS VALIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorICMS)), 0)    AS VALICM,
                              CONVERT(VARCHAR(4), Isnull(EstGruposMateriais.CodigoExterno, ''))                         GRUPO,
                              CASE
                                WHEN ItensEstoque.TipoDeItem = 'A' THEN 'PA'
                                WHEN ItensEstoque.TipoDeItem = 'C' THEN 'MC'
                                WHEN ItensEstoque.TipoDeItem = 'P' THEN 'MP'
                                WHEN ItensEstoque.TipoDeItem = 'S' THEN 'MO'
                                WHEN ItensEstoque.TipoDeItem = 'I' THEN 'PI'
                                ELSE ''
                              END                                                                                       AS TP,
                              CONVERT(VARCHAR(6), Isnull(ESTItemNotaEntrada.NumSeq, ''))                                AS NUMSEQ,
                              'NF'                                                                                      AS ORIGLA,
                              CONVERT(VARCHAR(3), Isnull(CTBTpTransacao.codigo, ''))                                    CODTES,
                              CASE
                                WHEN ESTItemNotaEntrada.CFOP IN ( '.', '0000' ) THEN '1000'
                                ELSE LEFT(Replace(Isnull(ESTItemNotaEntrada.CFOP, ''), '.', ''), 4)
                              END                                                                                       AS CODCFO,
                              CONVERT(VARCHAR(7), '')                                                                   AS PERDES,
                              CONVERT(VARCHAR(7), Isnull(ESTItemNotaEntrada.AliquotaIPI, ''))                           AS PERIPI,
                              CONVERT(VARCHAR(7), Isnull(ESTItemNotaEntrada.AliquotaICMS, ''))                          AS PERICM,
                              CONVERT(VARCHAR(6), '')                                                                   AS NUMPED,
                              CONVERT(VARCHAR(2), '')                                                                   AS ITEMPVPC,
                              RIGHT('000000'
                                    + CONVERT(VARCHAR, ESTNotasFiscaisEntrada.CliFor_Codigo), 6)                        AS CODCLIFOR,
                              CONVERT(VARCHAR(2), '01')                                                                 LOJA,
                              CASE
                                WHEN Isnull(ItensEstoque.ObjIdLocalEstoquePadrao, '01') = 01 THEN '01'
                                ELSE CONVERT(VARCHAR(2), Isnull(EstLocaisEstoque.CodigoExterno, '01'))
                              END                                                                                       AS CODLOC,
                              Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEmissao, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEmissao, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEmissao, 103), 1, 2)          AS DATEMI,
                              CONVERT(VARCHAR(3), ESTNotasFiscaisEntrada.Serie)                                         AS SERDOC,
                              'N'                                                                                       AS TIPDOC,
                              RIGHT('000000000'
                                    + CONVERT(VARCHAR, ESTNotasFiscaisEntrada.NumNota), 9)                              AS NUMDOC,
                              CONVERT(VARCHAR(16), '')                                                                  AS ESTDOC,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValBaseIPI)), '')  AS BASIPI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValBaseICMS)), '') AS BASICM,
                              CASE
                                WHEN ( ESTItemNotaEntrada.ValBaseICMS ) > 0 THEN 'T'
                                WHEN ( ESTItemNotaEntrada.ValIsentasNTribICMS ) > 0 THEN 'I'
                                WHEN ( ESTItemNotaEntrada.ValOutrasOPICMS ) > 0 THEN 'O'
                                ELSE ''
                              END                                                                                       AS TIPICM,
                              CASE
                                WHEN ( ESTItemNotaEntrada.ValBaseIPI ) > 0 THEN 'T'
                                WHEN ( ESTItemNotaEntrada.ValIsentasNTribIPI ) > 0 THEN 'I'
                                WHEN ( ESTItemNotaEntrada.ValOutrasOPIPI ) > 0 THEN 'O'
                                ELSE ''
                              END                                                                                       AS TIPIPI,
                              CONVERT(VARCHAR(1), '')                                                                   AS TIPISS,
                              CONVERT(VARCHAR(8), Isnull(Replace(ESTItemNotaEntrada.ClassFiscal, '.', ''), ''))         AS POSIPI,
                              CONVERT(VARCHAR(3), Isnull(ESTItemNotaEntrada.SitTrib, ''))                               AS SITTRI,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.Desconto)), 0)     AS VALDSC,
                              CONVERT(VARCHAR(60), Isnull(ESTItemNotaEntrada.Descricao, ''))                            AS DESCRI,
                              CONVERT(VARCHAR(1), '')                                                                   AS COCIAP,
                              CONVERT(VARCHAR(1), '')                                                                   AS CAMPOA,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseCofins)), '')  AS BASCOF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorCOFINS)), 0)  AS VALCOF,
                              CONVERT(VARCHAR(6), Isnull(ESTItemNotaEntrada.AliquotaCOFINS, '0'))                       AS ALICOF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BasePis)), '')     AS BASPIS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorPis)), 0)     AS VALPIS,
                              Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2)          AS DATDIG,
                              CONVERT(VARCHAR(9), ESTNotasFiscaisEntrada.NumNota)                                       AS DOCSE,
                              CONVERT(VARCHAR(3), Isnull(ESTNotasFiscaisEntrada.Serie, ''))                             AS SERSE,
                              CONVERT(VARCHAR(6), Isnull(ESTItemNotaEntrada.AliquotaPIS, '0'))                          AS ALIPIS,
                              CONVERT(VARCHAR(1), '')                                                                   AS TIPCOM,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValFrete)), 0)     AS VALFRE,
                              CONVERT(VARCHAR(1), '')                                                                   AS TIPPLAN,
                              CASE
                                WHEN Isnull(LogMsgs.Texto, '') = 'NF Processada' THEN '1'
                                WHEN Isnull(LogMsgs.Texto, '') = 'Cancelado' THEN '2'
                                WHEN Isnull(LogMsgs.Texto, '') = 'N/D' THEN '6'
                              END                                                                                       AS IMPMET,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                      AS DTOCOR,
                              CASE
                                WHEN EstGruposMateriais2.ExecLancEstoqueCompra = 'N' THEN Isnull(Replace(FIN_CentroCusto.CCusto, '.', ''), '')
                                WHEN ItensEstoque.TipoDeItem = 'S' THEN Isnull(Replace(FIN_CentroCusto.CCusto, '.', ''), '')
                                ELSE ''
                              END                                                                                       CCUSTO,
                              Isnull(Isnull(CTBPlanoContabilEmpresa.Codigo, CTBPlanoContabil.Codigo), '')               CONTA,
                              Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 1, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 4, 2)
                              + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 7, 2)                              AS HROCOR,
                              CASE
                                WHEN View_Usr_AgrupaNotasOrigem.NFORI = 0 THEN ''
                                ELSE Isnull(View_Usr_AgrupaNotasOrigem.NFORI, '')
                              END                                                                                       AS NOTORI,
                              Isnull(View_Usr_AgrupaNotasOrigem.SERORI, '')                                             AS SERORI,
                              CONVERT(VARCHAR(1), '')                                                                   AS D_E_L_E_T,
                              Isnull(LogMsgs.DtOcor, '1899-12-31')                                                      AS DTOCORCOM,
                              '1899-12-31'                                                                              AS DTOCORFAT,
                              '0'                                                                                       AS BRICMS,
                              '0'                                                                                       AS ICMSRE,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseISS)), '')     AS BASISS,
                              Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliquotaISS), '')                           AS ALQISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorISS)), 0)     AS VALISS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseINSS)), '')    AS BASINS,
                              Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliquotaINSS), '')                          AS ALQINS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorINSS)), 0)    AS VALINS,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseIR)), '')      AS BASIRF,
                              Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliquotaIR), '')                            AS ALQIRF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorIR)), 0)      AS VALIRF,
                              --'0' AS BASPIS,
                              Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliquotaPIS), '')                           AS ALQPIS,
                              --'0' AS VALPIS,
                              --'0' AS BASCOF,
                              Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliquotaCOFINS), '')                        AS ALQCOF,
                              --'0' AS VALCOF,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseCSLL)), '')    AS BASCSL,
                              Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliquotaCSLL), '')                          AS ALQCSL,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorCSLL)), 0)    AS VALCSL,
                              CASE
                                WHEN ESTItemNotaEntrada.creditacofins = 'S' THEN Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseCredCOFINS)), '')
                                ELSE ''
                              END                                                                                       AS BASIM5,
                              CASE
                                WHEN ESTItemNotaEntrada.creditacofins = 'S' THEN Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliqCredCOFINS), '0')
                                ELSE '0'
                              END                                                                                       AS ALQIM5,
                              CASE
                                WHEN ESTItemNotaEntrada.creditacofins = 'S' THEN Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorCredCOFINS)), 0)
                                ELSE ''
                              END                                                                                       AS VALIM5,
                              CASE
                                WHEN ESTItemNotaEntrada.CreditaPIS = 'S' THEN Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.BaseCredPIS)), '')
                                ELSE ''
                              END                                                                                       AS BASIM6,
                              CASE
                                WHEN ESTItemNotaEntrada.CreditaPIS = 'S' THEN Isnull(CONVERT(VARCHAR(6), ESTItemNotaEntrada.AliqCredPIS), '0')
                                ELSE '0'
                              END                                                                                       AS ALQIM6,
                              CASE
                                WHEN ESTItemNotaEntrada.CreditaPIS = 'S' THEN Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValorCredPIS)), 0)
                                ELSE ''
                              END                                                                                       AS VALIM6,
                              Isnull(CONVERT(VARCHAR(16), CONVERT(DECIMAL(14, 2), ESTItemNotaEntrada.ValOutrasDes)), 0) AS VALDES,
                              ESTNotasFiscaisEntrada.Objid,
                              ESTItemNotaEntrada.Objid                                                                  AS Objid_Item,
                              CASE
                                WHEN EstNotasFiscaisEntrada.ComplementarImposto = 'S' THEN ( CONVERT(VARCHAR, Isnull(Rtrim(Upper(View_Usr_AgrupaNotasOrigem.CodItem)), '')) )
                                ELSE CONVERT(VARCHAR, Isnull(Rtrim(ESTItemNotaEntrada.CodItem), ''))
                              END                                                                                       AS CODNEW,
                              Isnull(CONVERT(VARCHAR(4), View_Usr_AgrupaNotasOrigem.NUMSEQORI), '')                     AS ITEORI
              FROM   ESTItemNotaEntrada
                     INNER JOIN ESTNotasFiscaisEntrada
                             ON ESTNotasFiscaisEntrada.Objid = ESTItemNotaEntrada.Objid_NotasFiscaisEntrada
                     LEFT JOIN ItensEstoque
                            ON ItensEstoque.CodItem = ESTItemNotaEntrada.CodItem
                     LEFT JOIN(SELECT EstGruposMateriais.CodGrupo,
                                      CTBPlanoContabil.Codigo,
                                      CodigoExterno,
                                      EstGruposMateriais.MasterGrupo
                               FROM   EstGruposMateriais
                                      INNER JOIN CTBPlanoContabil
                                              ON CTBPlanoContabil.Objid = EstGruposMateriais.ObjidCtContabil) EstGruposMateriais
                            ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
                     LEFT JOIN (SELECT EstMasterGruposMateriais.codgrupo,
                                       CTBPlanoContabil.Codigo
                                FROM   EstMasterGruposMateriais
                                       INNER JOIN CTBPlanoContabil
                                               ON CTBPlanoContabil.Objid = EstMasterGruposMateriais.ObjidCtContabil)EstMasterGruposMateriais
                            ON EstMasterGruposMateriais.CodGrupo = EstGruposMateriais.MasterGrupo
                     LEFT JOIN EstGruposMateriais EstGruposMateriais2
                            ON EstGruposMateriais2.CodGrupo = ItensEstoque.CodGrupo
                     LEFT JOIN COMRateioFinanceiro
                            ON COMRateioFinanceiro.objiditemnota = ESTItemNotaEntrada.objid
                               AND Isnull(COMRateioFinanceiro.PercentualNoItem, 100) = 100
                     LEFT JOIN FIN_CentroCusto
                            ON FIN_CentroCusto.IdCCusto = COMRateioFinanceiro.IdCCusto
                     LEFT JOIN EstLocaisEstoque
                            ON ItensEstoque.ObjIdLocalEstoquePadrao = EstLocaisEstoque.ObjID
                     LEFT JOIN (SELECT idobj,
                                       DtOcor,
                                       Texto
                                FROM   LogMsgs
                                WHERE  Texto IN ( 'NF Processada', 'Cancelado', 'N/D' )
                                       AND Entidade = 'COMPRAS'
                                       AND dtocor > @dtocorCom)LogMsgs
                            ON LogMsgs.idobj = ESTNotasFiscaisEntrada.ObjID
                     INNER JOIN Crm_Clientes
                             ON Crm_Clientes.CodCliente = ESTNotasFiscaisEntrada.CliFor_Codigo
                     LEFT JOIN CTBTpTransacao
                            ON CTBTpTransacao.objid = ESTItemNotaEntrada.ObjIDTpTransacao
                     LEFT JOIN View_Usr_AgrupaNotasOrigem
                            ON View_Usr_AgrupaNotasOrigem.ObjidItemDevolucao = ESTNotasFiscaisEntrada.Objid
                               AND View_Usr_AgrupaNotasOrigem.OBJID_ItemNota = ESTItemNotaEntrada.ObjID
                     LEFT JOIN CFOP
                            ON CFOP.cfop = ESTItemNotaEntrada.cfop
                     LEFT JOIN (SELECT ItensEstoque.CodItem,
                                       Isnull(PCIE.ObjId, Isnull(PCGM.ObjId, PCMGM.ObjId)) ObjidContaContabil
                                FROM   ItensEstoque
                                       LEFT JOIN CTBPlanoContabil PCIE
                                              ON PCIE.Codigo = LEFT(ItensEstoque.usr_contacredito, 9)
                                       INNER JOIN EstGruposMateriais
                                               ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
                                       LEFT JOIN CTBPlanoContabil PCGM
                                              ON PCGM.ObjId = EstGruposMateriais.ObjIdCtContabil
                                       INNER JOIN EstMasterGruposMateriais
                                               ON EstMasterGruposMateriais.CodGrupo = EstGruposMateriais.MasterGrupo
                                       LEFT JOIN CTBPlanoContabil PCMGM
                                              ON PCMGM.ObjId = EstMasterGruposMateriais.ObjIdCtContabil) CC
                            ON CC.CodItem = ESTItemNotaEntrada.CodItem
                     LEFT JOIN CTBPlanoContabil PCCRM1
                            ON PCCRM1.Codigo = LEFT(Crm_Clientes.Usr_cpcontpadrao, 9)
                     --left join CTBPlanoContabil PCCRM2 on PCCRM2.Codigo = left(Crm_Clientes.Usr_cpcontdevolucao,9)
                     LEFT JOIN CTBPlanoContabil PCCRM3
                            ON PCCRM3.Codigo = LEFT(Crm_Clientes.Usr_cpcontserv, 9)
                     --left join CTBPlanoContabil PCCRM4 on PCCRM4.Codigo = left(Crm_Clientes.Usr_cpcontdevserv,9)
                     LEFT JOIN CTBPlanoContabilEmpresa
                            ON CTBPlanoContabilEmpresa.ObjId_CTBPlanoContabilOrigem = ( CASE
                                                                                          WHEN ItensEstoque.TipoDeItem <> 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM1.ObjId)
                                                                                          WHEN ItensEstoque.TipoDeItem = 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM3.ObjId)
                                                                                        END )
                               AND CTBPlanoContabilEmpresa.CodEmpresa = ESTNotasFiscaisEntrada.idEmpresa
                     LEFT JOIN CTBPlanoContabil
                            ON CTBPlanoContabil.ObjId = ( CASE
                                                            WHEN ItensEstoque.TipoDeItem <> 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM1.ObjId)
                                                            WHEN ItensEstoque.TipoDeItem = 'S' THEN Isnull(CC.ObjidContaContabil, PCCRM3.ObjId)
                                                          END )
                     LEFT JOIN basTCUnit WITH (NOLOCK)
                            ON basTCUnit.NAME = ItensEstoque.UnidadeEst
                               AND basTCUnit.IsActv = 0
                     LEFT JOIN (SELECT ite.coditem,
                                       CASE
                                         WHEN ite.tipodematerial IN ( 'PF' )
                                              AND ite.UnidadeEst = 'FL'
                                              AND ite.UnidadeCusto = 'KG' THEN 1 / ( Isnull(ite.Gramatura, 1) * ite.Altura * ite.largura / 1000000000 )
                                         ELSE Isnull(fcu.FatorConversao, 1 / Isnull(fcu2.FatorConversao, 1))
                                       END fatconvcustoest
                                FROM   ITENSESTOQUE ite
                                       LEFT JOIN FatConvUnidade fcu
                                              ON fcu.CodItem = ite.CodItem
                                                 AND ite.UnidadeCusto = fcu.UnidadeOrigem
                                                 AND ite.UnidadeEst = fcu.UnidadeDestino
                                       LEFT JOIN FatConvUnidade fcu2
                                              ON fcu2.CodItem = ite.CodItem
                                                 AND ite.UnidadeCusto = fcu2.UnidadeDestino
                                                 AND ite.UnidadeEst = fcu2.UnidadeOrigem) fatconv
                            ON fatconv.CodItem = Itensestoque.CodItem
              WHERE  LogMsgs.DtOcor >= '2014-12-01'
                     AND LogMsgs.DtOcor > @dtocorCom
                     AND ( ( ESTNotasFiscaisEntrada.idEmpresa = 01
                             AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                 + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                 + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoMatriz )
                            OR ( ESTNotasFiscaisEntrada.idEmpresa = 02
                                 AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoFilial )
                            OR ( ESTNotasFiscaisEntrada.idEmpresa = 122
                                 AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoFilial ) )
          END

          FETCH next FROM xeventos INTO @dtocorCom
      END

    CLOSE xeventos

    DEALLOCATE xeventos

GO

USE [MT_Ibratec]

GO

--=============================================
--Author:		Fernando Lima
--Create date: 27/06/2014
--Description:	Carregas as informações sobre rateios financeiros das Notas Fiscais de Entrada 
--         	 para a tabela de integração local"Usr_ZR6010"
--=============================================
-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraRateioFin]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraRateioFin]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraRateioFin]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integrarateiofin]
AS
    DECLARE @dtocorCom DATETIME
    -- Declaração das Variaveis
    DECLARE @dtFechamentoMatriz CHAR(8)
    DECLARE @dtFechamentoFilial CHAR(8)

    -- Atribuindo a data do ultimo fechamento as variaveis
    SET @dtFechamentoMatriz = (SELECT Max(ZBL_BLQMOV)
                               FROM   [P11P01].Protheus11.dbo.ZBL010
                               WHERE  ZBL_DTALT = (SELECT Max(ZBL_DTALT)
                                                   FROM   [P11P01].Protheus11.dbo.ZBL010
                                                   WHERE  ZBL_FILIAL = 01))
    SET @dtFechamentoFilial = (SELECT Max(ZBL_BLQMOV)
                               FROM   [P11P01].Protheus11.dbo.ZBL010
                               WHERE  ZBL_DTALT = (SELECT Max(ZBL_DTALT)
                                                   FROM   [P11P01].Protheus11.dbo.ZBL010
                                                   WHERE  ZBL_FILIAL = 02))

    DECLARE xeventos CURSOR local FOR
      SELECT Isnull(Max(USR_ZR6010.DtOcorCom), '1899-12-31') dtocorCom
      FROM   USR_ZR6010

    OPEN xeventos;

    FETCH next FROM xeventos INTO @dtocorCom

    WHILE @@FETCH_STATUS = 0
      BEGIN
          BEGIN
              INSERT INTO USR_ZR6010
                          (Filial,
                           Doc,
                           Serie,
                           Fornec,
                           Loja,
                           ItemNF,
                           Item,
                           Perc,
                           CC,
                           Conta,
                           ItemCT,
                           CLVL,
                           Custo1,
                           Custo2,
                           Custo3,
                           Custo4,
                           Custo5,
                           ImpMet,
                           DtOcorCom,
                           HrOcor,
                           D_E_L_E_T_)
              SELECT CONVERT(VARCHAR(2), ESTNotasFiscaisEntrada.IdEmpresa)                                                          AS FILIAL,
                     RIGHT('000000000'
                           + CONVERT(VARCHAR, ESTNotasFiscaisEntrada.NumNota), 9)                                                   AS NUMDOC,
                     CONVERT(VARCHAR(3), ESTNotasFiscaisEntrada.Serie)                                                              AS SERDOC,
                     RIGHT('000000'
                           + CONVERT(VARCHAR, ESTNotasFiscaisEntrada.CliFor_Codigo), 6)                                             AS CODCLIFOR,
                     CONVERT(VARCHAR(2), '01')                                                                                      LOJA,
                     CONVERT(VARCHAR(50), ESTItemNotaEntrada.CodItem)                                                               AS CODPRO,
                     ESTItemNotaEntrada.NumSeq                                                                                      AS 'ITEM',
                     CONVERT(VARCHAR(9), ( Isnull(COMRateioFinanceiro.PercentualNoItem, 0) ))                                       PERC,
                     Isnull(Replace(FIN_CentroCusto.CCusto, '.', ''), '')                                                           CCUSTO,
                     CASE
                       WHEN Isnull(LEFT(ItensEstoque.usr_contadebito, 9), '') <> '' THEN Isnull(LEFT(Crm_Clientes.Usr_cpcontpadrao, 9), '')
                       ELSE ''
                     END                                                                                                            CONTA,
                     ''                                                                                                             AS ITEMCT,
                     ''                                                                                                             AS CLVL,
                     CONVERT(DECIMAL(14, 2), Isnull(COMRateioFinanceiro.PercentualNoItem, 0) * ESTItemNotaEntrada.ValorTotal / 100) AS CUSTO1,
                     ''                                                                                                             AS CUSTO2,
                     ''                                                                                                             AS CUSTO3,
                     ''                                                                                                             AS CUSTO4,
                     ''                                                                                                             AS CUSTO5,
                     '1'                                                                                                            AS IMPMET,
                     Isnull(LogMsgs.DtOcor, '1899-12-31')                                                                           AS DTOCORCOM,
                     Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 1, 2)
                     + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 4, 2)
                     + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 103), 7, 4)
                     + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 1, 2)
                     + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 4, 2)
                     + Substring(CONVERT(VARCHAR(10), LogMsgs.DtOcor, 108), 7, 2)                                                   AS HROCOR,
                     CONVERT(VARCHAR(1), '')                                                                                        AS D_E_L_E_T
              FROM   ESTItemNotaEntrada WITH(NOLOCK)
                     INNER JOIN ESTNotasFiscaisEntrada WITH(NOLOCK)
                             ON ESTNotasFiscaisEntrada.Objid = ESTItemNotaEntrada.Objid_NotasFiscaisEntrada
                     INNER JOIN ItensEstoque WITH(NOLOCK)
                             ON ItensEstoque.CodItem = ESTItemNotaEntrada.CodItem
                     INNER JOIN COMRateioFinanceiro
                             ON COMRateioFinanceiro.objiditemnota = ESTItemNotaEntrada.objid
                                AND Isnull(COMRateioFinanceiro.PercentualNoItem, 0) < 100
                     LEFT JOIN FIN_CentroCusto
                            ON FIN_CentroCusto.IdCCusto = COMRateioFinanceiro.IdCCusto
                     INNER JOIN EstGruposMateriais
                             ON EstGruposMateriais.CodGrupo = ItensEstoque.CodGrupo
                     LEFT JOIN EstLocaisEstoque
                            ON ItensEstoque.ObjIdLocalEstoquePadrao = EstLocaisEstoque.ObjID
                     INNER JOIN (SELECT idobj,
                                        DtOcor,
                                        Texto
                                 FROM   LogMsgs WITH(NOLOCK)
                                 WHERE  Texto IN ( 'NF Processada', 'Cancelado', 'N/D' )
                                        AND Entidade = 'COMPRAS')LogMsgs
                             ON LogMsgs.idobj = ESTNotasFiscaisEntrada.ObjID
                                AND Isnull(LogMsgs.DtOcor, '1899-12-31') >= '2014-12-01'
                     INNER JOIN Crm_Clientes WITH(NOLOCK)
                             ON Crm_Clientes.CodCliente = ESTNotasFiscaisEntrada.CliFor_Codigo
                     LEFT JOIN CTBTpTransacao
                            ON CTBTpTransacao.objid = ESTItemNotaEntrada.ObjIDTpTransacao
              WHERE  ESTNotasFiscaisEntrada.Situacao IN ( 1 )
                     AND LogMsgs.DtOcor > @dtocorCom
                     AND ( ( ESTNotasFiscaisEntrada.idEmpresa = 01
                             AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                 + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                 + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoMatriz )
                            OR ( ESTNotasFiscaisEntrada.idEmpresa = 02
                                 AND Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 7, 4)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 4, 2)
                                     + Substring(CONVERT(VARCHAR(10), ESTNotasFiscaisEntrada.DataEntrada, 103), 1, 2) > @dtFechamentoFilial ) )
          END

          FETCH next FROM xeventos INTO @dtocorCom
      END

    CLOSE xeventos

    DEALLOCATE xeventos

GO

USE [MT_Ibratec]

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 23/02/2015
-- Description:	Carregas as informações sobre as alterações na tabela que armazena informaçoes sobre as Declaraçoes de Importaçao 
-- para a tabela local de Integração "Usr_ZI5010"
-- =============================================
-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraDI]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraDI]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraDI]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integradi] (@objid  AS FLOAT,
                                           @objidi AS FLOAT)
AS
    INSERT INTO USR_ZI5010
                (Filial,
                 Doc,
                 Serie,
                 Espec,
                 Fornec,
                 Loja,
                 TPImp,
                 DocImp,
                 BsPIS,
                 AlPIS,
                 VlPIS,
                 BsCOF,
                 AlCOF,
                 VlCOF,
                 ACDRAW,
                 DtPPIS,
                 DtPCOF,
                 Local,
                 NDI,
                 DtDI,
                 LocDes,
                 UFDes,
                 DtDes,
                 CodExp,
                 NaDic,
                 SQADic,
                 CodFab,
                 VdeSDI,
                 BCImp,
                 DsPAD,
                 VlrII,
                 VlrIOF,
                 Item,
                 LojExp,
                 LojFab,
                 VTrans,
                 VaFRMM,
                 Interm,
                 CNPJAE,
                 UFTerc,
                 D_E_L_E_T_,
                 Objid,
                 ObjidI)
    SELECT RIGHT('0'
                 + CONVERT(VARCHAR(2), Isnull(NF.CodEmpresa, '')), 2)                                                                AS ZI5_FILIAL,
           RIGHT('000000000' + CONVERT(VARCHAR, NF.NumNota), 9)                                                                      AS ZI5_NUMDOC,
           CONVERT(VARCHAR(3), Isnull(LEFT(NF.SerieNota, 3), ''))                                                                    AS ZI5_SERIE,
           'NFE'                                                                                                                     AS ZI5_ESPRC,
           RIGHT('000000' + CONVERT(VARCHAR, NF.codcliente), 6)                                                                      AS ZI5_FORNEC,
           '01'                                                                                                                      AS ZI5_LOJA,
           '0'                                                                                                                       AS ZI5_TPIMP --Tipo de Importação: 0 Declaração de Importação 1 - declaração Simplificada
           ,
           Isnull(CONVERT(VARCHAR(20), DI.numerodeclaracao), '')                                                                     AS ZI5_DOCIMP --Número da DI
           ,
           Isnull(INF.baseimppis, 0)                                                                                                 AS ZI5_BSPIS --Base de Calculo do PIS
           ,
           Isnull(INF.aliquotaimppis, 0)                                                                                             AS ZI5_ALPIS -- Aliquota do PIS
           ,
           Isnull(INF.valorimppis, 0)                                                                                                AS ZI5_VLPIS -- valor do PIS
           ,
           Isnull(INF.baseimpcofins, 0)                                                                                              AS ZI5_BSCOF -- Base de Calculo do Cofins
           ,
           Isnull(INF.aliquotaimpcofins, 0)                                                                                          AS ZI5_ALCOF -- Aliquota do Cofins
           ,
           Isnull(INF.valorimpcofins, 0)                                                                                             ZI5_VLCOF -- Valor do Cofins 
           ,
           Isnull(CONVERT(VARCHAR(20), DI.NumDrawback), '')                                                                          AS ZI5_ACDRAW -- Numero do Drawback
           ,
           Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 7, 4)
           + Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 4, 2)
           + Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 1, 2)                                                             AS ZI5_DTPPIS,
           Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 7, 4)
           + Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 4, 2)
           + Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 1, 2)                                                             AS ZI5_DTPCOF,
           '1'                                                                                                                       AS ZI5_LOCAL,
           Isnull(CONVERT(VARCHAR(12), DI.numerodeclaracao), '')                                                                     AS ZI5_NDI -- Número da DI
           ,
           Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 7, 4)
           + Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 4, 2)
           + Substring(CONVERT(VARCHAR(10), DI.dataregistro, 103), 1, 2)                                                             AS ZI5_DTDI -- Data do Documento de Importaçao
           ,
           Isnull(CONVERT(VARCHAR(30), DI.localdesembaraco), '')                                                                     AS ZI5_LOCDES -- local de desembaraço
           ,
           Isnull(CONVERT(VARCHAR(2), ufdesembaraco), '')                                                                            AS ZI5_UFDES -- UF de Desembaraço
           ,
           Substring(CONVERT(VARCHAR(10), DI.datadesembaraco, 103), 7, 4)
           + Substring(CONVERT(VARCHAR(10), DI.datadesembaraco, 103), 4, 2)
           + Substring(CONVERT(VARCHAR(10), DI.datadesembaraco, 103), 1, 2)                                                          AS ZI5_DTDES -- Data de Desembaraço
           ,
           Isnull(CONVERT(VARCHAR(6), DI.codigoexportador), '')                                                                      AS ZI5_CODEXP -- Código Exportador
           ,
           Isnull(CONVERT(VARCHAR(3), DI.numeroadicao), '')                                                                          AS ZI5_NADIC -- Numero da Adiçao 
           ,
           Isnull(CONVERT(VARCHAR(3), DI.numeroadicao), '')                                                                          AS ZI5_SQADIC -- Sequencia da Adiçao
           ,
           Isnull(CONVERT(VARCHAR(6), DI.codigofabricante), '')                                                                      AS ZI5_CODFAB -- Codígo do Fabricante
           ,
           0                                                                                                                         AS ZI5_VDESDI,
           Isnull(INF.ValorTotal + INF.valorseguro
                  + INF.valorfrete + DI.DespesasAduaneirasII, 0)                                                                     AS ZI5_BCIMP,
           Isnull(DI.DespesasAduaneirasII, 0)                                                                                        AS ZI5_DSPAD,
           Isnull(DI.ValorII, 0)                                                                                                     AS ZI5_VLRII,
           Isnull(DI.ValorIOFII, 0)                                                                                                  AS ZI5_VLRIOF,
           INF.NumSeq                                                                                                                AS ZI5_ITEM,
           '01'                                                                                                                      AS ZI5_LOJEXP,
           '01'                                                                                                                      AS ZI5_LOJFAB,
           Isnull(DI.ViaTransporte, 0)                                                                                               AS ZI5_VTRANS,
           Isnull(DI.ValorAdicionalFrete, 0)                                                                                         AS ZI5_VAFRMM,
           Isnull(CONVERT(VARCHAR(1), DI.FormaImportacao), '')                                                                       AS ZI5_INTERM,
           Isnull(Replace(Replace(Replace(Ltrim(Rtrim(CONVERT(VARCHAR(18), Isnull(DI.CNPJ, '')))), '.', ''), '/', ''), '-', ''), '') AS ZI5_CNPJAE,
           Isnull(DI.UFTerceiro, '')                                                                                                 AS ZI5_UFTERC,
           ''                                                                                                                        AS D_E_L_E_T_,
           NF.ObjID                                                                                                                  AS ZI5_OBJID,
           INF.ObjID                                                                                                                 AS ZI5_OBJIDI
    FROM   declaracaoimportacao DI
           INNER JOIN ItemNota INF
                   ON INF.ObjID = DI.objiditemnota
           INNER JOIN NotasFiscais NF
                   ON NF.ObjID = DI.objidnota
    WHERE  ( NF.ObjID = @objid
             AND INF.ObjID = @objidi )

GO

USE [MT_Ibratec]

GO

-- =============================================
-- Nome da Trigger:	Usr_IntegracaoCliFor		
-- Descriçao:		Dispara a execução da Procedure que grava os registros do Cadastro de Clientes e Fornecedores
--					incluídos e alterados na tabela Usr_ZZ1010	do Metrics
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:	Usr_ZZ1010	
--						
--						
--						
-- =============================================
IF Object_id ('[dbo].[Usr_IntegracaoCliFor]', 'TR') IS NOT NULL
  DROP TRIGGER [dbo].[Usr_IntegracaoCliFor]

GO

CREATE TRIGGER [dbo].[Usr_IntegracaoCliFor]
ON [dbo].[Crm_Clientes]
after INSERT, UPDATE
AS
  BEGIN
      DECLARE @cod AS VARCHAR(20)
      DECLARE @versao AS INT

      SELECT @Cod = Codcliente,
             @Versao = Version
      FROM   Inserted

      EXEC Usr_sp_integraclifor
        @Cod,
        @Versao
  END

GO

ALTER TABLE [dbo].[Crm_Clientes]
  ENABLE TRIGGER [Usr_IntegracaoCliFor]

GO

USE [MT_Ibratec]

GO

-- =============================================
-- Nome da Trigger:	Usr_Integracao_DI		
-- Descriçao:		Dispara a execução da Procedure que grava os registros de Declaração de Importação
--					na tabela Usr_ZI5010 do Metrics
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:	Usr_ZI5010	
--						
--						
--						
-- =============================================
IF Object_id ('[dbo].[Usr_Integracao_DI]', 'TR') IS NOT NULL
  DROP TRIGGER [dbo].[Usr_Integracao_DI]

GO

CREATE TRIGGER [dbo].[Usr_Integracao_DI]
ON [dbo].[declaracaoimportacao]
after INSERT, UPDATE
AS
  BEGIN
      DECLARE @objid AS FLOAT
      DECLARE @objidi AS FLOAT

      SELECT @objid = objidnota,
             @objidi = objiditemnota
      FROM   Inserted

      EXEC Usr_sp_integradi
        @objid,
        @objidi
  END

GO

ALTER TABLE [dbo].[declaracaoimportacao]
  ENABLE TRIGGER [Usr_Integracao_DI]

GO

USE [MT_Ibratec]

GO

-- =============================================
-- Nome da Trigger:	Usr_IntegracaoProdutos		
-- Descriçao:		Dispara a execução da Procedure que grava os registros de Cadastros de Produtos 
--					na tabela Usr_ZZ4010 do Metrics
-- Proprietário:	Contabil/Fiscal    
-- Solicitante:		Contabil/Fiscal
-- Nro do Chamado:	
-- Agente:			Fernando Lima		
-- Programador:		Fernando Lima	
-- Data de Criaçao:	04/05/2017	
-- Dependencias:	Usr_ZZ4010	
--						
--						
--						
-- =============================================
IF Object_id ('[dbo].[Usr_IntegracaoProdutos]', 'TR') IS NOT NULL
  DROP TRIGGER [dbo].[Usr_IntegracaoProdutos]

GO

ALTER TRIGGER [dbo].[Usr_IntegracaoProdutos]
ON [dbo].[ItensEstoque]
after UPDATE
AS
  BEGIN
      DECLARE @cod AS VARCHAR(20)
      DECLARE @versao AS INT

      SELECT @Cod = CodItem,
             @Versao = Version
      FROM   Inserted

      EXEC Usr_sp_integraprodutos
        @cod,
        @versao
  END

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Cria o Linked Server entre os Servidores PWSQL01 e PWSQL02
-- =============================================
USE [master]

GO

EXEC master.dbo.Sp_dropserver
  @server=N'P11P01',
  @droplogins='droplogins'

GO

/****** Object:  LinkedServer [P11P01]    Script Date: 04/05/2017 14:51:59 ******/
EXEC master.dbo.Sp_addlinkedserver
  @server = N'P11P01',
  @srvproduct=N'',
  @provider=N'SQLNCLI'

/* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.Sp_addlinkedsrvlogin
  @rmtsrvname=N'P11P01',
  @useself=N'False',
  @locallogin=NULL,
  @rmtuser=N'dbo_metrics',
  @rmtpassword='########'

EXEC master.dbo.Sp_addlinkedsrvlogin
  @rmtsrvname=N'P11P01',
  @useself=N'True',
  @locallogin=N'dbo_metrics',
  @rmtuser=NULL,
  @rmtpassword=NULL

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'collation compatible',
  @optvalue=N'false'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'data access',
  @optvalue=N'true'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'dist',
  @optvalue=N'false'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'pub',
  @optvalue=N'false'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'rpc',
  @optvalue=N'true'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'rpc out',
  @optvalue=N'true'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'sub',
  @optvalue=N'false'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'connect timeout',
  @optvalue=N'0'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'collation name',
  @optvalue=NULL

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'lazy schema validation',
  @optvalue=N'false'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'query timeout',
  @optvalue=N'0'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'use remote collation',
  @optvalue=N'true'

GO

EXEC master.dbo.Sp_serveroption
  @server=N'P11P01',
  @optname=N'remote proc transaction promotion',
  @optvalue=N'true'

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Insere as informações de Cadastro de Clientes e Fornecedores na tabela de Integração do Protheus "ZZ1010"
-- =============================================
USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[USR_SP_IntegraCliFor_Protheus]'
                  AND SPECIFIC_NAME = N'[dbo].[USR_SP_IntegraCliFor_Protheus]')
  DROP PROCEDURE [dbo].[USR_SP_IntegraCliFor_Protheus]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integraclifor_protheus]
AS
    BEGIN TRY
        DECLARE @CursorCliFor AS INT = 0
        DECLARE @Filial VARCHAR(2)
        DECLARE @TPLan VARCHAR(1)
        DECLARE @CodCli VARCHAR(6)
        DECLARE @LojCli VARCHAR(2)
        DECLARE @NomCli VARCHAR(120)
        DECLARE @FanCli VARCHAR(60)
        DECLARE @TipCli VARCHAR(1)
        DECLARE @TipFor VARCHAR(1)
        DECLARE @EndCli VARCHAR(100)
        DECLARE @MunCli VARCHAR(60)
        DECLARE @EstCli VARCHAR(2)
        DECLARE @BaiCli VARCHAR(60)
        DECLARE @CEPCli VARCHAR(9)
        DECLARE @CGCCli VARCHAR(18)
        DECLARE @DATCli VARCHAR(8)
        DECLARE @INSCli VARCHAR(15)
        DECLARE @CodMun VARCHAR(5)
        DECLARE @CodPai VARCHAR(5)
        DECLARE @Pessoa VARCHAR(1)
        DECLARE @MoedaL VARCHAR(1)
        DECLARE @TMPVis VARCHAR(5)
        DECLARE @TMPSTD VARCHAR(5)
        DECLARE @B2B VARCHAR(5)
        DECLARE @Tel VARCHAR(15)
        DECLARE @Vincul VARCHAR(5)
        DECLARE @IDRep VARCHAR(5)
        DECLARE @PLCRRE VARCHAR(5)
        DECLARE @PLFil VARCHAR(5)
        DECLARE @TipDoc VARCHAR(1)
        DECLARE @ImpMet VARCHAR(1)
        DECLARE @Versao VARCHAR(8)
        DECLARE @ContaC VARCHAR(20)
        DECLARE @ContaF VARCHAR(20)
        DECLARE @ContaC2 VARCHAR(20)
        DECLARE @ContaF2 VARCHAR(20)
        DECLARE @CTAADC VARCHAR(20)
        DECLARE @CTAADF VARCHAR(20)
        DECLARE @D_E_L_E_T_ VARCHAR(1)
        DECLARE @StatusInt INT
        DECLARE @R_E_C_N_O_ INT
        DECLARE CursorCliFor CURSOR FOR
          SELECT Filial,
                 TPLan,
                 CodCli,
                 LojCli,
                 NomCli,
                 FanCli,
                 TipCli,
                 TipFor,
                 EndCli,
                 MunCli,
                 EstCli,
                 BaiCli,
                 CEPCli,
                 CGCCli,
                 DATCli,
                 INSCli,
                 CodMun,
                 CodPai,
                 Pessoa,
                 MoedaL,
                 TMPVis,
                 TMPSTD,
                 B2B,
                 Tel,
                 Vincul,
                 IDRep,
                 PLCRRE,
                 PLFil,
                 TipDoc,
                 ImpMet,
                 Versao,
                 ContaC,
                 ContaF,
                 ContaC2,
                 ContaF2,
                 CTAADC,
                 CTAADF,
                 D_E_L_E_T_,
                 StatusInt,
                 R_E_C_N_O_
          FROM   USR_ZZ1010
          WHERE  StatusInt = 0

        OPEN CursorCliFor

        FETCH next FROM CursorCliFor INTO @Filial,
                                          @TPLan,
                                          @CodCli,
                                          @LojCli,
                                          @NomCli,
                                          @FanCli,
                                          @TipCli,
                                          @TipFor,
                                          @EndCli,
                                          @MunCli,
                                          @EstCli,
                                          @BaiCli,
                                          @CEPCli,
                                          @CGCCli,
                                          @DATCli,
                                          @INSCli,
                                          @CodMun,
                                          @CodPai,
                                          @Pessoa,
                                          @MoedaL,
                                          @TMPVis,
                                          @TMPSTD,
                                          @B2B,
                                          @Tel,
                                          @Vincul,
                                          @IDRep,
                                          @PLCRRE,
                                          @PLFil,
                                          @TipDoc,
                                          @ImpMet,
                                          @Versao,
                                          @ContaC,
                                          @ContaF,
                                          @ContaC2,
                                          @ContaF2,
                                          @CTAADC,
                                          @CTAADF,
                                          @D_E_L_E_T_,
                                          @StatusInt,
                                          @R_E_C_N_O_

        WHILE @@FETCH_STATUS = 0
          BEGIN
              SET @CursorCliFor = @CursorCliFor + 1
              SET XACT_ABORT ON

              BEGIN TRAN

              INSERT INTO [P11P01].Protheus11.dbo.ZZ1010
                          (ZZ1_FILIAL,
                           ZZ1_TPLAN,
                           ZZ1_CODCLI,
                           ZZ1_LOJCLI,
                           ZZ1_NOMCLI,
                           ZZ1_FANCLI,
                           ZZ1_TIPCLI,
                           ZZ1_TIPFOR,
                           ZZ1_ENDCLI,
                           ZZ1_MUNCLI,
                           ZZ1_ESTCLI,
                           ZZ1_BAICLI,
                           ZZ1_CEPCLI,
                           ZZ1_CGCCLI,
                           ZZ1_DATCLI,
                           ZZ1_INSCLI,
                           ZZ1_CODMUN,
                           ZZ1_CODPAI,
                           ZZ1_PESSOA,
                           ZZ1_MOEDAL,
                           ZZ1_TMPVIS,
                           ZZ1_TMPSTD,
                           ZZ1_B2B,
                           ZZ1_TEL,
                           ZZ1_VINCUL,
                           ZZ1_ID_REP,
                           ZZ1_PLCRRE,
                           ZZ1_PLFIL,
                           ZZ1_TIPDOC,
                           ZZ1_IMPMET,
                           ZZ1_VERSAO,
                           ZZ1_CONTAC,
                           ZZ1_CONTAF,
                           ZZ1_CONTC2,
                           ZZ1_CONTF2,
                           ZZ1_CTAADC,
                           ZZ1_CTAADF,
                           D_E_L_E_T_,
                           R_E_C_N_O_)
              VALUES      ( @Filial,
                            @TPLan,
                            @CodCli,
                            @LojCli,
                            @NomCli,
                            @FanCli,
                            @TipCli,
                            @TipFor,
                            @EndCli,
                            @MunCli,
                            @EstCli,
                            @BaiCli,
                            @CEPCli,
                            @CGCCli,
                            @DATCli,
                            @INSCli,
                            @CodMun,
                            @CodPai,
                            @Pessoa,
                            @MoedaL,
                            @TMPVis,
                            @TMPSTD,
                            @B2B,
                            @Tel,
                            @Vincul,
                            @IDRep,
                            @PLCRRE,
                            @PLFil,
                            @TipDoc,
                            @ImpMet,
                            @Versao,
                            @ContaC,
                            @ContaF,
                            @ContaC2,
                            @ContaF2,
                            @CTAADC,
                            @CTAADF,
                            @D_E_L_E_T_,
                            @R_E_C_N_O_ )

              UPDATE Usr_ZZ1010
              SET    StatusInt = 1
              WHERE  R_E_C_N_O_ = @R_E_C_N_O_

              COMMIT TRAN

              FETCH next FROM CursorCliFor INTO @Filial,
                                                @TPLan,
                                                @CodCli,
                                                @LojCli,
                                                @NomCli,
                                                @FanCli,
                                                @TipCli,
                                                @TipFor,
                                                @EndCli,
                                                @MunCli,
                                                @EstCli,
                                                @BaiCli,
                                                @CEPCli,
                                                @CGCCli,
                                                @DATCli,
                                                @INSCli,
                                                @CodMun,
                                                @CodPai,
                                                @Pessoa,
                                                @MoedaL,
                                                @TMPVis,
                                                @TMPSTD,
                                                @B2B,
                                                @Tel,
                                                @Vincul,
                                                @IDRep,
                                                @PLCRRE,
                                                @PLFil,
                                                @TipDoc,
                                                @ImpMet,
                                                @Versao,
                                                @ContaC,
                                                @ContaF,
                                                @ContaC2,
                                                @ContaF2,
                                                @CTAADC,
                                                @CTAADF,
                                                @D_E_L_E_T_,
                                                @StatusInt,
                                                @R_E_C_N_O_
          END

        CLOSE CursorCliFor

        DEALLOCATE CursorCliFor
    END TRY
    BEGIN CATCH
        ROLLBACK TRAN
        UPDATE Usr_ZZ1010
        SET    StatusInt = 2
        WHERE  R_E_C_N_O_ = @R_E_C_N_O_
        CLOSE CursorCliFor
        DEALLOCATE CursorCliFor
    END CATCH

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Insere as informações de Cadastro de Profutos tabela de Integração do Protheus "ZZ4010"
-- =============================================
USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraProdutos_Protheus]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraProdutos_Protheus]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraProdutos_Protheus]

GO

ALTER PROCEDURE [dbo].[Usr_sp_integraprodutos_protheus]
AS
    BEGIN TRY
        DECLARE @CursorProdutos AS INT = 0
        DECLARE @FILIAL VARCHAR(2)
        DECLARE @COD VARCHAR(20)
        DECLARE @DESC VARCHAR(100)
        DECLARE @LOCPAD VARCHAR(2)
        DECLARE @UM VARCHAR(2)
        DECLARE @GRUPO VARCHAR(4)
        DECLARE @POSIPI VARCHAR(10)
        DECLARE @TIPO VARCHAR(2)
        DECLARE @TIPCON VARCHAR(1)
        DECLARE @MCUSTD VARCHAR(1)
        DECLARE @APROPR VARCHAR(1)
        DECLARE @TIPODE VARCHAR(1)
        DECLARE @RASTRO VARCHAR(1)
        DECLARE @MRP VARCHAR(1)
        DECLARE @CODBAR VARCHAR(15)
        DECLARE @LOCALI VARCHAR(1)
        DECLARE @CONTRA VARCHAR(1)
        DECLARE @IMPORT VARCHAR(1)
        DECLARE @ANUENT VARCHAR(1)
        DECLARE @TIPOCQ VARCHAR(1)
        DECLARE @SOLICI VARCHAR(1)
        DECLARE @INSS VARCHAR(1)
        DECLARE @FLAGSU VARCHAR(1)
        DECLARE @CLASSV VARCHAR(1)
        DECLARE @MIDIA VARCHAR(1)
        DECLARE @ENVOBR VARCHAR(1)
        DECLARE @QTDSER FLOAT(8)
        DECLARE @ATIVO VARCHAR(1)
        DECLARE @TIPCNV VARCHAR(1)
        DECLARE @CPOTEN VARCHAR(1)
        DECLARE @IMPMET VARCHAR(1)
        DECLARE @VERSAO INT
        DECLARE @CONTA VARCHAR(20)
        DECLARE @CONTA2 VARCHAR(20)
        DECLARE @D_E_L_E_T_ VARCHAR(1)
        DECLARE @DTINCLUSAO DATETIME
        DECLARE @CODNEW VARCHAR(20)
        DECLARE @STATUS_INTEGRACAO INT
        DECLARE @R_E_C_N_O_ INT
        DECLARE CursorProdutos CURSOR FOR
          SELECT Filial,
                 Cod,
                 Descricao,
                 LocPad,
                 UM,
                 Grupo,
                 PosIPI,
                 Tipo,
                 TipCon,
                 MCustD,
                 Apropr,
                 TipoDE,
                 Rastro,
                 MRP,
                 CodBar,
                 Locali,
                 Contra,
                 Import,
                 Anuent,
                 TipoCQ,
                 Solici,
                 INSS,
                 FlagSU,
                 ClassV,
                 Midia,
                 EnvoBR,
                 QtdSer,
                 Ativo,
                 TipCNV,
                 CpoTen,
                 ImpMet,
                 Versao,
                 Conta,
                 Conta2,
                 D_E_L_E_T_,
                 DtInclusao,
                 CodNew,
                 StatusInt,
                 R_E_C_N_O_
          FROM   Usr_ZZ4010
          WHERE  StatusInt = 0

        OPEN CursorProdutos

        FETCH next FROM CursorProdutos INTO @FILIAL,
                                            @COD,
                                            @DESC,
                                            @LOCPAD,
                                            @UM,
                                            @GRUPO,
                                            @POSIPI,
                                            @TIPO,
                                            @TIPCON,
                                            @MCUSTD,
                                            @APROPR,
                                            @TIPODE,
                                            @RASTRO,
                                            @MRP,
                                            @CODBAR,
                                            @LOCALI,
                                            @CONTRA,
                                            @IMPORT,
                                            @ANUENT,
                                            @TIPOCQ,
                                            @SOLICI,
                                            @INSS,
                                            @FLAGSU,
                                            @CLASSV,
                                            @MIDIA,
                                            @ENVOBR,
                                            @QTDSER,
                                            @ATIVO,
                                            @TIPCNV,
                                            @CPOTEN,
                                            @IMPMET,
                                            @VERSAO,
                                            @CONTA,
                                            @CONTA2,
                                            @D_E_L_E_T_,
                                            @DTINCLUSAO,
                                            @CODNEW,
                                            @STATUS_INTEGRACAO,
                                            @R_E_C_N_O_

        WHILE @@FETCH_STATUS = 0
          BEGIN
              SET @CursorProdutos = @CursorProdutos + 1
              SET XACT_ABORT ON

              BEGIN TRAN

              INSERT INTO [P11P01].Protheus11.dbo.ZZ4010
                          (ZZ4_FILIAL,
                           ZZ4_COD,
                           ZZ4_DESC,
                           ZZ4_LOCPAD,
                           ZZ4_UM,
                           ZZ4_GRUPO,
                           ZZ4_POSIPI,
                           ZZ4_TIPO,
                           ZZ4_TIPCON,
                           ZZ4_MCUSTD,
                           ZZ4_APROPR,
                           ZZ4_TIPODE,
                           ZZ4_RASTRO,
                           ZZ4_MRP,
                           ZZ4_CODBAR,
                           ZZ4_LOCALI,
                           ZZ4_CONTRA,
                           ZZ4_IMPORT,
                           ZZ4_ANUENT,
                           ZZ4_TIPOCQ,
                           ZZ4_SOLICI,
                           ZZ4_INSS,
                           ZZ4_FLAGSU,
                           ZZ4_CLASSV,
                           ZZ4_MIDIA,
                           ZZ4_ENVOBR,
                           ZZ4_QTDSER,
                           ZZ4_ATIVO,
                           ZZ4_TIPCNV,
                           ZZ4_CPOTEN,
                           ZZ4_IMPMET,
                           ZZ4_VERSAO,
                           ZZ4_CONTA,
                           ZZ4_CONTA2,
                           D_E_L_E_T_,
                           ZZ4_DTINCLUSAO,
                           ZZ4_CODNEW,
                           R_E_C_N_O_)
              VALUES      ( @FILIAL,
                            @COD,
                            @DESC,
                            @LOCPAD,
                            @UM,
                            @GRUPO,
                            @POSIPI,
                            @TIPO,
                            @TIPCON,
                            @MCUSTD,
                            @APROPR,
                            @TIPODE,
                            @RASTRO,
                            @MRP,
                            @CODBAR,
                            @LOCALI,
                            @CONTRA,
                            @IMPORT,
                            @ANUENT,
                            @TIPOCQ,
                            @SOLICI,
                            @INSS,
                            @FLAGSU,
                            @CLASSV,
                            @MIDIA,
                            @ENVOBR,
                            @QTDSER,
                            @ATIVO,
                            @TIPCNV,
                            @CPOTEN,
                            @IMPMET,
                            @VERSAO,
                            @CONTA,
                            @CONTA2,
                            @D_E_L_E_T_,
                            @DTINCLUSAO,
                            @CODNEW,
                            @R_E_C_N_O_ )

              UPDATE Usr_ZZ4010
              SET    StatusInt = 1
              WHERE  R_E_C_N_O_ = @R_E_C_N_O_

              COMMIT TRAN

              FETCH next FROM CursorProdutos INTO @FILIAL,
                                                  @COD,
                                                  @DESC,
                                                  @LOCPAD,
                                                  @UM,
                                                  @GRUPO,
                                                  @POSIPI,
                                                  @TIPO,
                                                  @TIPCON,
                                                  @MCUSTD,
                                                  @APROPR,
                                                  @TIPODE,
                                                  @RASTRO,
                                                  @MRP,
                                                  @CODBAR,
                                                  @LOCALI,
                                                  @CONTRA,
                                                  @IMPORT,
                                                  @ANUENT,
                                                  @TIPOCQ,
                                                  @SOLICI,
                                                  @INSS,
                                                  @FLAGSU,
                                                  @CLASSV,
                                                  @MIDIA,
                                                  @ENVOBR,
                                                  @QTDSER,
                                                  @ATIVO,
                                                  @TIPCNV,
                                                  @CPOTEN,
                                                  @IMPMET,
                                                  @VERSAO,
                                                  @CONTA,
                                                  @CONTA2,
                                                  @D_E_L_E_T_,
                                                  @DTINCLUSAO,
                                                  @CODNEW,
                                                  @STATUS_INTEGRACAO,
                                                  @R_E_C_N_O_
          END

        CLOSE CursorProdutos

        DEALLOCATE CursorProdutos
    END TRY
    BEGIN CATCH
        ROLLBACK TRAN
        UPDATE Usr_ZZ4010
        SET    StatusInt = 2
        WHERE  R_E_C_N_O_ = @R_E_C_N_O_
        CLOSE CursorProdutos
        DEALLOCATE CursorProdutos
    END CATCH

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Insere as informações de Cabeçalhos de Notas Fiscais na tabela de Integração do Protheus "ZZ5010"
-- =============================================
USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_SP_IntegraNotas_Protheus]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_SP_IntegraNotas_Protheus]')
  DROP PROCEDURE [dbo].[Usr_SP_IntegraNotas_Protheus]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integranotas_protheus]
AS
    BEGIN Try
        DECLARE @CursorNotas AS INT = 0
        DECLARE @Filial VARCHAR(2)
        DECLARE @TpLan VARCHAR(1)
        DECLARE @NumDoc VARCHAR(9)
        DECLARE @SerDoc VARCHAR(3)
        DECLARE @CodCli VARCHAR(6)
        DECLARE @Loja VARCHAR(2)
        DECLARE @DatEmi VARCHAR(8)
        DECLARE @EstDoc VARCHAR(2)
        DECLARE @ValFre VARCHAR(16)
        DECLARE @ValSeg VARCHAR(16)
        DECLARE @ICMFre VARCHAR(16)
        DECLARE @ValBru VARCHAR(16)
        DECLARE @ValICM VARCHAR(16)
        DECLARE @BasICM VARCHAR(16)
        DECLARE @ValIPI VARCHAR(16)
        DECLARE @BasIPI VARCHAR(16)
        DECLARE @ValMer VARCHAR(16)
        DECLARE @BasISS VARCHAR(16)
        DECLARE @ValISS VARCHAR(16)
        DECLARE @ValCSL VARCHAR(16)
        DECLARE @ValDes VARCHAR(16)
        DECLARE @CodCFO VARCHAR(5)
        DECLARE @Observ VARCHAR(30)
        DECLARE @Propri VARCHAR(1)
        DECLARE @Tipo VARCHAR(1)
        DECLARE @CampoA VARCHAR(1)
        DECLARE @BasCOF VARCHAR(16)
        DECLARE @ValCOF VARCHAR(16)
        DECLARE @BasPIS VARCHAR(16)
        DECLARE @ValPIS VARCHAR(16)
        DECLARE @Cond VARCHAR(3)
        DECLARE @TipoCL VARCHAR(1)
        DECLARE @Especi VARCHAR(5)
        DECLARE @ChvNfe VARCHAR(44)
        DECLARE @DocSai VARCHAR(9)
        DECLARE @SerSai VARCHAR(3)
        DECLARE @ValDsc VARCHAR(16)
        DECLARE @DatDig VARCHAR(8)
        DECLARE @BasFre VARCHAR(16)
        DECLARE @ValIRF VARCHAR(16)
        DECLARE @NotOri VARCHAR(6)
        DECLARE @SerOri VARCHAR(3)
        DECLARE @BasINS VARCHAR(16)
        DECLARE @ValINS VARCHAR(16)
        DECLARE @ReduIC VARCHAR(1)
        DECLARE @ReduIP VARCHAR(1)
        DECLARE @DocEnt VARCHAR(9)
        DECLARE @SerEnt VARCHAR(3)
        DECLARE @OrigLa VARCHAR(2)
        DECLARE @Status VARCHAR(5)
        DECLARE @RecbMt VARCHAR(8)
        DECLARE @TipLan VARCHAR(1)
        DECLARE @TpFre VARCHAR(1)
        DECLARE @ImpMet VARCHAR(1)
        DECLARE @DtOcor DATETIME
        DECLARE @HrOcor VARCHAR(20)
        DECLARE @D_E_L_E_T_ VARCHAR(1)
        DECLARE @DtOcom DATETIME
        DECLARE @DtFat DATETIME
        DECLARE @Objid FLOAT
        DECLARE @CodSef VARCHAR(3)
        DECLARE @RecSef VARCHAR(50)
        DECLARE @StatusInt INT
        DECLARE @R_E_C_N_O_ INT
        DECLARE CursorNotas CURSOR FOR
          SELECT Filial,
                 TpLan,
                 NumDoc,
                 SerDoc,
                 CodCli,
                 Loja,
                 DatEmi,
                 EstDoc,
                 ValFre,
                 ValSeg,
                 ICMFre,
                 ValBru,
                 ValICM,
                 BasICM,
                 ValIPI,
                 BasIPI,
                 ValMer,
                 BasISS,
                 ValISS,
                 ValCSL,
                 ValDes,
                 CodCFO,
                 Observ,
                 Propri,
                 Tipo,
                 CampoA,
                 BasCOF,
                 ValCOF,
                 BasPIS,
                 ValPIS,
                 Cond,
                 TipoCL,
                 Especi,
                 ChvNfe,
                 DocSai,
                 SerSai,
                 ValDsc,
                 DatDig,
                 BasFre,
                 ValIRF,
                 NotOri,
                 SerOri,
                 BasINS,
                 ValINS,
                 ReduIC,
                 ReduIP,
                 DocEnt,
                 SerEnt,
                 OrigLa,
                 Status,
                 RecbMt,
                 TipLan,
                 TpFre,
                 ImpMet,
                 DtOcor,
                 HrOcor,
                 D_E_L_E_T_,
                 DtOcom,
                 DtFat,
                 Objid,
                 CodSef,
                 RecSef,
                 StatusInt,
                 R_E_C_N_O_
          FROM   Usr_ZZ5010
          WHERE  StatusInt = 0

        OPEN CursorNotas

        FETCH Next FROM CursorNotas INTO @Filial,
                                         @TpLan,
                                         @NumDoc,
                                         @SerDoc,
                                         @CodCli,
                                         @Loja,
                                         @DatEmi,
                                         @EstDoc,
                                         @ValFre,
                                         @ValSeg,
                                         @ICMFre,
                                         @ValBru,
                                         @ValICM,
                                         @BasICM,
                                         @ValIPI,
                                         @BasIPI,
                                         @ValMer,
                                         @BasISS,
                                         @ValISS,
                                         @ValCSL,
                                         @ValDes,
                                         @CodCFO,
                                         @Observ,
                                         @Propri,
                                         @Tipo,
                                         @CampoA,
                                         @BasCOF,
                                         @ValCOF,
                                         @BasPIS,
                                         @ValPIS,
                                         @Cond,
                                         @TipoCL,
                                         @Especi,
                                         @ChvNfe,
                                         @DocSai,
                                         @SerSai,
                                         @ValDsc,
                                         @DatDig,
                                         @BasFre,
                                         @ValIRF,
                                         @NotOri,
                                         @SerOri,
                                         @BasINS,
                                         @ValINS,
                                         @ReduIC,
                                         @ReduIP,
                                         @DocEnt,
                                         @SerEnt,
                                         @OrigLa,
                                         @Status,
                                         @RecbMt,
                                         @TipLan,
                                         @TpFre,
                                         @ImpMet,
                                         @DtOcor,
                                         @HrOcor,
                                         @D_E_L_E_T_,
                                         @DtOcom,
                                         @DtFat,
                                         @Objid,
                                         @CodSef,
                                         @RecSef,
                                         @StatusInt,
                                         @R_E_C_N_O_

        WHILE @@FETCH_STATUS = 0
          BEGIN
              SET @CursorNotas = @CursorNotas + 1
              SET XACT_ABORT ON

              BEGIN TRAN

              INSERT INTO [P11P01].Protheus11.dbo.ZZ5010
                          (ZZ5_FILIAL,
                           ZZ5_TPLAN,
                           ZZ5_NUMDOC,
                           ZZ5_SERDOC,
                           ZZ5_CODCLI,
                           ZZ5_LOJA,
                           ZZ5_DATEMI,
                           ZZ5_ESTDOC,
                           ZZ5_VALFRE,
                           ZZ5_VALSEG,
                           ZZ5_ICMFRE,
                           ZZ5_VALBRU,
                           ZZ5_VALICM,
                           ZZ5_BASICM,
                           ZZ5_VALIPI,
                           ZZ5_BASIPI,
                           ZZ5_VALMER,
                           ZZ5_BASISS,
                           ZZ5_VALISS,
                           ZZ5_VALCSL,
                           ZZ5_VALDES,
                           ZZ5_CODCFO,
                           ZZ5_OBSERV,
                           ZZ5_PROPRI,
                           ZZ5_TIPO,
                           ZZ5_CAMPOA,
                           ZZ5_BASCOF,
                           ZZ5_VALCOF,
                           ZZ5_BASPIS,
                           ZZ5_VALPIS,
                           ZZ5_COND,
                           ZZ5_TIPOCL,
                           ZZ5_ESPECI,
                           ZZ5_CHVNFE,
                           ZZ5_DOCSAI,
                           ZZ5_SERSAI,
                           ZZ5_VALDSC,
                           ZZ5_DATDIG,
                           ZZ5_BASFRE,
                           ZZ5_VALIRF,
                           ZZ5_NOTORI,
                           ZZ5_SERORI,
                           ZZ5_BASINS,
                           ZZ5_VALINS,
                           ZZ5_REDUIC,
                           ZZ5_REDUIP,
                           ZZ5_DOCENT,
                           ZZ5_SERENT,
                           ZZ5_ORIGLA,
                           ZZ5_STATUS,
                           ZZ5_RECBMT,
                           ZZ5_TIPLAN,
                           ZZ5_TPFRET,
                           ZZ5_IMPMET,
                           ZZ5_DTOCOR,
                           ZZ5_HROCOR,
                           D_E_L_E_T_,
                           ZZ5_DTOCOM,
                           ZZ5_DTOFAT,
                           ZZ5_OBJID,
                           ZZ5_CODSEF,
                           ZZ5_RECSEF,
                           R_E_C_N_O_)
              VALUES      ( @Filial,
                            @TpLan,
                            @NumDoc,
                            @SerDoc,
                            @CodCli,
                            @Loja,
                            @DatEmi,
                            @EstDoc,
                            @ValFre,
                            @ValSeg,
                            @ICMFre,
                            @ValBru,
                            @ValICM,
                            @BasICM,
                            @ValIPI,
                            @BasIPI,
                            @ValMer,
                            @BasISS,
                            @ValISS,
                            @ValCSL,
                            @ValDes,
                            @CodCFO,
                            @Observ,
                            @Propri,
                            @Tipo,
                            @CampoA,
                            @BasCOF,
                            @ValCOF,
                            @BasPIS,
                            @ValPIS,
                            @Cond,
                            @TipoCL,
                            @Especi,
                            @ChvNfe,
                            @DocSai,
                            @SerSai,
                            @ValDsc,
                            @DatDig,
                            @BasFre,
                            @ValIRF,
                            @NotOri,
                            @SerOri,
                            @BasINS,
                            @ValINS,
                            @ReduIC,
                            @ReduIP,
                            @DocEnt,
                            @SerEnt,
                            @OrigLa,
                            @Status,
                            @RecbMt,
                            @TipLan,
                            @TpFre,
                            @ImpMet,
                            @DtOcor,
                            @HrOcor,
                            @D_E_L_E_T_,
                            @DtOcom,
                            @DtFat,
                            @Objid,
                            @CodSef,
                            @RecSef,
                            @R_E_C_N_O_ )

              UPDATE Usr_ZZ5010
              SET    StatusInt = 1
              WHERE  R_E_C_N_O_ = @R_E_C_N_O_

              COMMIT TRAN

              FETCH Next FROM CursorNotas INTO @Filial,
                                               @TpLan,
                                               @NumDoc,
                                               @SerDoc,
                                               @CodCli,
                                               @Loja,
                                               @DatEmi,
                                               @EstDoc,
                                               @ValFre,
                                               @ValSeg,
                                               @ICMFre,
                                               @ValBru,
                                               @ValICM,
                                               @BasICM,
                                               @ValIPI,
                                               @BasIPI,
                                               @ValMer,
                                               @BasISS,
                                               @ValISS,
                                               @ValCSL,
                                               @ValDes,
                                               @CodCFO,
                                               @Observ,
                                               @Propri,
                                               @Tipo,
                                               @CampoA,
                                               @BasCOF,
                                               @ValCOF,
                                               @BasPIS,
                                               @ValPIS,
                                               @Cond,
                                               @TipoCL,
                                               @Especi,
                                               @ChvNfe,
                                               @DocSai,
                                               @SerSai,
                                               @ValDsc,
                                               @DatDig,
                                               @BasFre,
                                               @ValIRF,
                                               @NotOri,
                                               @SerOri,
                                               @BasINS,
                                               @ValINS,
                                               @ReduIC,
                                               @ReduIP,
                                               @DocEnt,
                                               @SerEnt,
                                               @OrigLa,
                                               @Status,
                                               @RecbMt,
                                               @TipLan,
                                               @TpFre,
                                               @ImpMet,
                                               @DtOcor,
                                               @HrOcor,
                                               @D_E_L_E_T_,
                                               @DtOcom,
                                               @DtFat,
                                               @Objid,
                                               @CodSef,
                                               @RecSef,
                                               @StatusInt,
                                               @R_E_C_N_O_
          END

        CLOSE CursorNotas

        DEALLOCATE CursorNotas
    END Try
    BEGIN Catch
        ROLLBACK TRAN
        UPDATE Usr_ZZ5010
        SET    StatusInt = 2
        WHERE  R_E_C_N_O_ = @R_E_C_N_O_
        CLOSE CursorNotas
        DEALLOCATE CursorNotas
    END Catch

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Insere as informações de Cabeçalhos de  Itens de Notas Fiscais na tabela de Integração do Protheus "ZZ3010"
-- =============================================
USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_sp_integraitensnotas_protheus]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_sp_integraitensnotas_protheus]')
  DROP PROCEDURE [dbo].[Usr_sp_integraitensnotas_protheus]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integraitensnotas_protheus]
AS
    BEGIN Try
        DECLARE @CursorItensNotas AS INT = 0
        DECLARE @Filial VARCHAR(2)
        DECLARE @TpLan VARCHAR(1)
        DECLARE @NumIte VARCHAR(2)
        DECLARE @CodZer VARCHAR(5)
        DECLARE @CodPro VARCHAR(20)
        DECLARE @UniMed VARCHAR(2)
        DECLARE @Qtdven VARCHAR(16)
        DECLARE @ValVen VARCHAR(18)
        DECLARE @ValTot VARCHAR(16)
        DECLARE @ValIPI VARCHAR(16)
        DECLARE @ValICM VARCHAR(16)
        DECLARE @Grupo VARCHAR(4)
        DECLARE @Tp VARCHAR(2)
        DECLARE @NumSeq VARCHAR(6)
        DECLARE @OrigLa VARCHAR(2)
        DECLARE @CodTes VARCHAR(3)
        DECLARE @CodCFO VARCHAR(5)
        DECLARE @PerDes VARCHAR(7)
        DECLARE @PerIPI VARCHAR(7)
        DECLARE @PerICM VARCHAR(7)
        DECLARE @NumPed VARCHAR(6)
        DECLARE @ItemPV VARCHAR(2)
        DECLARE @CodCli VARCHAR(6)
        DECLARE @Loja VARCHAR(2)
        DECLARE @CodLoc VARCHAR(2)
        DECLARE @DatEmi VARCHAR(8)
        DECLARE @SerDoc VARCHAR(3)
        DECLARE @TipDoc VARCHAR(1)
        DECLARE @NumDoc VARCHAR(9)
        DECLARE @EstDoc VARCHAR(2)
        DECLARE @BasIPI VARCHAR(16)
        DECLARE @BasICM VARCHAR(16)
        DECLARE @TipICM VARCHAR(1)
        DECLARE @TipIPI VARCHAR(1)
        DECLARE @TipISS VARCHAR(1)
        DECLARE @PosIPI VARCHAR(8)
        DECLARE @SitTri VARCHAR(3)
        DECLARE @ValDsc VARCHAR(16)
        DECLARE @Descri VARCHAR(60)
        DECLARE @CoCIAP VARCHAR(1)
        DECLARE @CampoA VARCHAR(1)
        DECLARE @BasCOF VARCHAR(16)
        DECLARE @ValCOF VARCHAR(16)
        DECLARE @AliCOF VARCHAR(6)
        DECLARE @BasPIS VARCHAR(16)
        DECLARE @ValPIS VARCHAR(16)
        DECLARE @DatDig VARCHAR(8)
        DECLARE @DocSai VARCHAR(9)
        DECLARE @SerSai VARCHAR(3)
        DECLARE @AliPis VARCHAR(6)
        DECLARE @TipCom VARCHAR(1)
        DECLARE @VarFre VARCHAR(16)
        DECLARE @TipLan VARCHAR(1)
        DECLARE @ImpMet VARCHAR(1)
        DECLARE @DtOcor DATETIME
        DECLARE @CCusto VARCHAR(9)
        DECLARE @Conta VARCHAR(20)
        DECLARE @HrOcor VARCHAR(20)
        DECLARE @NotOri VARCHAR(9)
        DECLARE @SerOri VARCHAR(3)
        DECLARE @D_E_L_E_T_ VARCHAR(1)
        DECLARE @DtOCom DATETIME
        DECLARE @DtOFat DATETIME
        DECLARE @BrICMS VARCHAR(16)
        DECLARE @ICMSRe VARCHAR(16)
        DECLARE @BasISS VARCHAR(16)
        DECLARE @AlqISS VARCHAR(6)
        DECLARE @ValISS VARCHAR(16)
        DECLARE @BasINS VARCHAR(16)
        DECLARE @AlqINS VARCHAR(6)
        DECLARE @ValINS VARCHAR(16)
        DECLARE @BasIRF VARCHAR(16)
        DECLARE @AlqIRF VARCHAR(6)
        DECLARE @ValIRF VARCHAR(16)
        DECLARE @AlqPIS VARCHAR(6)
        DECLARE @AlqCOF VARCHAR(6)
        DECLARE @BasCSL VARCHAR(16)
        DECLARE @AlqCSL VARCHAR(6)
        DECLARE @ValCSL VARCHAR(16)
        DECLARE @BasIMS VARCHAR(16)
        DECLARE @AlqIMS VARCHAR(6)
        DECLARE @ValIMS VARCHAR(16)
        DECLARE @BasIM6 VARCHAR(16)
        DECLARE @AlqIM6 VARCHAR(6)
        DECLARE @ValIM6 VARCHAR(16)
        DECLARE @ValDes VARCHAR(16)
        DECLARE @Objid FLOAT
        DECLARE @ObjidI FLOAT
        DECLARE @CodNew VARCHAR(20)
        DECLARE @IteOri VARCHAR(4)
        DECLARE @StatusInt INT
        DECLARE @R_E_C_N_O_ INT
        DECLARE CursorItensNotas CURSOR FOR
          SELECT Filial,
                 TpLan,
                 NumIte,
                 CodZer,
                 CodPro,
                 UniMed,
                 Qtdven,
                 ValVen,
                 ValTot,
                 ValIPI,
                 ValICM,
                 Grupo,
                 Tp,
                 NumSeq,
                 OrigLa,
                 CodTes,
                 CodCFO,
                 PerDes,
                 PerIPI,
                 PerICM,
                 NumPed,
                 ItemPV,
                 CodCli,
                 Loja,
                 CodLoc,
                 DatEmi,
                 SerDoc,
                 TipDoc,
                 NumDoc,
                 EstDoc,
                 BasIPI,
                 BasICM,
                 TipICM,
                 TipIPI,
                 TipISS,
                 PosIPI,
                 SitTri,
                 ValDsc,
                 Descri,
                 CoCIAP,
                 CampoA,
                 BasCOF,
                 ValCOF,
                 AliCOF,
                 BasPIS,
                 ValPIS,
                 DatDig,
                 DocSai,
                 SerSai,
                 AliPis,
                 TipCom,
                 VarFre,
                 TipLan,
                 ImpMet,
                 DtOcor,
                 CCusto,
                 Conta,
                 HrOcor,
                 NotOri,
                 SerOri,
                 D_E_L_E_T_,
                 DtOCom,
                 DtOFat,
                 BrICMS,
                 ICMSRe,
                 BasISS,
                 AlqISS,
                 ValISS,
                 BasINS,
                 AlqINS,
                 ValINS,
                 BasIRF,
                 AlqIRF,
                 ValIRF,
                 AlqPIS,
                 AlqCOF,
                 BasCSL,
                 AlqCSL,
                 ValCSL,
                 BasIMS,
                 AlqIMS,
                 ValIMS,
                 BasIM6,
                 AlqIM6,
                 ValIM6,
                 ValDes,
                 Objid,
                 ObjidI,
                 CodNew,
                 IteOri,
                 StatusInt,
                 R_E_C_N_O_
          FROM   USR_ZZ3010
          WHERE  StatusInt = 0

        OPEN CursorItensNotas

        FETCH Next FROM CursorItensNotas INTO @Filial,
                                              @TpLan,
                                              @NumIte,
                                              @CodZer,
                                              @CodPro,
                                              @UniMed,
                                              @Qtdven,
                                              @ValVen,
                                              @ValTot,
                                              @ValIPI,
                                              @ValICM,
                                              @Grupo,
                                              @Tp,
                                              @NumSeq,
                                              @OrigLa,
                                              @CodTes,
                                              @CodCFO,
                                              @PerDes,
                                              @PerIPI,
                                              @PerICM,
                                              @NumPed,
                                              @ItemPV,
                                              @CodCli,
                                              @Loja,
                                              @CodLoc,
                                              @DatEmi,
                                              @SerDoc,
                                              @TipDoc,
                                              @NumDoc,
                                              @EstDoc,
                                              @BasIPI,
                                              @BasICM,
                                              @TipICM,
                                              @TipIPI,
                                              @TipISS,
                                              @PosIPI,
                                              @SitTri,
                                              @ValDsc,
                                              @Descri,
                                              @CoCIAP,
                                              @CampoA,
                                              @BasCOF,
                                              @ValCOF,
                                              @AliCOF,
                                              @BasPIS,
                                              @ValPIS,
                                              @DatDig,
                                              @DocSai,
                                              @SerSai,
                                              @AliPis,
                                              @TipCom,
                                              @VarFre,
                                              @TipLan,
                                              @ImpMet,
                                              @DtOcor,
                                              @CCusto,
                                              @Conta,
                                              @HrOcor,
                                              @NotOri,
                                              @SerOri,
                                              @D_E_L_E_T_,
                                              @DtOCom,
                                              @DtOFat,
                                              @BrICMS,
                                              @ICMSRe,
                                              @BasISS,
                                              @AlqISS,
                                              @ValISS,
                                              @BasINS,
                                              @AlqINS,
                                              @ValINS,
                                              @BasIRF,
                                              @AlqIRF,
                                              @ValIRF,
                                              @AlqPIS,
                                              @AlqCOF,
                                              @BasCSL,
                                              @AlqCSL,
                                              @ValCSL,
                                              @BasIMS,
                                              @AlqIMS,
                                              @ValIMS,
                                              @BasIM6,
                                              @AlqIM6,
                                              @ValIM6,
                                              @ValDes,
                                              @Objid,
                                              @ObjidI,
                                              @CodNew,
                                              @IteOri,
                                              @StatusInt,
                                              @R_E_C_N_O_

        WHILE @@FETCH_STATUS = 0
          BEGIN
              SET @CursorItensNotas = @CursorItensNotas + 1
              SET XACT_ABORT ON

              BEGIN TRANSACTION

              INSERT INTO [P11P01].Protheus11.dbo.ZZ3010
                          (ZZ3_FILIAL,
                           ZZ3_TPLAN,
                           ZZ3_NUMITE,
                           ZZ3_CODZER,
                           ZZ3_CODPRO,
                           ZZ3_UNIMED,
                           ZZ3_QTDVEN,
                           ZZ3_VALVEN,
                           ZZ3_VALTOT,
                           ZZ3_VALIPI,
                           ZZ3_VALICM,
                           ZZ3_GRUPO,
                           ZZ3_TP,
                           ZZ3_NUMSEQ,
                           ZZ3_ORIGLA,
                           ZZ3_CODTES,
                           ZZ3_CODCFO,
                           ZZ3_PERDES,
                           ZZ3_PERIPI,
                           ZZ3_PERICM,
                           ZZ3_NUMPED,
                           ZZ3_ITEMPV,
                           ZZ3_CODCLI,
                           ZZ3_LOJA,
                           ZZ3_CODLOC,
                           ZZ3_DATEMI,
                           ZZ3_SERDOC,
                           ZZ3_TIPDOC,
                           ZZ3_NUMDOC,
                           ZZ3_ESTDOC,
                           ZZ3_BASIPI,
                           ZZ3_BASICM,
                           ZZ3_TIPICM,
                           ZZ3_TIPIPI,
                           ZZ3_TIPISS,
                           ZZ3_POSIPI,
                           ZZ3_SITTRI,
                           ZZ3_VALDSC,
                           ZZ3_DESCRI,
                           ZZ3_COCIAP,
                           ZZ3_CAMPOA,
                           ZZ3_BASCOF,
                           ZZ3_VALCOF,
                           ZZ3_ALICOF,
                           ZZ3_BASPIS,
                           ZZ3_VALPIS,
                           ZZ3_DATDIG,
                           ZZ3_DOCSAI,
                           ZZ3_SERSAI,
                           ZZ3_ALIPIS,
                           ZZ3_TIPCOM,
                           ZZ3_VALFRE,
                           ZZ3_TIPLAN,
                           ZZ3_IMPMET,
                           ZZ3_DTOCOR,
                           ZZ3_CCUSTO,
                           ZZ3_CONTA,
                           ZZ3_HROCOR,
                           ZZ3_NOTORI,
                           ZZ3_SERORI,
                           D_E_L_E_T_,
                           ZZ3_DTOCOM,
                           ZZ3_DTOFAT,
                           ZZ3_BRICMS,
                           ZZ3_ICMSRE,
                           ZZ3_BASISS,
                           ZZ3_ALQISS,
                           ZZ3_VALISS,
                           ZZ3_BASINS,
                           ZZ3_ALQINS,
                           ZZ3_VALINS,
                           ZZ3_BASIRF,
                           ZZ3_ALQIRF,
                           ZZ3_VALIRF,
                           ZZ3_ALQPIS,
                           ZZ3_ALQCOF,
                           ZZ3_BASCSL,
                           ZZ3_ALQCSL,
                           ZZ3_VALCSL,
                           ZZ3_BASIM5,
                           ZZ3_ALQIM5,
                           ZZ3_VALIM5,
                           ZZ3_BASIM6,
                           ZZ3_ALQIM6,
                           ZZ3_VALIM6,
                           ZZ3_VALDES,
                           ZZ3_OBJID,
                           ZZ3_OBJIDI,
                           ZZ3_CODNEW,
                           ZZ3_ITEORI,
                           R_E_C_N_O_)
              VALUES      ( @Filial,
                            @TpLan,
                            @NumIte,
                            @CodZer,
                            @CodPro,
                            @UniMed,
                            @Qtdven,
                            @ValVen,
                            @ValTot,
                            @ValIPI,
                            @ValICM,
                            @Grupo,
                            @Tp,
                            @NumSeq,
                            @OrigLa,
                            @CodTes,
                            @CodCFO,
                            @PerDes,
                            @PerIPI,
                            @PerICM,
                            @NumPed,
                            @ItemPV,
                            @CodCli,
                            @Loja,
                            @CodLoc,
                            @DatEmi,
                            @SerDoc,
                            @TipDoc,
                            @NumDoc,
                            @EstDoc,
                            @BasIPI,
                            @BasICM,
                            @TipICM,
                            @TipIPI,
                            @TipISS,
                            @PosIPI,
                            @SitTri,
                            @ValDsc,
                            @Descri,
                            @CoCIAP,
                            @CampoA,
                            @BasCOF,
                            @ValCOF,
                            @AliCOF,
                            @BasPIS,
                            @ValPIS,
                            @DatDig,
                            @DocSai,
                            @SerSai,
                            @AliPis,
                            @TipCom,
                            @VarFre,
                            @TipLan,
                            @ImpMet,
                            @DtOcor,
                            @CCusto,
                            @Conta,
                            @HrOcor,
                            @NotOri,
                            @SerOri,
                            @D_E_L_E_T_,
                            @DtOCom,
                            @DtOFat,
                            @BrICMS,
                            @ICMSRe,
                            @BasISS,
                            @AlqISS,
                            @ValISS,
                            @BasINS,
                            @AlqINS,
                            @ValINS,
                            @BasIRF,
                            @AlqIRF,
                            @ValIRF,
                            @AlqPIS,
                            @AlqCOF,
                            @BasCSL,
                            @AlqCSL,
                            @ValCSL,
                            @BasIMS,
                            @AlqIMS,
                            @ValIMS,
                            @BasIM6,
                            @AlqIM6,
                            @ValIM6,
                            @ValDes,
                            @Objid,
                            @ObjidI,
                            @CodNew,
                            @IteOri,
                            @R_E_C_N_O_ )

              UPDATE Usr_ZZ3010
              SET    StatusInt = 1
              WHERE  R_E_C_N_O_ = @R_E_C_N_O_

              COMMIT TRANSACTION

              FETCH Next FROM CursorItensNotas INTO @Filial,
                                                    @TpLan,
                                                    @NumIte,
                                                    @CodZer,
                                                    @CodPro,
                                                    @UniMed,
                                                    @Qtdven,
                                                    @ValVen,
                                                    @ValTot,
                                                    @ValIPI,
                                                    @ValICM,
                                                    @Grupo,
                                                    @Tp,
                                                    @NumSeq,
                                                    @OrigLa,
                                                    @CodTes,
                                                    @CodCFO,
                                                    @PerDes,
                                                    @PerIPI,
                                                    @PerICM,
                                                    @NumPed,
                                                    @ItemPV,
                                                    @CodCli,
                                                    @Loja,
                                                    @CodLoc,
                                                    @DatEmi,
                                                    @SerDoc,
                                                    @TipDoc,
                                                    @NumDoc,
                                                    @EstDoc,
                                                    @BasIPI,
                                                    @BasICM,
                                                    @TipICM,
                                                    @TipIPI,
                                                    @TipISS,
                                                    @PosIPI,
                                                    @SitTri,
                                                    @ValDsc,
                                                    @Descri,
                                                    @CoCIAP,
                                                    @CampoA,
                                                    @BasCOF,
                                                    @ValCOF,
                                                    @AliCOF,
                                                    @BasPIS,
                                                    @ValPIS,
                                                    @DatDig,
                                                    @DocSai,
                                                    @SerSai,
                                                    @AliPis,
                                                    @TipCom,
                                                    @VarFre,
                                                    @TipLan,
                                                    @ImpMet,
                                                    @DtOcor,
                                                    @CCusto,
                                                    @Conta,
                                                    @HrOcor,
                                                    @NotOri,
                                                    @SerOri,
                                                    @D_E_L_E_T_,
                                                    @DtOCom,
                                                    @DtOFat,
                                                    @BrICMS,
                                                    @ICMSRe,
                                                    @BasISS,
                                                    @AlqISS,
                                                    @ValISS,
                                                    @BasINS,
                                                    @AlqINS,
                                                    @ValINS,
                                                    @BasIRF,
                                                    @AlqIRF,
                                                    @ValIRF,
                                                    @AlqPIS,
                                                    @AlqCOF,
                                                    @BasCSL,
                                                    @AlqCSL,
                                                    @ValCSL,
                                                    @BasIMS,
                                                    @AlqIMS,
                                                    @ValIMS,
                                                    @BasIM6,
                                                    @AlqIM6,
                                                    @ValIM6,
                                                    @ValDes,
                                                    @Objid,
                                                    @ObjidI,
                                                    @CodNew,
                                                    @IteOri,
                                                    @StatusInt,
                                                    @R_E_C_N_O_
          END

        CLOSE CursorItensNotas

        DEALLOCATE CursorItensNotas
    END Try
    BEGIN Catch
        ROLLBACK TRANSACTION
        UPDATE USR_ZZ3010
        SET    StatusInt = 2
        WHERE  R_E_C_N_O_ = @R_E_C_N_O_
        CLOSE CursorItensNotas
        DEALLOCATE CursorItensNotas
    END Catch

    -- =============================================
    -- Author:		Fernando Lima
    -- Create date: 04/05/2017
    -- Description:	Insere as informações de Cabeçalhos de  Rateios Fiananceiros de Notas Fiscais na tabela de Integração do Protheus "ZZ3010"
    -- =============================================
    USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_sp_integrarateiofin_protheus]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_sp_integrarateiofin_protheus]')
  DROP PROCEDURE [dbo].[Usr_sp_integrarateiofin_protheus]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integrarateiofin_protheus]
AS
    BEGIN Try
        DECLARE @CursorRateioFin AS INT = 0
        DECLARE @Filial VARCHAR(2)
        DECLARE @Doc VARCHAR(9)
        DECLARE @Serie VARCHAR(3)
        DECLARE @Fornec VARCHAR(6)
        DECLARE @Loja VARCHAR(2)
        DECLARE @ItemNF VARCHAR(50)
        DECLARE @Item VARCHAR(2)
        DECLARE @Perc VARCHAR(10)
        DECLARE @CC VARCHAR(9)
        DECLARE @Conta VARCHAR(20)
        DECLARE @ItemCT VARCHAR(9)
        DECLARE @CLVL VARCHAR(9)
        DECLARE @Custo1 FLOAT
        DECLARE @Custo2 FLOAT
        DECLARE @Custo3 FLOAT
        DECLARE @Custo4 FLOAT
        DECLARE @Custo5 FLOAT
        DECLARE @ImpMet VARCHAR(1)
        DECLARE @DtOcorCom DATETIME
        DECLARE @HrOcor VARCHAR(20)
        DECLARE @D_E_L_E_T_ VARCHAR(1)
        DECLARE @StatusInt INT
        DECLARE @R_E_C_N_O_ INT
        DECLARE CursorRateioFin CURSOR FOR
          SELECT Filial,
                 Doc,
                 Serie,
                 Fornec,
                 Loja,
                 ItemNF,
                 Item,
                 Perc,
                 CC,
                 Conta,
                 ItemCT,
                 CLVL,
                 Custo1,
                 Custo2,
                 Custo3,
                 Custo4,
                 Custo5,
                 ImpMet,
                 DtOcorCom,
                 HrOcor,
                 D_E_L_E_T_,
                 StatusInt,
                 R_E_C_N_O_
          FROM   Usr_ZR6010
          WHERE  StatusInt = 0

        OPEN CursorRateioFin

        FETCH Next FROM CursorRateioFin INTO @Filial,
                                             @Doc,
                                             @Serie,
                                             @Fornec,
                                             @Loja,
                                             @ItemNF,
                                             @Item,
                                             @Perc,
                                             @CC,
                                             @Conta,
                                             @ItemCT,
                                             @CLVL,
                                             @Custo1,
                                             @Custo2,
                                             @Custo3,
                                             @Custo4,
                                             @Custo5,
                                             @ImpMet,
                                             @DtOcorCom,
                                             @HrOcor,
                                             @D_E_L_E_T_,
                                             @StatusInt,
                                             @R_E_C_N_O_

        WHILE @@FETCH_STATUS = 0
          BEGIN
              SET @CursorRateioFin = @CursorRateioFin + 1
              SET XACT_ABORT ON;

              BEGIN TRANSACTION

              INSERT INTO [P11P01].Protheus11.dbo.ZR6010
                          (ZR6_FILIAL,
                           ZR6_DOC,
                           ZR6_SERIE,
                           ZR6_FORNEC,
                           ZR6_LOJA,
                           ZR6_ITEMNF,
                           ZR6_ITEM,
                           ZR6_PERC,
                           ZR6_CC,
                           ZR6_CONTA,
                           ZR6_ITEMCT,
                           ZR6_CLVL,
                           ZR6_CUSTO1,
                           ZR6_CUSTO2,
                           ZR6_CUSTO3,
                           ZR6_CUSTO4,
                           ZR6_CUSTO5,
                           ZR6_IMPMET,
                           ZR6_DTOCORCOM,
                           ZR6_HROCOR,
                           D_E_L_E_T_,
                           R_E_C_N_O_)
              VALUES      ( @Filial,
                            @Doc,
                            @Serie,
                            @Fornec,
                            @Loja,
                            @ItemNF,
                            @Item,
                            @Perc,
                            @CC,
                            @Conta,
                            @ItemCT,
                            @CLVL,
                            @Custo1,
                            @Custo2,
                            @Custo3,
                            @Custo4,
                            @Custo5,
                            @ImpMet,
                            @DtOcorCom,
                            @HrOcor,
                            @D_E_L_E_T_,
                            @R_E_C_N_O_ )

              UPDATE Usr_ZR6010
              SET    StatusInt = 1
              WHERE  R_E_C_N_O_ = @R_E_C_N_O_

              COMMIT TRANSACTION

              FETCH Next FROM CursorRateioFin INTO @Filial,
                                                   @Doc,
                                                   @Serie,
                                                   @Fornec,
                                                   @Loja,
                                                   @ItemNF,
                                                   @Item,
                                                   @Perc,
                                                   @CC,
                                                   @Conta,
                                                   @ItemCT,
                                                   @CLVL,
                                                   @Custo1,
                                                   @Custo2,
                                                   @Custo3,
                                                   @Custo4,
                                                   @Custo5,
                                                   @ImpMet,
                                                   @DtOcorCom,
                                                   @HrOcor,
                                                   @D_E_L_E_T_,
                                                   @StatusInt,
                                                   @R_E_C_N_O_
          END

        CLOSE CursorRateioFin

        DEALLOCATE CursorRateioFin
    END try
    BEGIN Catch
        ROLLBACK TRANSACTION
        UPDATE Usr_ZR6010
        SET    StatusInt = 2
        WHERE  R_E_C_N_O_ = @R_E_C_N_O_
        CLOSE CursorRateioFin
        DEALLOCATE CursorRateioFin
    END Catch

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Insere as informações de Cabeçalhos de  Rateios Fiananceiros de Notas Fiscais na tabela de Integração do Protheus "ZZ3010"
-- =============================================
USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF EXISTS (SELECT *
           FROM   INFORMATION_SCHEMA.ROUTINES
           WHERE  SPECIFIC_SCHEMA = N'[dbo].[Usr_sp_integradi_protheus]'
                  AND SPECIFIC_NAME = N'[dbo].[Usr_sp_integradi_protheus]')
  DROP PROCEDURE [dbo].[Usr_sp_integradi_protheus]

GO

CREATE PROCEDURE [dbo].[Usr_sp_integradi_protheus]
AS
    BEGIN TRY
        DECLARE @CursorDI AS INT = 0
        DECLARE @Filial VARCHAR(2)
        DECLARE @Doc VARCHAR(9)
        DECLARE @Serie VARCHAR(3)
        DECLARE @Espec VARCHAR(5)
        DECLARE @Fornec VARCHAR(6)
        DECLARE @Loja VARCHAR(2)
        DECLARE @TPImp VARCHAR(1)
        DECLARE @DocImp VARCHAR(50)
        DECLARE @BsPIS VARCHAR(8)
        DECLARE @AlPIS VARCHAR(8)
        DECLARE @VlPIS VARCHAR(8)
        DECLARE @BsCOF VARCHAR(8)
        DECLARE @AlCOF VARCHAR(8)
        DECLARE @VlCOF VARCHAR(8)
        DECLARE @ACDRAW VARCHAR(20)
        DECLARE @DtPPIS VARCHAR(8)
        DECLARE @DtPCOF VARCHAR(8)
        DECLARE @Local VARCHAR(1)
        DECLARE @NDI VARCHAR(12)
        DECLARE @DtDI VARCHAR(8)
        DECLARE @LocDes VARCHAR(30)
        DECLARE @UFDes VARCHAR(2)
        DECLARE @DtDes VARCHAR(8)
        DECLARE @CodExp VARCHAR(6)
        DECLARE @NaDic VARCHAR(3)
        DECLARE @SQADic VARCHAR(3)
        DECLARE @CodFab VARCHAR(6)
        DECLARE @VdeSDI FLOAT
        DECLARE @BCImp FLOAT
        DECLARE @DsPAD FLOAT
        DECLARE @VlrII FLOAT
        DECLARE @VlrIOF FLOAT
        DECLARE @Item VARCHAR(4)
        DECLARE @LojExp VARCHAR(2)
        DECLARE @LojFab VARCHAR(2)
        DECLARE @VTrans VARCHAR(1)
        DECLARE @VaFRMM FLOAT
        DECLARE @Interm VARCHAR(1)
        DECLARE @CNPJAE VARCHAR(14)
        DECLARE @UFTerc VARCHAR(2)
        DECLARE @D_E_L_E_T_ VARCHAR(1)
        DECLARE @Objid FLOAT
        DECLARE @ObjidI FLOAT
        DECLARE @StatusInt INT
        DECLARE @R_E_C_N_O_ INT
        DECLARE CursorDI CURSOR FOR
          SELECT Filial,
                 Doc,
                 Serie,
                 Espec,
                 Fornec,
                 Loja,
                 TPImp,
                 DocImp,
                 BsPIS,
                 AlPIS,
                 VlPIS,
                 BsCOF,
                 AlCOF,
                 VlCOF,
                 ACDRAW,
                 DtPPIS,
                 DtPCOF,
                 Local,
                 NDI,
                 DtDI,
                 LocDes,
                 UFDes,
                 DtDes,
                 CodExp,
                 NaDic,
                 SQADic,
                 CodFab,
                 VdeSDI,
                 BCImp,
                 DsPAD,
                 VlrII,
                 VlrIOF,
                 Item,
                 LojExp,
                 LojFab,
                 VTrans,
                 VaFRMM,
                 Interm,
                 CNPJAE,
                 UFTerc,
                 D_E_L_E_T_,
                 Objid,
                 ObjidI,
                 StatusInt,
                 R_E_C_N_O_
          FROM   Usr_ZI5010
          WHERE  StatusInt = 0

        OPEN CursorDI

        FETCH Next FROM CursorDI INTO @Filial,
                                      @Doc,
                                      @Serie,
                                      @Espec,
                                      @Fornec,
                                      @Loja,
                                      @TPImp,
                                      @DocImp,
                                      @BsPIS,
                                      @AlPIS,
                                      @VlPIS,
                                      @BsCOF,
                                      @AlCOF,
                                      @VlCOF,
                                      @ACDRAW,
                                      @DtPPIS,
                                      @DtPCOF,
                                      @Local,
                                      @NDI,
                                      @DtDI,
                                      @LocDes,
                                      @UFDes,
                                      @DtDes,
                                      @CodExp,
                                      @NaDic,
                                      @SQADic,
                                      @CodFab,
                                      @VdeSDI,
                                      @BCImp,
                                      @DsPAD,
                                      @VlrII,
                                      @VlrIOF,
                                      @Item,
                                      @LojExp,
                                      @LojFab,
                                      @VTrans,
                                      @VaFRMM,
                                      @Interm,
                                      @CNPJAE,
                                      @UFTerc,
                                      @D_E_L_E_T_,
                                      @Objid,
                                      @ObjidI,
                                      @StatusInt,
                                      @R_E_C_N_O_

        WHILE @@FETCH_STATUS = 0
          BEGIN
              SET @CursorDI = @CursorDI + 1
              SET XACT_ABORT ON

              BEGIN TRAN

              INSERT INTO [P11P01].Protheus11.dbo.ZI5010
                          (ZI5_FILIAL,
                           ZI5_DOC,
                           ZI5_SERIE,
                           ZI5_ESPEC,
                           ZI5_FORNEC,
                           ZI5_LOJA,
                           ZI5_TPIMP,
                           ZI5_DOCIMP,
                           ZI5_BSPIS,
                           ZI5_ALPIS,
                           ZI5_VLPIS,
                           ZI5_BSCOF,
                           ZI5_ALCOF,
                           ZI5_VLCOF,
                           ZI5_ACDRAW,
                           ZI5_DTPPIS,
                           ZI5_DTPCOF,
                           ZI5_LOCAL,
                           ZI5_NDI,
                           ZI5_DTDI,
                           ZI5_LOCDES,
                           ZI5_UFDES,
                           ZI5_DTDES,
                           ZI5_CODEXP,
                           ZI5_NADIC,
                           ZI5_SQADIC,
                           ZI5_CODFAB,
                           ZI5_VDESDI,
                           ZI5_BCIMP,
                           ZI5_DSPAD,
                           ZI5_VLRII,
                           ZI5_VLRIOF,
                           ZI5_ITEM,
                           ZI5_LOJEXP,
                           ZI5_LOJFAB,
                           ZI5_VTRANS,
                           ZI5_VAFRMM,
                           ZI5_INTERM,
                           ZI5_CNPJAE,
                           ZI5_UFTERC,
                           D_E_L_E_T_,
                           ZI5_OBJID,
                           ZI5_OBJIDI,
                           R_E_C_N_O_)
              VALUES      ( @Filial,
                            @Doc,
                            @Serie,
                            @Espec,
                            @Fornec,
                            @Loja,
                            @TPImp,
                            @DocImp,
                            @BsPIS,
                            @AlPIS,
                            @VlPIS,
                            @BsCOF,
                            @AlCOF,
                            @VlCOF,
                            @ACDRAW,
                            @DtPPIS,
                            @DtPCOF,
                            @Local,
                            @NDI,
                            @DtDI,
                            @LocDes,
                            @UFDes,
                            @DtDes,
                            @CodExp,
                            @NaDic,
                            @SQADic,
                            @CodFab,
                            @VdeSDI,
                            @BCImp,
                            @DsPAD,
                            @VlrII,
                            @VlrIOF,
                            @Item,
                            @LojExp,
                            @LojFab,
                            @VTrans,
                            @VaFRMM,
                            @Interm,
                            @CNPJAE,
                            @UFTerc,
                            @D_E_L_E_T_,
                            @Objid,
                            @ObjidI,
                            @R_E_C_N_O_ )

              UPDATE Usr_ZI5010
              SET    StatusInt = 1
              WHERE  R_E_C_N_O_ = @R_E_C_N_O_

              COMMIT TRAN

              FETCH Next FROM CursorDI INTO @Filial,
                                            @Doc,
                                            @Serie,
                                            @Espec,
                                            @Fornec,
                                            @Loja,
                                            @TPImp,
                                            @DocImp,
                                            @BsPIS,
                                            @AlPIS,
                                            @VlPIS,
                                            @BsCOF,
                                            @AlCOF,
                                            @VlCOF,
                                            @ACDRAW,
                                            @DtPPIS,
                                            @DtPCOF,
                                            @Local,
                                            @NDI,
                                            @DtDI,
                                            @LocDes,
                                            @UFDes,
                                            @DtDes,
                                            @CodExp,
                                            @NaDic,
                                            @SQADic,
                                            @CodFab,
                                            @VdeSDI,
                                            @BCImp,
                                            @DsPAD,
                                            @VlrII,
                                            @VlrIOF,
                                            @Item,
                                            @LojExp,
                                            @LojFab,
                                            @VTrans,
                                            @VaFRMM,
                                            @Interm,
                                            @CNPJAE,
                                            @UFTerc,
                                            @D_E_L_E_T_,
                                            @Objid,
                                            @ObjidI,
                                            @R_E_C_N_O_
          END

        CLOSE CursorDI

        DEALLOCATE CursorDI
    END Try
    BEGIN Catch
        ROLLBACK TRAN
        UPDATE Usr_ZI5010
        SET    StatusInt = 2
        WHERE  R_E_C_N_O_ = @R_E_C_N_O_
        CLOSE CursorDI
        DEALLOCATE CursorDI
    END Catch

GO

USE [msdb]

GO

/****** Object:  Operator [Fernando Lima]    Script Date: 04/05/2017 17:28:26 ******/
EXEC msdb.dbo.Sp_add_operator
  @name=N'Fernando Lima',
  @enabled=1,
  @weekday_pager_start_time=90000,
  @weekday_pager_end_time=180000,
  @saturday_pager_start_time=90000,
  @saturday_pager_end_time=180000,
  @sunday_pager_start_time=90000,
  @sunday_pager_end_time=180000,
  @pager_days=0,
  @email_address=N'fernando.lima@ibratecgrafica.com.br',
  @category_name=N'[Uncategorized]'

GO

USE [msdb]

GO

/****** Object:  Operator [Rene Francisco]    Script Date: 04/05/2017 17:28:35 ******/
EXEC msdb.dbo.Sp_add_operator
  @name=N'Rene Francisco',
  @enabled=1,
  @weekday_pager_start_time=90000,
  @weekday_pager_end_time=180000,
  @saturday_pager_start_time=90000,
  @saturday_pager_end_time=180000,
  @sunday_pager_start_time=90000,
  @sunday_pager_end_time=180000,
  @pager_days=0,
  @email_address=N'rene.francisco@ibratecgrafica.com.br',
  @category_name=N'[Uncategorized]'

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Job de Integração Metrics Protheus 
-- =============================================
USE [msdb]

USE [msdb]
GO

IF EXISTS (SELECT job_id FROM msdb.dbo.sysjobs_view WHERE name = N'Integração Metrics Protheus')
EXEC msdb.dbo.sp_delete_job @job_name=N'Integração Metrics Protheus', @delete_unused_schedule=1
GO

/****** Object:  Job [Integração Metrics Protheus]    Script Date: 04/05/2017 17:38:12 ******/
BEGIN TRANSACTION
DECLARE @ReturnCode INT
SELECT @ReturnCode = 0
/****** Object:  JobCategory [[Uncategorized (Local)]]    Script Date: 04/05/2017 17:38:12 ******/
IF NOT EXISTS (SELECT name FROM msdb.dbo.syscategories WHERE name=N'[Uncategorized (Local)]' AND category_class=1)
BEGIN
EXEC @ReturnCode = msdb.dbo.sp_add_category @class=N'JOB', @type=N'LOCAL', @name=N'[Uncategorized (Local)]'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback

END

DECLARE @jobId BINARY(16)
EXEC @ReturnCode =  msdb.dbo.sp_add_job @job_name=N'Integração Metrics Protheus', 
		@enabled=1, 
		@notify_level_eventlog=0, 
		@notify_level_email=2, 
		@notify_level_netsend=0, 
		@notify_level_page=0, 
		@delete_level=0, 
		@description=N'Integração da tabela de Itens de Estoque do Metrics com a tabela de cadastro de Produtos do Protheus', 
		@category_name=N'[Uncategorized (Local)]', 
		@owner_login_name=N'sa', 
		@notify_email_operator_name=N'Fernando Lima', @job_id = @jobId OUTPUT
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Atualiza as tabelas de Cadastro de Clientes e Fornecedores do Protheus - ZZ1010]    Script Date: 04/05/2017 17:38:12 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Atualiza as tabelas de Cadastro de Clientes e Fornecedores do Protheus - ZZ1010', 
		@step_id=1, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=3, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'DECLARE	@return_value int

EXEC	@return_value = [dbo].[USR_SP_IntegraCliFor_Protheus]

SELECT	''Return Value'' = @return_value', 
		@database_name=N'MT_Ibratec', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Atualiza as tabelas de Cadastro de Produtos do Protheus - ZZ4010]    Script Date: 04/05/2017 17:38:12 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Atualiza as tabelas de Cadastro de Produtos do Protheus - ZZ4010', 
		@step_id=2, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=3, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'DECLARE	@return_value int

EXEC	@return_value = [dbo].[USR_SP_IntegraProdutos_Protheus]

SELECT	''Return Value'' = @return_value', 
		@database_name=N'MT_Ibratec', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Atualiza as tabelas de Notas Fiscais do Protheus - ZZ5010]    Script Date: 04/05/2017 17:38:12 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Atualiza as tabelas de Notas Fiscais do Protheus - ZZ5010', 
		@step_id=3, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'DECLARE	@return_value int

EXEC	@return_value = [dbo].[Usr_SP_IntegraNotas_Protheus]

SELECT	''Return Value'' = @return_value', 
		@database_name=N'MT_Ibratec', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Atualiza as tabelas de  Item Notas Fiscais do Protheus - ZZ3010]    Script Date: 04/05/2017 17:38:12 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Atualiza as tabelas de  Item Notas Fiscais do Protheus - ZZ3010', 
		@step_id=4, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'DECLARE	@return_value int

EXEC	@return_value = [dbo].[Usr_sp_integraitensnotas_protheus] 

SELECT	''Return Value'' = @return_value', 
		@database_name=N'MT_Ibratec', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Atualiza as tabelas de Rateios Financeiro das Notas de Compras ZR6010]    Script Date: 04/05/2017 17:38:12 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Atualiza as tabelas de Rateios Financeiro das Notas de Compras ZR6010', 
		@step_id=5, 
		@cmdexec_success_code=0, 
		@on_success_action=3, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'DECLARE	@return_value int

EXEC	@return_value = [dbo].[Usr_sp_integrarateiofin_protheus]

SELECT	''Return Value'' = @return_value', 
		@database_name=N'MT_Ibratec', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
/****** Object:  Step [Atualiza as tabelas de Declarações de Importação das Notas Fiscais ZI5010]    Script Date: 04/05/2017 17:38:12 ******/
EXEC @ReturnCode = msdb.dbo.sp_add_jobstep @job_id=@jobId, @step_name=N'Atualiza as tabelas de Declarações de Importação das Notas Fiscais ZI5010', 
		@step_id=6, 
		@cmdexec_success_code=0, 
		@on_success_action=1, 
		@on_success_step_id=0, 
		@on_fail_action=2, 
		@on_fail_step_id=0, 
		@retry_attempts=0, 
		@retry_interval=0, 
		@os_run_priority=0, @subsystem=N'TSQL', 
		@command=N'DECLARE	@return_value int

EXEC	@return_value = [Usr_sp_integradi_protheus]

SELECT	''Return Value'' = @return_value', 
		@database_name=N'MT_Ibratec', 
		@flags=0
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_update_job @job_id = @jobId, @start_step_id = 2
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobschedule @job_id=@jobId, @name=N'Todos os dias, a cada 5 minutos', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=0, 
		@active_start_date=20170504, 
		@active_end_date=99991231, 
		@active_start_time=120000, 
		@active_end_time=235959, 
		@schedule_uid=N'67743043-c9f5-419e-96bd-c26057e22047'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
EXEC @ReturnCode = msdb.dbo.sp_add_jobserver @job_id = @jobId, @server_name = N'(local)'
IF (@@ERROR <> 0 OR @ReturnCode <> 0) GOTO QuitWithRollback
COMMIT TRANSACTION
GOTO EndSave
QuitWithRollback:
    IF (@@TRANCOUNT > 0) ROLLBACK TRANSACTION
EndSave:

GO


