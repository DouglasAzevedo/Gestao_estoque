json.extract! endereco, :id, :rua, :cep, :numero, :cidade_id, :estado_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
