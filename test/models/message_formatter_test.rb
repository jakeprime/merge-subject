# frozen_string_literal: true

require "test_helper"

class MessageFormatterTest < ActiveSupport::TestCase
  test "it initializes" do
    instance = MessageFormatter.new("Hello, world", source: :internal)

    assert instance.is_a?(MessageFormatter)
  end
end
