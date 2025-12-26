local cfg = {}

cfg.groups = {
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ADMINISTRAÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	["Ceo"] = { _config = { gtype = "staff" }, "ceo.permissao", "admin.permissao", "cam.permissao", "moderador.permissao", "suporte.permissao", "reset.permissao", "ajuda.permissao", "teste.permissao", "dv.permissao", "polpar.permissao", "perm.som" },
	["Adm"] = { _config = { gtype = "staff" }, "admin.permissao", "moderador.permissao", "cam.permissao", "suporte.permissao", "reset.permissao", "ajuda.permissao", "teste.permissao", "dv.permissao", "polpar.permissao", "perm.som" },
	["Moderador"] = { _config = { gtype = "staff" }, "moderador.permissao", "suporte.permissao", "reset.permissao", "ajuda.permissao", "teste.permissao", "dv.permissao", "polpar.permissao" },
	["Suporte"] = { _config = { gtype = "staff" }, "suporte.permissao", "ajuda.permissao", "teste.permissao", "dv.permissao", "polpar.permissao" },
	["Teste"] = { _config = { gtype = "staff" }, "ajuda.permissao", "teste.permissao", "polpar.permissao", "dv.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VIPS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	["Bronze"] = { _config = { salario = 1000 }, "bronze.permissao" },	
	["Prata"] = { _config = { salario = 6000 }, "prata.permissao" },
	["Ouro"] = { _config = { salario = 11000 }, "ouro.permissao" },
	["Platina"] = { _config = { salario = 20000 }, "platina.permissao" },
	["Diamante"] = { _config = { salario = 25000 }, "diamante.permissao", "mochila.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- JURIDICO (Adicionado Paisana que faltava)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ["Juiz"] = { _config = { title = "Juiz", gtype = "job", salario = 15000, org = "Juiz" }, "juiz.permissao", "polpar.permissao", "porta.foum" },
    ["PaisanaJuiz"] = { _config = { title = "Juiz de Folga", gtype = "job" }, "paisanajuiz.permissao" },
    
    ["Advogado"] = { _config = { title = "Advogado", gtype = "job", salario = 12000, org = "Advogado" }, "advogado.permissao", "polpar.permissao", "porta.foum" },
    ["PaisanaAdvogado"] = { _config = { title = "Advogado de Folga", gtype = "job" }, "paisanaadvogado.permissao" },
	
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA CIVIL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	["Delegado"] = { _config = { title = "Delegado Civil", gtype = "job", salario = 13000, org = "Civil" }, "civil.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaDelegado"] = { _config = { title = "Delegado a Paisana", gtype = "job" }, "paisanadelegadocivil.permissao" },

	["Escrivao"] = { _config = { title = "Escrivão", gtype = "job", salario = 12000, org = "Civil" }, "civil.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaEscrivao"] = { _config = { title = "Escrivão a Paisana", gtype = "job" }, "paisanaescrivao.permissao" },

	["PeritoCriminal"] = { _config = { title = "Perito", gtype = "job", salario = 11000, org = "Civil" }, "civil.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaPeritoCriminal"] = { _config = { title = "Perito a Paisana", gtype = "job" }, "paisanaperitocriminal.permissao" },
	
	["Investigador"] = { _config = { title = "Investigador", gtype = "job", salario = 10000, org = "Civil" }, "civil.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaInvestigador"] = { _config = { title = "Investigador a Paisana", gtype = "job" }, "paisanainvestigador.permissao" },

	["AgenteCriminal"] = { _config = { title = "Agente Criminal", gtype = "job", salario = 9000, org = "Civil" }, "civil.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaAgenteCriminal"] = { _config = { title = "Agente a Paisana", gtype = "job" }, "paisanaagente.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA MÍLITAR
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	["Comandante"] = { _config = { title = "Comandante", gtype = "job", salario = 13000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaComandante"] = { _config = { title = "Comandante a Paisana", gtype = "job" }, "paisanacomandante.permissao" },

	["Coronel"] = { _config = { title = "Coronel", gtype = "job", salario = 12000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaCoronel"] = { _config = { title = "Coronel a Paisana", gtype = "job" }, "paisanacoronel.permissao" },

	["TenenteCoronel"] = { _config = { title = "TenenteCoronel", gtype = "job", salario = 11000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaTenenteCoronel"] = { _config = { title = "Ten. Coronel a Paisana", gtype = "job" }, "paisanatenentecoronel.permissao" },
	
	["Major"] = { _config = { title = "Major", gtype = "job", salario = 10000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaMajor"] = { _config = { title = "Major a Paisana", gtype = "job" }, "paisanamajor.permissao" },

	["Capitao"] = { _config = { title = "Capitão", gtype = "job", salario = 9000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaCapitao"] = { _config = { title = "Capitão a Paisana", gtype = "job" }, "paisanacapitao.permissao" },

	["1Tenente"] = { _config = { title = "1 Tenente", gtype = "job", salario = 8000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana1Tenente"] = { _config = { title = "1 Tenente a Paisana", gtype = "job"}, "paisana1tenente.permissao" },

	["2Tenente"] = { _config = { title = "2 Tenente", gtype = "job", salario = 8000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana2Tenente"] = { _config = { title = "2 Tenente a Paisana", gtype = "job"}, "paisana2tenente.permissao" },

	["Aspirante"] = { _config = { title = "Aspirante", gtype = "job", salario = 8000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaAspirante"] = { _config = { title = "Aspirante a Paisana", gtype = "job"}, "paisanaaspirante.permissao" },

	["SubTenente"] = { _config = { title = "Sub.Tenente", gtype = "job", salario = 8000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaSubTenente"] = { _config = { title = "Sub.Tenente a Paisana", gtype = "job"}, "paisanasubtenente.permissao" },
	
	["1Sargento"] = { _config = { title = "1 Sargento", gtype = "job", salario = 7000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana1Sargento"] = { _config = { title = "1 Sargento a Paisana", gtype = "job"}, "paisana1sargento.permissao" },

	["2Sargento"] = { _config = { title = "2 Sargento", gtype = "job", salario = 7000, org = "Policia" }, "militar.permissao", "policia.permissao" , "dv.permissao", "polpar.permissao" },
	["Paisana2Sargento"] = { _config = { title = "2 Sargento a Paisana", gtype = "job"}, "paisana2sargento.permissao" },

	["3Sargento"] = { _config = { title = "3 Sargento", gtype = "job", salario = 7000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana3Sargento"] = { _config = { title = "3 Sargento a Paisana", gtype = "job"}, "paisana3sargento.permissao" },

	["Cabo"] = { _config = { title = "Cabo", gtype = "job", salario = 6000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaCabo"] = { _config = { title = "Cabo a Paisana", gtype = "job" }, "paisanacabo.permissao" },

	["Soldado"] = { _config = { title = "Soldado", gtype = "job", salario = 6000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaSoldado"] = { _config = { title = "Soldado a Paisana", gtype = "job"}, "paisanasoldado.permissao" },

	["Recruta"] = { _config = { title = "Recruta", gtype = "job", salario = 5000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaRecruta"] = { _config = { title = "Recruta a Paisana", gtype = "job"}, "paisanarecruta.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA BAEP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	["ComandanteBaep"] = { _config = { title = "Comandante Baep", gtype = "job", salario = 13000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaComandanteBaep"] = { _config = { title = "Comandante a Paisana Baep", gtype = "job" }, "paisanacomandantebaep.permissao" },

	["CoronelBaep"] = { _config = { title = "Coronel Baep", gtype = "job", salario = 12000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaCoronelBaep"] = { _config = { title = "Coronel a Paisana Baep", gtype = "job" }, "paisanacoronelbaep.permissao" },

	["TenenteCoronelBaep"] = { _config = { title = "TenenteCoronel Baep", gtype = "job", salario = 11000, org = "Policia" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaTenenteCoronelBaep"] = { _config = { title = "Ten. Coronel a Paisana Baep", gtype = "job" }, "paisanatenentecoronelbaep.permissao" },
	
	["MajorBaep"] = { _config = { title = "Major Baep", gtype = "job", salario = 10000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaMajorBaep"] = { _config = { title = "Major a Paisana Baep", gtype = "job" }, "paisanamajorbaep.permissao" },

	["CapitaoBaep"] = { _config = { title = "Capitão Baep", gtype = "job", salario = 9000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaCapitaoBaep"] = { _config = { title = "Capitão a Paisana Baep", gtype = "job" }, "paisanacapitaobaep.permissao" },

	["1TenenteBaep"] = { _config = { title = "1 Tenente Baep", gtype = "job", salario = 8000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["Paisana1TenenteBaep"] = { _config = { title = "1 Tenente a Paisana Baep", gtype = "job"}, "paisana1tenentebaep.permissao" },

	["2TenenteBaep"] = { _config = { title = "2 Tenente Baep", gtype = "job", salario = 8000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["Paisana2TenenteBaep"] = { _config = { title = "2 Tenente a Paisana Baep", gtype = "job"}, "paisana2tenentebaep.permissao" },

	["AspiranteBaep"] = { _config = { title = "Aspirante Baep", gtype = "job", salario = 8000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaAspiranteBaep"] = { _config = { title = "Aspirante a Paisana Baep", gtype = "job"}, "paisanaaspirantebaep.permissao" },

	["SubTenenteBaep"] = { _config = { title = "Sub.Tenente Baep", gtype = "job", salario = 8000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaSubTenenteBaep"] = { _config = { title = "Sub.Tenente a Paisana Baep", gtype = "job"}, "paisanasubtenentebaep.permissao" },
	
	["1SargentoBaep"] = { _config = { title = "1 Sargento Baep", gtype = "job", salario = 7000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["Paisana1SargentoBaep"] = { _config = { title = "1 Sargento a Paisana Baep", gtype = "job"}, "paisana1sargentobaep.permissao" },

	["2SargentoBaep"] = { _config = { title = "2 Sargento Baep", gtype = "job", salario = 7000, org = "Baep" }, "militar.permissao", "policia.permissao" , "dv.permissao", "polpar.permissao","baep.permissao" },
	["Paisana2SargentoBaep"] = { _config = { title = "2 Sargento a Paisana Baep", gtype = "job"}, "paisana2sargentobaep.permissao" },

	["3SargentoBaep"] = { _config = { title = "3 Sargento Baep", gtype = "job", salario = 7000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["Paisana3SargentoBaep"] = { _config = { title = "3 Sargento a Paisana Baep", gtype = "job"}, "paisana3sargentobaep.permissao" },

	["CaboBaep"] = { _config = { title = "Cabo Baep", gtype = "job", salario = 6000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaCaboBaep"] = { _config = { title = "Cabo a Paisana Baep", gtype = "job" }, "paisanacabobaep.permissao" },

	["SoldadoBaep"] = { _config = { title = "Soldado Baep", gtype = "job", salario = 6000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaSoldadoBaep"] = { _config = { title = "Soldado a Paisana Baep", gtype = "job"}, "paisanasoldadobaep.permissao" },

	["RecrutaBaep"] = { _config = { title = "Recruta Baep", gtype = "job", salario = 5000, org = "Baep" }, "militar.permissao", "policia.permissao", "dv.permissao", "polpar.permissao","baep.permissao" },
	["PaisanaRecrutaBaep"] = { _config = { title = "Recruta a Paisana Baep", gtype = "job"}, "paisanarecrutabaep.permissao" },

	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA PRF
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    ["ComandantePrf"] = { _config = { title = "Comandante Prf", gtype = "job", salario = 13000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaComandantePrf"] = { _config = { title = "Comandante a Paisana Prf", gtype = "job" }, "paisanacomandantePrf.permissao" },

	["CoronelPrf"] = { _config = { title = "Coronel Prf", gtype = "job", salario = 12000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaCoronelPrf"] = { _config = { title = "Coronel a Paisana Prf", gtype = "job" }, "paisanacoronelPrf.permissao" },

	["TenenteCoronelPrf"] = { _config = { title = "TenenteCoronel Prf", gtype = "job", salario = 11000, org = "prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaTenenteCoronelPrf"] = { _config = { title = "Ten. Coronel a Paisana Prf", gtype = "job" }, "paisanatenentecoronelPrf.permissao" },
	
	["MajorPrf"] = { _config = { title = "Major Prf", gtype = "job", salario = 10000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaMajorPrf"] = { _config = { title = "Major a Paisana Prf", gtype = "job" }, "paisanamajorPrf.permissao" },

	["CapitaoPrf"] = { _config = { title = "Capitão Prf", gtype = "job", salario = 9000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaCapitaoPrf"] = { _config = { title = "Capitão a Paisana Prf", gtype = "job" }, "paisanacapitaoPrf.permissao" },

	["1TenentePrf"] = { _config = { title = "1 Tenente Prf", gtype = "job", salario = 8000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["Paisana1TenentePrf"] = { _config = { title = "1 Tenente a Paisana Prf", gtype = "job"}, "paisana1tenentePrf.permissao" },

	["2TenentePrf"] = { _config = { title = "2 Tenente Prf", gtype = "job", salario = 8000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["Paisana2TenentePrf"] = { _config = { title = "2 Tenente a Paisana Prf", gtype = "job"}, "paisana2tenentePrf.permissao" },

	["AspirantePrf"] = { _config = { title = "Aspirante Prf", gtype = "job", salario = 8000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaAspirantePrf"] = { _config = { title = "Aspirante a Paisana Prf", gtype = "job"}, "paisanaaspirantePrf.permissao" },

	["SubTenentePrf"] = { _config = { title = "Sub.Tenente Prf", gtype = "job", salario = 8000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaSubTenentePrf"] = { _config = { title = "Sub.Tenente a Paisana Prf", gtype = "job"}, "paisanasubtenentePrf.permissao" },
	
	["1SargentoPrf"] = { _config = { title = "1 Sargento Prf", gtype = "job", salario = 7000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["Paisana1SargentoPrf"] = { _config = { title = "1 Sargento a Paisana Prf", gtype = "job"}, "paisana1sargentoPrf.permissao" },

	["2SargentoPrf"] = { _config = { title = "2 Sargento Prf", gtype = "job", salario = 7000, org = "Prf" }, "policia.permissao" , "dv.permissao", "polpar.permissao","prf.permissao" },
	["Paisana2SargentoPrf"] = { _config = { title = "2 Sargento a Paisana Prf", gtype = "job"}, "paisana2sargentoPrf.permissao" },

	["3SargentoPrf"] = { _config = { title = "3 Sargento Prf", gtype = "job", salario = 7000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["Paisana3SargentoPrf"] = { _config = { title = "3 Sargento a Paisana Prf", gtype = "job"}, "paisana3sargentoPrf.permissao" },

	["CaboPrf"] = { _config = { title = "Cabo Prf", gtype = "job", salario = 6000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaCaboPrf"] = { _config = { title = "Cabo a Paisana Prf", gtype = "job" }, "paisanacaboPrf.permissao" },

	["SoldadoPrf"] = { _config = { title = "Soldado Prf", gtype = "job", salario = 6000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaSoldadoPrf"] = { _config = { title = "Soldado a Paisana Prf", gtype = "job"}, "paisanasoldadoPrf.permissao" },

	["RecrutaPrf"] = { _config = { title = "Recruta Prf", gtype = "job", salario = 5000, org = "Prf" }, "policia.permissao", "dv.permissao", "polpar.permissao","prf.permissao" },
	["PaisanaRecrutaPrf"] = { _config = { title = "Recruta a Paisana Prf", gtype = "job"}, "paisanarecrutaPrf.permissao" },

	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA ROTA
 ----------------------------------------------------------------------------------------------------------------------------------------------------

    ["ComandanteRota"] = { _config = { title = "Comandante Rota", gtype = "job", salario = 13000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaComandanteRota"] = { _config = { title = "Comandante a Paisana Rota", gtype = "job" }, "paisanacomandanterota.permissao" },

	["CoronelRota"] = { _config = { title = "Coronel Rota", gtype = "job", salario = 12000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaCoronelRota"] = { _config = { title = "Coronel a Paisana Rota", gtype = "job" }, "paisanacoronelrota.permissao" },

	["TenenteCoronelRota"] = { _config = { title = "TenenteCoronel Rota", gtype = "job", salario = 11000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaTenenteCoronelRota"] = { _config = { title = "Ten. Coronel a Paisana Rota", gtype = "job" }, "paisanatenentecoronelrota.permissao" },
	
	["MajorRota"] = { _config = { title = "Major Rota", gtype = "job", salario = 10000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaMajorRota"] = { _config = { title = "Major a Paisana Rota", gtype = "job" }, "paisanamajorrota.permissao" },

	["CapitaoRota"] = { _config = { title = "Capitão Rota", gtype = "job", salario = 9000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaCapitaoRota"] = { _config = { title = "Capitão a Paisana Rota", gtype = "job" }, "paisanacapitaorota.permissao" },

	["1TenenteRota"] = { _config = { title = "1 Tenente Rota", gtype = "job", salario = 8000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana1TenenteRota"] = { _config = { title = "1 Tenente a Paisana Rota", gtype = "job"}, "paisana1tenenterota.permissao" },

	["2TenenteRota"] = { _config = { title = "2 Tenente Rota", gtype = "job", salario = 8000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana2TenenteRota"] = { _config = { title = "2 Tenente a Paisana Rota", gtype = "job"}, "paisana2tenenterota.permissao" },

	["AspiranteRota"] = { _config = { title = "Aspirante Rota", gtype = "job", salario = 8000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaAspiranteRota"] = { _config = { title = "Aspirante a Paisana Rota", gtype = "job"}, "paisanaaspiranterota.permissao" },

	["SubTenenteRota"] = { _config = { title = "Sub.Tenente Rota", gtype = "job", salario = 8000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaSubTenenteRota"] = { _config = { title = "Sub.Tenente a Paisana Rota", gtype = "job"}, "paisanasubtenenterota.permissao" },
	
	["1SargentoRota"] = { _config = { title = "1 Sargento Rota", gtype = "job", salario = 7000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana1SargentoRota"] = { _config = { title = "1 Sargento a Paisana Rota", gtype = "job"}, "paisana1sargentorota.permissao" },

	["2SargentoRota"] = { _config = { title = "2 Sargento Rota", gtype = "job", salario = 7000, org = "Rota" }, "rota.permissao", "policia.permissao" , "dv.permissao", "polpar.permissao" },
	["Paisana2SargentoRota"] = { _config = { title = "2 Sargento a Paisana Rota", gtype = "job"}, "paisana2sargentorota.permissao" },

	["3SargentoRota"] = { _config = { title = "3 Sargento Rota", gtype = "job", salario = 7000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["Paisana3SargentoRota"] = { _config = { title = "3 Sargento a Paisana Rota", gtype = "job"}, "paisana3sargentorota.permissao" },

	["CaboRota"] = { _config = { title = "Cabo Rota", gtype = "job", salario = 6000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaCaboRota"] = { _config = { title = "Cabo a Paisana Rota", gtype = "job" }, "paisanacaborota.permissao" },

	["SoldadoRota"] = { _config = { title = "Soldado Rota", gtype = "job", salario = 6000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaSoldadoRota"] = { _config = { title = "Soldado a Paisana Rota", gtype = "job"}, "paisanasoldadorota.permissao" },

	["RecrutaRota"] = { _config = { title = "Recruta Rota", gtype = "job", salario = 5000, org = "Rota" }, "rota.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaRecrutaRota"] = { _config = { title = "Recruta a Paisana Rota", gtype = "job"}, "paisanarecrutarota.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA FORÇA TÁTICA
-------------------------------------------------------------------------------------------------------------------------------------------------------

    ["ComandanteFt"] = { _config = { title = "Comandante FT", gtype = "job", salario = 13000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaComandanteFt"] = { _config = { title = "Comandante a Paisana FT", gtype = "job" }, "paisanacomandanteft.permissao" },

    ["CoronelFt"] = { _config = { title = "Coronel FT", gtype = "job", salario = 12000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCoronelFt"] = { _config = { title = "Coronel a Paisana FT", gtype = "job" }, "paisanacoronelft.permissao" },

    ["MajorFt"] = { _config = { title = "Major FT", gtype = "job", salario = 10000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaMajorFt"] = { _config = { title = "Major a Paisana FT", gtype = "job" }, "paisanamajorft.permissao" },

    ["CapitaoFt"] = { _config = { title = "Capitão FT", gtype = "job", salario = 9000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCapitaoFt"] = { _config = { title = "Capitão a Paisana FT", gtype = "job" }, "paisanacapitaoft.permissao" },

    ["CaboFt"] = { _config = { title = "Cabo FT", gtype = "job", salario = 6000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCaboFt"] = { _config = { title = "Cabo a Paisana FT", gtype = "job" }, "paisanacaboft.permissao" },

    ["SoldadoFt"] = { _config = { title = "Soldado FT", gtype = "job", salario = 6000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaSoldadoFt"] = { _config = { title = "Soldado a Paisana FT", gtype = "job"}, "paisanasoldadoft.permissao" },

    ["RecrutaFt"] = { _config = { title = "Recruta FT", gtype = "job", salario = 5000, org = "Força Tatica" }, "ft.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaRecrutaFt"] = { _config = { title = "Recruta a Paisana FT", gtype = "job"}, "paisanarecrutaft.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA TOR
-------------------------------------------------------------------------------------------------------------------------------------------------------

    ["ComandanteTor"] = { _config = { title = "Comandante Tor", gtype = "job", salario = 13000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaComandanteTor"] = { _config = { title = "Comandante a Paisana Tor", gtype = "job" }, "paisanacomandantetor.permissao" },

    ["CoronelTor"] = { _config = { title = "Coronel Tor", gtype = "job", salario = 12000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCoronelTor"] = { _config = { title = "Coronel a Paisana Tor", gtype = "job" }, "paisanacoroneltor.permissao" },

    ["MajorTor"] = { _config = { title = "Major Tor", gtype = "job", salario = 10000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaMajorTor"] = { _config = { title = "Major a Paisana Tor", gtype = "job" }, "paisanamajortor.permissao" },

    ["CapitaoTor"] = { _config = { title = "Capitão Tor", gtype = "job", salario = 9000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCapitaoTor"] = { _config = { title = "Capitão a Paisana Tor", gtype = "job" }, "paisanacapitaotor.permissao" },

    ["CaboTor"] = { _config = { title = "Cabo Tor", gtype = "job", salario = 6000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCaboTor"] = { _config = { title = "Cabo a Paisana Tor", gtype = "job" }, "paisanacabotor.permissao" },

    ["SoldadoTor"] = { _config = { title = "Soldado Tor", gtype = "job", salario = 6000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaSoldadoTor"] = { _config = { title = "Soldado a Paisana Tor", gtype = "job"}, "paisanasoldadotor.permissao" },

    ["RecrutaTor"] = { _config = { title = "Recruta Tor", gtype = "job", salario = 5000, org = "Tor" }, "tor.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaRecrutaTor"] = { _config = { title = "Recruta a Paisana Tor", gtype = "job"}, "paisanarecrutator.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA GCM
-------------------------------------------------------------------------------------------------------------------------------------------------------

    ["ComandanteGcm"] = { _config = { title = "Comandante Gcm", gtype = "job", salario = 13000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaComandanteGcm"] = { _config = { title = "Comandante a Paisana Gcm", gtype = "job" }, "paisanacomandantegcm.permissao" },

    ["CoronelGcm"] = { _config = { title = "Coronel Gcm", gtype = "job", salario = 12000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCoronelGcm"] = { _config = { title = "Coronel a Paisana Gcm", gtype = "job" }, "paisanacoronelgcm.permissao" },

    ["MajorGcm"] = { _config = { title = "Major Gcm", gtype = "job", salario = 10000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaMajorGcm"] = { _config = { title = "Major a Paisana Gcm", gtype = "job" }, "paisanamajorgcm.permissao" },

    ["CapitaoGcm"] = { _config = { title = "Capitão Gcm", gtype = "job", salario = 9000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCapitaoGcm"] = { _config = { title = "Capitão a Paisana Gcm", gtype = "job" }, "paisanacapitaogcm.permissao" },

    ["CaboGcm"] = { _config = { title = "Cabo Gcm", gtype = "job", salario = 6000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCaboGcm"] = { _config = { title = "Cabo a Paisana Gcm", gtype = "job" }, "paisanacabogcm.permissao" },

    ["SoldadoGcm"] = { _config = { title = "Soldado Gcm", gtype = "job", salario = 6000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaSoldadoGcm"] = { _config = { title = "Soldado a Paisana Gcm", gtype = "job"}, "paisanasoldadogcm.permissao" },

    ["RecrutaGcm"] = { _config = { title = "Recruta Gcm", gtype = "job", salario = 5000, org = "Gcm" }, "gcm.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaRecrutaGcm"] = { _config = { title = "Recruta a Paisana Gcm", gtype = "job"}, "paisanarecrutagcm.permissao" },	

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA ROCAM
-------------------------------------------------------------------------------------------------------------------------------------------------------

    ["ComandanteRocam"] = { _config = { title = "Comandante Rocam", gtype = "job", salario = 13000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaComandanteGcm"] = { _config = { title = "Comandante a Paisana Rocam", gtype = "job" }, "paisanacomandanteRocam.permissao" },

    ["CoronelRocam"] = { _config = { title = "Coronel Rocam", gtype = "job", salario = 12000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCoronelRocam"] = { _config = { title = "Coronel a Paisana Rocam", gtype = "job" }, "paisanacoronelRocam.permissao" },

    ["MajorRocam"] = { _config = { title = "Major Rocam", gtype = "job", salario = 10000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaMajorRocam"] = { _config = { title = "Major a Paisana Rocam", gtype = "job" }, "paisanamajorRocam.permissao" },

    ["CapitaoRocam"] = { _config = { title = "Capitão Rocam", gtype = "job", salario = 9000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCapitaoRocam"] = { _config = { title = "Capitão a Paisana Rocam", gtype = "job" }, "paisanacapitaoRocam.permissao" },

    ["CaboRocam"] = { _config = { title = "Cabo Rocam", gtype = "job", salario = 6000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaCaboRocam"] = { _config = { title = "Cabo a Paisana Rocam", gtype = "job" }, "paisanacaboRocam.permissao" },

    ["SoldadoRocam"] = { _config = { title = "Soldado Rocam", gtype = "job", salario = 6000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaSoldadoRocam"] = { _config = { title = "Soldado a Paisana Rocam", gtype = "job"}, "paisanasoldadoRocam.permissao" },

    ["RecrutaRocam"] = { _config = { title = "Recruta Rocam", gtype = "job", salario = 5000, org = "Rocam" }, "Rocam.permissao", "policia.permissao", "dv.permissao", "polpar.permissao" },
    ["PaisanaRecrutaRocam"] = { _config = { title = "Recruta a Paisana Rocam", gtype = "job"}, "paisanarecrutaRocam.permissao" },		


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HOSPITAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	["Diretor"] = { _config = { title = "Diretor", gtype = "job", org = "Hospital", salario = 10000 }, "ems.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaDiretor"] = { _config = { title = "Diretor de folga", gtype = "job" }, "paisanadiretor.permissao" },

	["Medico"] = { _config = { title = "Médico", gtype = "job", org = "Hospital", salario = 8000 }, "ems.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaMedico"] = { _config = { title = "Médico de folga", gtype = "job" }, "paisanamedico.permissao" },

	["Paramedico"] = { _config = { title = "Paramédico", gtype = "job", org = "Hospital", salario = 6000 }, "ems.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaParamedico"] = { _config = { title = "Paramédico de folga", gtype = "job" }, "paisanaparamedico.permissao" },
	
	["Enfermeiro"] = { _config = { title = "Enfermeiro", gtype = "job", org = "Hospital", salario = 4000 }, "ems.permissao", "dv.permissao", "polpar.permissao" },
	["PaisanaEnfermeiro"] = { _config = { title = "Enfermeiro de folga", gtype = "job" } ,"paisanaenfermeiro.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ ARMAS ]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["LiderFranca"] = { _config = { title = "Lider França", gtype = "job", salario = nil, org = "Franca" }, "liderfranca.permissao", "franca.permissao", "arma.permissao" },
	["Franca"] = { _config = { title = "França", gtype = "job", salario = nil, org = "Franca" }, "franca.permissao" },

	["LiderTurquia"] = { _config = { title = "Lider Turquia", gtype = "job", salario = nil, org = "Turquia" }, "liderturquia.permissao", "turquia.permissao", "arma.permissao" },
	["Turquia"] = { _config = { title = "Turquia", gtype = "job", salario = nil, org = "Turquia" }, "turquia.permissao", "arma.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ MUNICAO ]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["LiderYakuza"] = { _config = { title = "Lider Yakuza", gtype = "job", salario = nil, org = "Yakuza" }, "lideryakuza.permissao", "yakuza.permissao", "municao.permissao" },
	["Yakuza"] = { _config = { title = "Yakuza", gtype = "job", salario = nil, org = "Yakuza" }, "yakuza.permissao", "municao.permissao" },

	["LiderCartel"] = { _config = { title = "Lider Cartel", gtype = "job", salario = nil, org = "Cartel" }, "lidercartel.permissao", "cartel.permissao", "municao.permissao" },
	["Cartel"] = { _config = { title = "Cartel", gtype = "job", salario = nil, org = "Cartel" }, "cartel.permissao", "municao.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ DESMANCHE ] 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["LiderVagos"] = { _config = { title = "Lider Vagos", gtype = "job", salario = nil, org = "Vagos" }, "lidervagos.permissao", "vagos.permissao", "desmanche.permissao" },
	["Vagos"] = { _config = { title = "Vagos", gtype = "job", salario = nil, org = "Vagos" }, "vagos.permissao", "desmanche.permissao" },


	["LiderAztecas"] = { _config = { title = "Lider Aztecas", gtype = "job", salario = nil, org = "Aztecas" }, "lideraztecas.permissao", "aztecas.permissao", "desmanche.permissao" },
	["Aztecas"] = { _config = { title = "Aztecas", gtype = "job", salario = nil, org = "Aztecas" }, "aztecas.permissao", "desmanche.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ LAVAGEM ]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["LiderVanilla"] = { _config = { title = "Lider Vanilla", gtype = "job", salario = nil, org = "Vanilla" }, "lidervanilla.permissao", "vanilla.permissao", "lavagem.permissao" },
	["Vanilla"] = { _config = { title = "Vanilla", gtype = "job", salario = nil, org = "Vanilla" }, "vanilla.permissao", "lavagem.permissao" },


	["LiderMotoClub"] = { _config = { title = "Lider Moto Club", gtype = "job", salario = nil, org = "MotoClub" }, "lidermotoclub.permissao", "motoclub.permissao", "lavagem.permissao" },
	["MotoClub"] = { _config = { title = "Moto Club", gtype = "job", salario = nil, org = "MotoClub" }, "motoclub.permissao", "lavagem.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ DROGAS ]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["LiderBallas"] = { _config = { title = "Lider Ballas", gtype = "job", salario = nil, org = "Ballas" }, "liderballas.permissao", "ballas.permissao", "drogas.permissao" },
	["Ballas"] = { _config = { title = "Ballas", gtype = "job", salario = nil, org = "Ballas" }, "ballas.permissao", "drogas.permissao" },
	
	
	["LiderGrove"] = { _config = { title = "Lider Grove", gtype = "job", salario = nil, org = "Grove" }, "lidergrove.permissao", "grove.permissao", "drogas.permissao" },
	["Grove"] = { _config = { title = "Grove", gtype = "job", salario = nil, org = "Grove" }, "grove.permissao", "drogas.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Mecanica
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["LiderMecanico"] = { _config = { title = "Lider Mecânico", gtype = "job", salario = nil, org = "Mecanica" }, "lidermecanico.permissao", "dv.permissao", "mecanico.permissao"},
	["PaisanaMecanicoLider"] = { _config = { title = "Mecânico de folga", gtype = "job", salario = nil, org = "Mecanica" }, "paisanamecanicolider.permissao"},


	["Mecanico"] = { _config = { title = "Mecânico", gtype = "job", salario = nil, org = "Mecanica" }, "mecanico.permissao", "dv.permissao" },
	["PaisanaMecanico"] = { _config = { title = "Mecânico de folga", gtype = "job", salario = nil, org = "Mecanica" }, "paisanamecanico.permissao" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- [ RESTAURANTES ]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["BurgerShot"] = { _config = { title = "Burguer Shot", gtype = "job", salario = nil, org = "BurgerShot" }, "burgershot.permissao" },
}

cfg.users = {
	[1] = { "Ceo" },
	[2] = { "Ceo" }
}

cfg.selectors = { }

return cfg
