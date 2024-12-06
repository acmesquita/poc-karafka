class WelcomeController < ApplicationController
  def index
    puts "[WelcomeController#create] Start producer"
    Karafka.producer.produce_async(
      topic: 'example',
      payload: {'ping': 'pong'}.to_json
    )
  end
end