local DB = {}

-- Função de inicialização do driver
function DB.init()
    print("^2[VRP] ^7OxMySQL Driver loaded successfully.")
end

-- Função que prepara querys (No oxmysql não precisamos preparar igual Ghmatti, mas mantemos a estrutura)
function DB.prepare(name, query)
    -- Apenas guarda a query mapeada pelo nome
    DB.prepares = DB.prepares or {}
    DB.prepares[name] = query
end

-- Função que executa as queries
function DB.query(name, params, mode)
    local query = DB.prepares[name] or name
    local p = promise.new()

    if mode == "execute" then
        exports.oxmysql:execute(query, params, function(affectedRows)
            p:resolve(affectedRows or 0)
        end)
    else
        exports.oxmysql:execute(query, params, function(result)
            p:resolve(result or {})
        end)
    end

    return Citizen.Await(p)
end

-- Registra o driver no VRP
vRP.registerDBDriver("oxmysql", DB.init, DB.prepare, DB.query)