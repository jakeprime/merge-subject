# frozen_string_literal: true

require "test_helper"

class MessageFormatterTest < ActiveSupport::TestCase
  def subject
    MessageFormatter.new("hello, world", style: :formal)
  end

  test "it initializes" do
    assert subject.is_a?(MessageFormatter)
  end

  test "it shouts" do
    assert_equal "HELLO, WORLD", subject.shout
  end
end
