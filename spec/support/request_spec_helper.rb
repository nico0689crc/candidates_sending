module RequestSpecHelper

  def json_response_body
    JSON.parse(response_body)
  end

  def response_body
    response.body
  end

  def json_response(data: nil, message: nil, status: :ok)
    response = {}
    response[:status] = [:ok, :created, :no_content].include?(status)? :ok : :error
    response[:message] = message if message.present?
    response[:data] = data unless data.nil?
    response.to_json
  end
end


