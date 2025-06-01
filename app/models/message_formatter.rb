# frozen_string_literal: true

class MessageFormatter
  def self.build(message)
    new(message)
  end

  def initialize(message)
    @message = message
  end
end
