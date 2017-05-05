

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

CREATE TRIGGER [dbo].[Usr_IntegracaoProdutos]
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
USE [master]

GO

-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Insere as informações de Cadastro de Clientes e Fornecedores na tabela de Integração do Protheus "ZZ1010"
-- =============================================
USE [MT_Ibratec]

GO

-- Drop stored procedure if it already exists
IF OBJECT_ID('Usr_sp_integraclifor_protheus', 'P') IS NOT NULL DROP PROCEDURE Usr_sp_integraclifor_protheus
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
IF OBJECT_ID('Usr_sp_integraprodutos_protheus', 'P') IS NOT NULL DROP PROCEDURE Usr_sp_integraprodutos_protheus
GO

CREATE PROCEDURE [dbo].[Usr_sp_integraprodutos_protheus]
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
IF OBJECT_ID('Usr_sp_integranotas_protheus', 'P') IS NOT NULL DROP PROCEDURE Usr_sp_integranotas_protheus
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
IF OBJECT_ID('Usr_sp_integraitensnotas_protheus', 'P') IS NOT NULL DROP PROCEDURE Usr_sp_integraitensnotas_protheus
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


GO

-- Drop stored procedure if it already exists
IF OBJECT_ID('Usr_sp_integrarateiofin_protheus', 'P') IS NOT NULL DROP PROCEDURE Usr_sp_integrarateiofin_protheus
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
IF OBJECT_ID('Usr_sp_integradi_protheus', 'P') IS NOT NULL DROP PROCEDURE Usr_sp_integradi_protheus
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


-- =============================================
-- Author:		Fernando Lima
-- Create date: 04/05/2017
-- Description:	Job de Integração Metrics Protheus 
-- =============================================
USE [msdb]


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


