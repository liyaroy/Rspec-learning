class SimpleClass
  attr_accessor :message

  def initialize()
    puts "creating a new instance of the SimpleClass class"
    @message = 'abcd'
  end

  def update_message(new_message)
    @message = new_message
  end
end

describe "SimpleClass"  do
  before(:each) do
    @simple_class = SimpleClass.new
  end

  it 'should have an initial message' do
    expect(@simple_class).to_not be_nil
    @simple_class.message = 'Hello World!'
  end

  it 'should be able to change its message' do
    @simple_class.update_message('a new message')
    expect(@simple_class.message).to_not be 'abcd'
  end
end

describe "Before and after hook" do
  before(:each) do
    puts "Runs before each example"
  end

  after(:each) do
    puts "Runs after each example"
  end

  before(:all) do
    puts "Runs before all example"
  end

  after(:all) do
    puts "Runs after all example"
  end

  it "is the first example in this spec file" do
    puts "Running first example"
  end

  it "is the second example in this soec file" do
    puts "Running the second esample"
  end
end
