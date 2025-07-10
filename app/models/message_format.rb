# frozen_string_literal: true

class MessageFormat
  def initialize(message)
    @message = message
  end

  def shout
    @message.upcase
  end
end
