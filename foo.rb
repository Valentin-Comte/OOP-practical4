class Test
  def foo
    puts 'foo'
    foobar
  end
  def foobar
    puts 'foobar'
  end
end

class Foo < Test
  def foobar
    puts 'not foobar'
  end
end

def main()
  foo = Foo.new
  foo.foo
end

main()