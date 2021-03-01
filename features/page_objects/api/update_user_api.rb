# encoding: utf-8
# language:pt

class UpdateUserApi
    def consult_last_register_user
        record_user_response = YAML.load(File.read(%-#{Dir.pwd}/features/support/data/test_data.yaml-))
        @last_user = record_user_response['last_id_user_api']['id']
    end

    def data_user
        @body = {
            admissao: "03/09/2020",
            cargo: "QA",
            comissao: "350.00,00",
            cpf: "021.346.190-07",
            departamentoId: 2,
            nome: "antonio",
            salario: "350.00,00",
            sexo: "m",
            tipoContratacao: "clt"
        }
    end

    def data_user_invalid(admissao, cargo, comissao, cpf, nome, salario, sexo, departamento, tipocontratacao)
        @body = {
            admissao: admissao,
            cargo: cargo,
            comissao: comissao,
            cpf: cpf,
            departamentoId: departamento,
            nome: nome,
            salario: salario,
            sexo: sexo,
            tipoContratacao: tipocontratacao
        }
    end

    def put_user(url)
        @response = HTTParty.put(
            "#{$baseurl_api}#{url}/#{@last_user}",
            basic_auth: {
                username: "inmetrics",
                password: "automacao",
    
            },
            headers: { 
                "Content-Type" => 'application/json'
            },
            body: @body.to_json
        )
    end

    def response_code
        @response.code
    end

    def response_data
        @response
    end
end