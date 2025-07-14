# frozen_string_literal: true

class MessageFormatter
  def initialize(message, option)
    @message = message
  end

  def shout
    @message.upcase
  end
end
