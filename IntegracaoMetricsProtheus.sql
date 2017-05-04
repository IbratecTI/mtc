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

IF OBJECT_ID('[dbo].[Usr_ZZ1010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ1010]
GO

ALTER TABLE [dbo].[Usr_ZZ1010](
	[Filial] [varchar](2) NOT NULL,
	[TPLan] [varchar](1) NOT NULL,
	[CodCli] [varchar](6) NOT NULL,
	[LojCli] [varchar](2) NOT NULL,
	[NomCli] [varchar](120) NOT NULL,
	[FanCli] [varchar](60) NOT NULL,
	[TipCli] [varchar](1) NOT NULL,
	[TipFor] [varchar](1) NOT NULL,
	[EndCli] [varchar](100) NOT NULL,
	[MunCli] [varchar](60) NOT NULL,
	[EstCli] [varchar](2) NOT NULL,
	[BaiCli] [varchar](60) NOT NULL,
	[CEPCli] [varchar](9) NOT NULL,
	[CGCCli] [varchar](18) NOT NULL,
	[DATCli] [varchar](8) NOT NULL,
	[INSCli] [varchar](15) NOT NULL,
	[CodMun] [varchar](5) NOT NULL,
	[CodPai] [varchar](5) NOT NULL,
	[Pessoa] [varchar](1) NOT NULL,
	[MoedaL] [varchar](1) NOT NULL,
	[TMPVis] [varchar](5) NOT NULL,
	[TMPSTD] [varchar](5) NOT NULL,
	[B2B] [varchar](5) NOT NULL,
	[Tel] [varchar](15) NOT NULL,
	[Vincul] [varchar](5) NOT NULL,
	[IDRep] [varchar](5) NOT NULL,
	[PLCRRE] [varchar](5) NOT NULL,
	[PLFil] [varchar](5) NOT NULL,
	[TipDoc] [varchar](1) NOT NULL,
	[ImpMet] [varchar](1) NOT NULL,
	[Versao] [float] NOT NULL,
	[ContaC] [varchar](20) NOT NULL,
	[ContaF] [varchar](20) NOT NULL,
	[ContaC2] [varchar](20) NOT NULL,
	[ContaF2] [varchar](20) NOT NULL,
	[CTAADC] [varchar](20) NOT NULL,
	[CTAADF] [varchar](20) NOT NULL,
	[D_E_L_E_T_] [varchar](1) NOT NULL,
	[StatusInt] [int] NOT NULL,
	[R_E_C_N_O_] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ZZ1010_PK] PRIMARY KEY CLUSTERED 
(
	[R_E_C_N_O_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Usr_ZZ1010] ADD  CONSTRAINT [DF_Usr_ZZ1010_StatusInt]  DEFAULT ((0)) FOR [StatusInt]
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

IF OBJECT_ID('[dbo].[Usr_ZZ4010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ4010]
GO

CREATE TABLE [dbo].[Usr_ZZ4010](
	[Filial] [varchar](2) NULL,
	[Cod] [varchar](20) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[LocPad] [varchar](2) NOT NULL,
	[UM] [varchar](2) NOT NULL,
	[Grupo] [varchar](4) NOT NULL,
	[PosIPI] [varchar](10) NOT NULL,
	[Tipo] [varchar](2) NOT NULL,
	[TipCon] [varchar](1) NOT NULL,
	[MCustD] [varchar](1) NOT NULL,
	[Apropr] [varchar](1) NOT NULL,
	[TipoDE] [varchar](1) NOT NULL,
	[Rastro] [varchar](1) NOT NULL,
	[MRP] [varchar](1) NOT NULL,
	[CodBar] [varchar](15) NOT NULL,
	[Locali] [varchar](1) NOT NULL,
	[Contra] [varchar](1) NOT NULL,
	[Import] [varchar](1) NOT NULL,
	[Anuent] [varchar](1) NOT NULL,
	[TipoCQ] [varchar](1) NOT NULL,
	[Solici] [varchar](1) NOT NULL,
	[INSS] [varchar](1) NOT NULL,
	[FlagSU] [varchar](1) NOT NULL,
	[ClassV] [varchar](1) NOT NULL,
	[Midia] [varchar](1) NOT NULL,
	[EnvoBR] [varchar](1) NOT NULL,
	[QtdSer] [float] NOT NULL,
	[Ativo] [varchar](1) NOT NULL,
	[TipCNV] [varchar](1) NOT NULL,
	[CpoTen] [varchar](1) NOT NULL,
	[ImpMet] [varchar](1) NOT NULL,
	[Versao] [int] NOT NULL,
	[Conta] [varchar](20) NOT NULL,
	[Conta2] [varchar](20) NOT NULL,
	[D_E_L_E_T_] [varchar](1) NOT NULL,
	[DtInclusao] [datetime] NOT NULL,
	[CodNew] [varchar](20) NOT NULL,
	[StatusInt] [int] NOT NULL,
	[R_E_C_N_O_] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ZZ4010_PK] PRIMARY KEY CLUSTERED 
(
	[R_E_C_N_O_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Usr_ZZ4010] ADD  CONSTRAINT [DF_Usr_ZZ4010_StatusInt]  DEFAULT ((0)) FOR [StatusInt]
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
IF OBJECT_ID('[dbo].[Usr_ZZ5010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ5010]
GO

CREATE TABLE [dbo].[USR_ZZ5010](
	[Filial] [varchar](2) NOT NULL,
	[TpLan] [varchar](1) NOT NULL,
	[NumDoc] [varchar](9) NOT NULL,
	[SerDoc] [varchar](3) NOT NULL,
	[CodCli] [varchar](6) NOT NULL,
	[Loja] [varchar](2) NOT NULL,
	[DatEmi] [varchar](8) NOT NULL,
	[EstDoc] [varchar](2) NOT NULL,
	[ValFre] [varchar](16) NOT NULL,
	[ValSeg] [varchar](16) NOT NULL,
	[ICMFre] [varchar](16) NOT NULL,
	[ValBru] [varchar](16) NOT NULL,
	[ValICM] [varchar](16) NOT NULL,
	[BasICM] [varchar](16) NOT NULL,
	[ValIPI] [varchar](16) NOT NULL,
	[BasIPI] [varchar](16) NOT NULL,
	[ValMer] [varchar](16) NOT NULL,
	[BasISS] [varchar](16) NOT NULL,
	[ValISS] [varchar](16) NOT NULL,
	[ValCSL] [varchar](16) NOT NULL,
	[ValDes] [varchar](16) NOT NULL,
	[CodCFO] [varchar](5) NOT NULL,
	[Observ] [varchar](30) NOT NULL,
	[Propri] [varchar](1) NOT NULL,
	[Tipo] [varchar](1) NOT NULL,
	[CampoA] [varchar](1) NOT NULL,
	[BasCOF] [varchar](16) NOT NULL,
	[ValCOF] [varchar](16) NOT NULL,
	[BasPIS] [varchar](16) NOT NULL,
	[ValPIS] [varchar](16) NOT NULL,
	[Cond] [varchar](3) NOT NULL,
	[TipoCL] [varchar](1) NOT NULL,
	[Especi] [varchar](5) NOT NULL,
	[ChvNfe] [varchar](44) NOT NULL,
	[DocSai] [varchar](9) NOT NULL,
	[SerSai] [varchar](3) NOT NULL,
	[ValDsc] [varchar](16) NOT NULL,
	[DatDig] [varchar](8) NOT NULL,
	[BasFre] [varchar](16) NOT NULL,
	[ValIRF] [varchar](16) NOT NULL,
	[NotOri] [varchar](6) NOT NULL,
	[SerOri] [varchar](3) NOT NULL,
	[BasINS] [varchar](16) NOT NULL,
	[ValINS] [varchar](16) NOT NULL,
	[ReduIC] [varchar](1) NOT NULL,
	[ReduIP] [varchar](1) NOT NULL,
	[DocEnt] [varchar](9) NOT NULL,
	[SerEnt] [varchar](3) NOT NULL,
	[OrigLa] [varchar](2) NOT NULL,
	[Status] [varchar](5) NOT NULL,
	[RecbMt] [varchar](8) NOT NULL,
	[TipLan] [varchar](1) NOT NULL,
	[TpFre] [varchar](1) NOT NULL,
	[ImpMet] [varchar](1) NOT NULL,
	[DtOcor] [datetime] NOT NULL,
	[HrOcor] [varchar](20) NOT NULL,
	[D_E_L_E_T_] [varchar](1) NOT NULL,
	[DtOcom] [datetime] NOT NULL,
	[DtFat] [datetime] NOT NULL,
	[Objid] [float] NOT NULL,
	[CodSef] [varchar](3) NOT NULL,
	[RecSef] [varchar](50) NOT NULL,
	[StatusInt] [int] NOT NULL,
	[R_E_C_N_O_] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ZZ5010_PK] PRIMARY KEY CLUSTERED 
(
	[R_E_C_N_O_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZZ5010] ADD  CONSTRAINT [DF_USR_ZZ5010_StatusInt]  DEFAULT ((0)) FOR [StatusInt]
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

IF OBJECT_ID('[dbo].[Usr_ZZ3010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZZ3010]
GO

CREATE TABLE [dbo].[USR_ZZ3010](
	[Filial] [varchar](2) NOT NULL,
	[TpLan] [varchar](1) NOT NULL,
	[NumIte] [varchar](2) NOT NULL,
	[CodZer] [varchar](5) NOT NULL,
	[CodPro] [varchar](20) NOT NULL,
	[UniMed] [varchar](2) NOT NULL,
	[Qtdven] [varchar](16) NULL,
	[ValVen] [varchar](18) NOT NULL,
	[ValTot] [varchar](16) NOT NULL,
	[ValIPI] [varchar](16) NOT NULL,
	[ValICM] [varchar](16) NOT NULL,
	[Grupo] [varchar](4) NOT NULL,
	[Tp] [varchar](2) NOT NULL,
	[NumSeq] [varchar](6) NOT NULL,
	[OrigLa] [varchar](2) NOT NULL,
	[CodTes] [varchar](3) NOT NULL,
	[CodCFO] [varchar](5) NOT NULL,
	[PerDes] [varchar](7) NOT NULL,
	[PerIPI] [varchar](7) NOT NULL,
	[PerICM] [varchar](7) NOT NULL,
	[NumPed] [varchar](6) NOT NULL,
	[ItemPV] [varchar](2) NOT NULL,
	[CodCli] [varchar](6) NOT NULL,
	[Loja] [varchar](2) NOT NULL,
	[CodLoc] [varchar](2) NOT NULL,
	[DatEmi] [varchar](8) NOT NULL,
	[SerDoc] [varchar](3) NOT NULL,
	[TipDoc] [varchar](1) NOT NULL,
	[NumDoc] [varchar](9) NOT NULL,
	[EstDoc] [varchar](2) NOT NULL,
	[BasIPI] [varchar](16) NOT NULL,
	[BasICM] [varchar](16) NOT NULL,
	[TipICM] [varchar](1) NOT NULL,
	[TipIPI] [varchar](1) NOT NULL,
	[TipISS] [varchar](1) NOT NULL,
	[PosIPI] [varchar](8) NOT NULL,
	[SitTri] [varchar](3) NOT NULL,
	[ValDsc] [varchar](16) NOT NULL,
	[Descri] [varchar](60) NOT NULL,
	[CoCIAP] [varchar](1) NOT NULL,
	[CampoA] [varchar](1) NOT NULL,
	[BasCOF] [varchar](16) NOT NULL,
	[ValCOF] [varchar](16) NOT NULL,
	[AliCOF] [varchar](6) NOT NULL,
	[BasPIS] [varchar](16) NOT NULL,
	[ValPIS] [varchar](16) NOT NULL,
	[DatDig] [varchar](8) NOT NULL,
	[DocSai] [varchar](9) NOT NULL,
	[SerSai] [varchar](3) NOT NULL,
	[AliPis] [varchar](6) NOT NULL,
	[TipCom] [varchar](1) NOT NULL,
	[VarFre] [varchar](16) NOT NULL,
	[TipLan] [varchar](1) NOT NULL,
	[ImpMet] [varchar](1) NOT NULL,
	[DtOcor] [datetime] NOT NULL,
	[CCusto] [varchar](9) NOT NULL,
	[Conta] [varchar](20) NOT NULL,
	[HrOcor] [varchar](20) NOT NULL,
	[NotOri] [varchar](9) NOT NULL,
	[SerOri] [varchar](3) NOT NULL,
	[D_E_L_E_T_] [varchar](1) NOT NULL,
	[DtOCom] [datetime] NOT NULL,
	[DtOFat] [datetime] NOT NULL,
	[BrICMS] [varchar](16) NOT NULL,
	[ICMSRe] [varchar](16) NOT NULL,
	[BasISS] [varchar](16) NOT NULL,
	[AlqISS] [varchar](6) NOT NULL,
	[ValISS] [varchar](16) NOT NULL,
	[BasINS] [varchar](16) NOT NULL,
	[AlqINS] [varchar](6) NOT NULL,
	[ValINS] [varchar](16) NOT NULL,
	[BasIRF] [varchar](16) NOT NULL,
	[AlqIRF] [varchar](6) NOT NULL,
	[ValIRF] [varchar](16) NOT NULL,
	[AlqPIS] [varchar](6) NOT NULL,
	[AlqCOF] [varchar](6) NOT NULL,
	[BasCSL] [varchar](16) NOT NULL,
	[AlqCSL] [varchar](6) NOT NULL,
	[ValCSL] [varchar](16) NOT NULL,
	[BasIMS] [varchar](16) NOT NULL,
	[AlqIMS] [varchar](6) NOT NULL,
	[ValIMS] [varchar](16) NOT NULL,
	[BasIM6] [varchar](16) NOT NULL,
	[AlqIM6] [varchar](6) NOT NULL,
	[ValIM6] [varchar](16) NOT NULL,
	[ValDes] [varchar](16) NULL,
	[Objid] [float] NOT NULL,
	[ObjidI] [float] NOT NULL,
	[CodNew] [varchar](20) NULL,
	[IteOri] [varchar](4) NOT NULL,
	[StatusInt] [int] NOT NULL,
	[R_E_C_N_O_] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ZZ3010_PK] PRIMARY KEY CLUSTERED 
(
	[R_E_C_N_O_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZZ3010] ADD  CONSTRAINT [DF_USR_ZZ3010_StatusInt]  DEFAULT ((0)) FOR [StatusInt]
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

IF OBJECT_ID('[dbo].[Usr_ZR6010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZR6010]
GO

CREATE TABLE [dbo].[USR_ZR6010](
	[Filial] [varchar](2) NOT NULL,
	[Doc] [varchar](9) NOT NULL,
	[Serie] [varchar](3) NOT NULL,
	[Fornec] [varchar](6) NOT NULL,
	[Loja] [varchar](2) NOT NULL,
	[ItemNF] [varchar](50) NULL,
	[Item] [varchar](2) NOT NULL,
	[Perc] [varchar](10) NOT NULL,
	[CC] [varchar](9) NOT NULL,
	[Conta] [varchar](20) NOT NULL,
	[ItemCT] [varchar](9) NOT NULL,
	[CLVL] [varchar](9) NOT NULL,
	[Custo1] [float] NOT NULL,
	[Custo2] [float] NOT NULL,
	[Custo3] [float] NOT NULL,
	[Custo4] [float] NOT NULL,
	[Custo5] [float] NOT NULL,
	[ImpMet] [varchar](1) NOT NULL,
	[DtOcorCom] [datetime] NOT NULL,
	[HrOcor] [varchar](20) NULL,
	[D_E_L_E_T_] [varchar](1) NOT NULL,
	[StatusInt] [int] NOT NULL,
	[R_E_C_N_O_] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ZR6010_PK] PRIMARY KEY CLUSTERED 
(
	[R_E_C_N_O_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZR6010] ADD  CONSTRAINT [DF_USR_ZR6010_StatusInt]  DEFAULT ((0)) FOR [StatusInt]
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

IF OBJECT_ID('[dbo].[Usr_ZI5010]', 'U') IS NOT NULL
  DROP TABLE [dbo].[Usr_ZI5010]
GO

USE [MT_Ibratec]
GO

CREATE TABLE [dbo].[USR_ZI5010](
	[Filial] [varchar](2) NOT NULL,
	[Doc] [varchar](9) NOT NULL,
	[Serie] [varchar](3) NOT NULL,
	[Espec] [varchar](5) NOT NULL,
	[Fornec] [varchar](6) NOT NULL,
	[Loja] [varchar](2) NOT NULL,
	[TPImp] [varchar](1) NOT NULL,
	[DocImp] [varchar](50) NOT NULL,
	[BsPIS] [float] NOT NULL,
	[AlPIS] [float] NOT NULL,
	[VlPIS] [float] NOT NULL,
	[BsCOF] [float] NOT NULL,
	[AlCOF] [float] NOT NULL,
	[VlCOF] [float] NOT NULL,
	[ACDRAW] [varchar](20) NOT NULL,
	[DtPPIS] [varchar](8) NOT NULL,
	[DtPCOF] [varchar](8) NOT NULL,
	[Local] [varchar](1) NOT NULL,
	[NDI] [varchar](12) NOT NULL,
	[DtDI] [varchar](8) NOT NULL,
	[LocDes] [varchar](30) NOT NULL,
	[UFDes] [varchar](2) NOT NULL,
	[DtDes] [varchar](8) NOT NULL,
	[CodExp] [varchar](6) NOT NULL,
	[NaDic] [varchar](3) NOT NULL,
	[SQADic] [varchar](3) NOT NULL,
	[CodFab] [varchar](6) NOT NULL,
	[VdeSDI] [float] NOT NULL,
	[BCImp] [float] NOT NULL,
	[DsPAD] [float] NOT NULL,
	[VlrII] [float] NOT NULL,
	[VlrIOF] [float] NOT NULL,
	[Item] [varchar](4) NOT NULL,
	[LojExp] [varchar](2) NOT NULL,
	[LojFab] [varchar](2) NOT NULL,
	[VTrans] [varchar](1) NOT NULL,
	[VaFRMM] [float] NOT NULL,
	[Interm] [varchar](1) NOT NULL,
	[CNPJAE] [varchar](14) NOT NULL,
	[UFTerc] [varchar](2) NOT NULL,
	[D_E_L_E_T_] [varchar](1) NOT NULL,
	[Objid] [float] NOT NULL,
	[ObjidI] [float] NOT NULL,
	[StatusInt] [int] NOT NULL,
	[R_E_C_N_O_] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ZI5010_PK] PRIMARY KEY CLUSTERED 
(
	[R_E_C_N_O_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[USR_ZI5010] ADD  CONSTRAINT [DF_USR_ZI5010_StatusInt]  DEFAULT ((0)) FOR [StatusInt]
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
ALTER PROCEDURE [dbo].[USR_SP_IntegraCliFor] (@cod    AS VARCHAR(20),
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

/****** Object:  StoredProcedure [dbo].[Usr_SP_IntegraProdutos]    Script Date: 04/05/2017 13:56:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Fernando Lima
-- Create date: 15/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de cadastro de Produtos do Metrics "ItensEstoque" 
-- para a tabela de integração Local "Usr_ZZ4010"
-- =============================================
ALTER PROCEDURE [dbo].[Usr_SP_IntegraProdutos](@cod    AS VARCHAR(20),
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
CodNew
)
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

/****** Object:  StoredProcedure [dbo].[Usr_SP_IntegraNotasFiscais]    Script Date: 04/05/2017 13:58:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 15/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de Cabeçalho de Notas Fiscais de Saída e Entrada
--				Metrics "NotasFiscais, EstNotasFiscaisEntrada"  para a tabela de integração Local "Usr_ZZ5010"
-- =============================================

ALTER PROCEDURE [dbo].[Usr_SP_IntegraNotasFiscais]
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

/****** Object:  StoredProcedure [dbo].[Usr_SP_IntegraItensNotas]    Script Date: 04/05/2017 14:03:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Fernando Lima
-- Create date: 17/05/2013
-- Description:	Carregas as informações sobre as alterações na tabela de Itens de Fiscais de Estrada e Saída do Metrics 
--          	"ItemNota e ESTItemNotaEntrada" para a tabela de integração Local "Usr_ZZ3010"
-- =============================================
CREATE PROCEDURE [dbo].[Usr_SP_IntegraItensNotas]
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

/****** Object:  StoredProcedure [dbo].[Usr_SP_IntegraRateioFin]    Script Date: 04/05/2017 14:07:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--=============================================
--Author:		Fernando Lima
--Create date: 27/06/2014
--Description:	Carregas as informações sobre rateios financeiros das Notas Fiscais de Entrada 
--         	 para a tabela de integração local"Usr_ZR6010"
--=============================================
ALTER PROCEDURE [dbo].[Usr_SP_IntegraRateioFin]
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

/****** Object:  StoredProcedure [dbo].[Usr_SP_IntegraDI]    Script Date: 04/05/2017 14:09:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Fernando Lima
-- Create date: 23/02/2015
-- Description:	Carregas as informações sobre as alterações na tabela que armazena informaçoes sobre as Declaraçoes de Importaçao 
-- para a tabela local de Integração "Usr_ZI5010"
-- =============================================
CREATE PROCEDURE [dbo].[Usr_SP_IntegraDI] (@objid  AS FLOAT,
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

IF OBJECT_ID ('[dbo].[Usr_IntegracaoCliFor]','TR') IS NOT NULL
   DROP TRIGGER [dbo].[Usr_IntegracaoCliFor]
GO

CREATE trigger [dbo].[Usr_IntegracaoCliFor]
on [dbo].[Crm_Clientes]

after   insert, update
as 
begin 

declare @cod as varchar(20)
declare @versao as int

select 
	@Cod = Codcliente , 
	@Versao = Version 
from Inserted

exec Usr_SP_IntegraCliFor @Cod, @Versao
end


GO

ALTER TABLE [dbo].[Crm_Clientes] ENABLE TRIGGER [Usr_IntegracaoCliForProtheus]
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

USE [MT_Ibratec]
GO

/****** Object:  Trigger [dbo].[Usr_Integracao_DI]    Script Date: 04/05/2017 14:11:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE trigger [dbo].[Usr_Integracao_DI]
on [dbo].[declaracaoimportacao]

after    insert,update
as 
begin 

declare @objid as float
declare @objidi as float

select 
	@objid = objidnota , 
	@objidi = objiditemnota 
from Inserted

exec Usr_SP_IntegraDI @objid, @objidi
end


GO

ALTER TABLE [dbo].[declaracaoimportacao] ENABLE TRIGGER [Usr_Integracao_DI]
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

USE [MT_Ibratec]
GO

/****** Object:  Trigger [dbo].[Usr_IntegracaoProdutos]    Script Date: 04/05/2017 14:14:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER trigger [dbo].[Usr_IntegracaoProdutos]
on [dbo].[ItensEstoque]

after    update
as 
begin 

declare @cod as varchar(20)
declare @versao as int

select 
	@Cod = CodItem , 
	@Versao = Version 
from Inserted

exec Usr_SP_IntegraProdutos @cod, @versao
end

GO










