# encoding: utf-8
# language:pt

class ConsultUserApi
    def consult(url) 
        @response = HTTParty.get(
            "#{$baseurl_api}#{url}",
            basic_auth: {
                username: "inmetrics",
                password: "automacao",
    
            },
            headers: { 
                "Content-Type" => 'application/json'
            }
        )
    end

    def last_user_registred(url)
        record_user_response = YAML.load(File.read(%-#{Dir.pwd}/features/support/data/test_data.yaml-))
        last_user = record_user_response['last_id_user_api']['id']

        @response = HTTParty.get(
            "#{$baseurl_api}#{url}/#{last_user}",
            basic_auth: {
                username: "inmetrics",
                password: "automacao",

            },
            headers: { 
                "Content-Type" => 'application/json'
            }
        )
    end

    def response_code
        @response.code
    end

    def quantity_all_user
        puts "Quantidade de usuários cadastrados: " + @response.size.to_s
    end

    def consult_last_user
        puts "Nome: " + @response["nome"]
        puts "CPF: " + @response["cpf"]
        puts "Cargo: " + @response["cargo"]
        puts "Admissão: " + @response["admissao"]
        puts "Tipo Contratação: " + @response["tipoContratacao"]
        @response
    end
end
  