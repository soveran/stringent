require "securerandom"

module Stringent
  TABLE = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.freeze

  def self.generate(entropy: 256, table: TABLE)
    number = SecureRandom.random_number(2 ** entropy)
    length = (entropy / Math.log2(table.size)).ceil

    Array.new(length) {
      number, modulo = number.divmod(table.size)
      table[modulo]
    }.join
  end
end
