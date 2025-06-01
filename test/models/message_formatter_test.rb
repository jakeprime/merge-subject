# frozen_string_literal: true

require "test_helper"

class MessageFormatterTest < ActiveSupport::TestCase
  def subject
    MessageFormatter.new("hello, world")
  end

  test "it initializes" do
    assert subject.is_a?(MessageFormatter)
  end
end
