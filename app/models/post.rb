class Post < ApplicationRecord
  validates :title, presence: true
  validates :dscr, presence: true

  after_save :produce_kafka_message

  private

  def produce_kafka_message
    Karafka.producer.produce_async(
      topic: 'posts',
      payload: {
        'id': self.id,
        'title': self.title,
        'description': self.dscr
      }.to_json
    )
  end
end
