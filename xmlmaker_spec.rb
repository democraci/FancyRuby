require "./xmlmaker.rb"

describe XMLMaker do
  before :each do
    @maker = XMLMaker.new
  end

  it "h1 should generate <h1></h1>" do
    @maker.h1.should == "<h1>\n</h1>"
  end

  it "h1 with param should generate <h1>param</h1>" do
    @maker.h1("we can").should == "<h1>we can<h1>"
  end

  it "should generate <h1><h2></h2></h1>" do
    @maker.h1.h2.should == 
"<h1>
 <h2>
 </h2>
</h1>"
  end
end
