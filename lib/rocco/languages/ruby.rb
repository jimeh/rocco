# encoding: utf-8

module Rocco
  module Language
    class Ruby
      include AbstractLanguage
      
      identifier :ruby
      
      # file extensions
      extensions :rb, :Rakefile, :Gemfile
      
      # formatters
      docs :markdown
      meta :pygments
      
      # docs/code pattern matching
      pattern = {
        :single => "#",
        :multi  => { :start => '=begin', :middle => nil, :end => '=end' },
        :heredoc => "<<-"
      }
      
    end
  end
end
