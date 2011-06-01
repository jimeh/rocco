# encoding: utf-8

module Rocco
  module Language
    class Markdown
      include AbstractLanguage
      
      identifier :markdown
      
      # file extensions
      extensions :md, :mdown, :markdown
      
      # formatters
      docs :markdown
      meta :markdown, :toc => true
      
    end
  end
end
