require "test_helper"

class HashTest < ActiveSupport::TestCase

  test "cleanup" do
    whitelist = %w(controller action id _input _popup resource attribute)
    whitelist.each do |w|
      expected = { w => w }
      assert_equal expected, expected.to_unsafe_h.cleanup
    end
  end

  test "cleanup rejects unwanted stuff" do
    hash = {"_nullify" => "dragonfly"}
    assert hash.cleanup.empty?
  end

end
