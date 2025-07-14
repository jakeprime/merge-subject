# frozen_string_literal: true

require "test_helper"

class MessageFormatterTest < ActiveSupport::TestCase
  test "it initializes" do
    instance = MessageFormatter.new("Hello, world", true)

    assert instance.is_a?(MessageFormatter)
  end

  test "it shouts" do
    instance = MessageFormatter.new("Hello, world", true)

    assert_equal "HELLO, WORLD", instance.shout
  end
end
