class PostsConsumer < ApplicationConsumer
  def consume
    messages.each do |message|
      puts "\n<<< MESSAGE RECVD. >>> \n #{message.payload}"
    end
  end
end
