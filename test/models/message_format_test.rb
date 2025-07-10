# frozen_string_literal: true

require "test_helper"

class MessageFormatTest < ActiveSupport::TestCase
  test "it initializes" do
    instance = MessageFormat.new("Hello, world")

    assert instance.is_a?(MessageFormat)
  end

  test "it shouts" do
    instance = MessageFormat.new("Hello, world")

    assert_equal "HELLO, WORLD", instance.shout
  end
end
