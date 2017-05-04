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

