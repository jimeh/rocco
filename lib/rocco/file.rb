# encoding: utf-8

module Rocco
  class File
    
    class NoInputFile < ArgumentError; end
    
    attr_accessor :input_file
    attr_accessor :output_file
    
    def initialize(input_file = nil, output_file = nil)
      @input_file  = input_file if input_file
      @output_file = output_file if output_file
    end
    
    # TODO: flesh out beyond conceptional example
    def render
      raise NoInputFile, 'Please specify an input file' if @input.nil?
      
      data = ::File.read(input_file)
      
      html = String.new(data, get_type(input_file)).render
      
      File.open(@output, 'w') { |f| f.write(html) } if @output
      html
    end
    
    def get_type(filename)
      base = ::File.basename(filename)
      (base =~ /(.+)\.(.+?)$/i) ? $2.to_sym : base.to_sym
    end
    
  end
end
