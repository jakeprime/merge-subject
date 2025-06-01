# frozen_string_literal: true

class MessageFormatter
  def initialize(message, style:)
    @message = message
    @style = style
  end

  def shout
    @message.upcase
  end
end
