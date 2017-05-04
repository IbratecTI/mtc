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


