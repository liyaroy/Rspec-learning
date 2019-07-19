class Dog
  attr_accessor :good_dog, :has_been_walked

  def initialize(good_or_bad)
    @good_dog = good_or_bad
    @has_been_walked = false
  end

  def walk_dog
    @has_been_walked = true
  end
end

describe Dog do
  def create_and_walk_dog(good_or_bad)
    dog = Dog.new(good_or_bad)
    dog.walk_dog
    return dog
  end

  it 'should be able to create an walk a good_dog' do
    dog = create_and_walk_dog(true)
    expect(dog.good_dog).to be true
    expect(dog.has_been_walked).to be true
  end

  it 'should be able to create and walk a bad dog' do
    dog = create_and_walk_dog(false)
    expect(dog.good_dog).to be false
    expect(dog.has_been_walked).to be true
  end
end
