
class HelloWorld
  def say_hello
    "Hello World!"
  end
end

describe HelloWorld do
  context "When testing hello world class" do
    it "Should say 'hello world' when we call say_hello method" do
      hw = HelloWorld.new
      message = hw.say_hello
      expect(message).to eq "Hello World!"
    end
  end
end
