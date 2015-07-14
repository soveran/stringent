require_relative "../lib/stringent"

test do
  assert_equal 1, Stringent.generate(entropy: 1, table: '01').size
  assert_equal 2, Stringent.generate(entropy: 2, table: '01').size
end
