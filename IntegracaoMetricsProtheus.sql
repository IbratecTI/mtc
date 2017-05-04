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


