require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    assert_equal '{}', convert_hash_syntax('{}')
    old_syntax = <<~TEXT
      {
        :name => 'Alice'  ,
        :age=>20,  
        :gender  =>  :female,
        :hash =>{ :key => 'value' }   
      }
    TEXT
    actual = convert_hash_syntax(old_syntax)
    puts actual
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female,
        hash: { key: 'value' }
      }
    TEXT
    assert_equal expected, actual
  end
end
