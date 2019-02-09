class ConfirmMailSent
  include HTTParty

  attr_reader :counter_id, :headers

  def call(*args)
    new(*args).call
  end

  def initialize(counter_id)
    @counter_id = counter_id
    @headers = {}
  end

  def call
    url = "http://lvh.me:3001/receiver/#{counter_id}"
    answer = self.class.put(url, body: {}.to_json, headers: headers)
    { success: answer.response.code == '200', code: answer.response.code }
  end
end
