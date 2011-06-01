# encoding: utf-8

module Rocco
  class String
    
    class NoInput < ArgumentError; end
    class UnknownType < ArgumentError; end
    
    attr_accessor :input
    attr_accessor :type
    
    def initialize(input = nil, type = nil)
      @input = input if input
      @type  = type if type
    end
    
    def render
      raise NoInput, 'Please provide an input string' if @input.nil?
      raise UnknownType, 'Please specify the input type' if @type.nil?
      
      # TODO: Render input string to final output HTML
      
      html
    end
    
  end
end
