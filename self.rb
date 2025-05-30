class Foo 
  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar

class FooStatic
  def self.bar
    puts self
  end
end

FooStatic.bar