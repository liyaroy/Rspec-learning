describe "How to run specific example with tag"  do
  it 'is a slow test', slow: true do
    sleep 10
    puts "This test is slow"
  end

  it 'is a fast test', fast: true do
    puts "This test is fast"
  end
end
