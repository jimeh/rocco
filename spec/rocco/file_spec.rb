# encoding: utf-8

require 'spec_helper'

describe Rocco::File do
  
  it { should respond_to :input_file }
  it { should respond_to :output_file }
  
  it "should determine correct type from filename" do
    alternatives = [
      [:rb, "test.rb"],
      [:rb, "/path/to/test.rb"],
      [:Gemfile, "path/Gemfile"]
    ]
    
    alternatives.each do |type, filename|
      subject.get_type(filename).should == type
    end
  end
  
end