json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :endereco, :telefone, :doenca
  json.url paciente_url(paciente, format: :json)
end
