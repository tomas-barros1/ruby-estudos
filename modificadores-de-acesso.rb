class Foo
  def call_private
    bar
  end

  private

  def bar
    puts "private"
  end
end

foo = Foo.new

foo.call_private

class FooProtected
  def call_protected(instance)
    instance.bar
  end

  protected

  def bar
    puts "protected"
  end

end

instance_1= FooProtected.new
instance_2= FooProtected.new

instance_1.call_protected(instance_1)
instance_2.call_protected(instance_2)
