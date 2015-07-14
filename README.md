Stringent
=========

Generate a string with a target entropy

Description
-----------

Stringent uses `SecureRandom` to generate a pseudo-random number
with a target entropy, and proceeds to encode it with a given table
of symbols. The target entropy defaults to 256 bits, and the table
of symbols defaults to case sensitive alphanumeric characters. Both
values can be can be passed as parameters.

The entropy parameter means that there are `2^entropy` possible
outputs for a given call. However, it does not mean that each bit
is actually generated using one bit of entropy, since `SecureRandom`
may use `/dev/urandom` which, while unguessable, may have less than
1 bit of entropy for each bit of output.

Usage
-----

Generate a random string with the default values for target entropy
and symbols table:

```ruby
>> Stringent.generate
=> "kEPcWwph6OkyHIKZtw4DwnWnlJo0Q6QoDp8Iykshrfm"
```

Generate a random string with a custom target entropy:

```ruby
>> Stringent.generate(entropy: 32)
=> "Kqd6e0"
```

Generate a random string with a custom target entropy and a custom
table:

```ruby
>> Stringent.generate(entropy: 16, table: "01")
=> "1000100110000000"
```

Installation
------------

```
$ gem install stringent
```
