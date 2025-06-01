# frozen_string_literal: true

class MessageFormatter
  def initialize(message, source:)
    @message = message
    @source = source
  end

  def shout
    @message.upcase
  end
end
