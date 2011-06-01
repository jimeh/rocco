# encoding: utf-8

module Rocco
  module Language
    module AbstractLanguage
      
      def self.included(base)
        base.extend(ClassMethods)
        base.send(:include, InstanceMethods)
      end
      
      # ### Class Methods
      module ClassMethods
        
        # TODO: set a global list of available extentions for reverse lookup
        def extensions(*exts)
          @extensions = ext
        end
        
      end # ClassMethods
      
      # ### Instance Methods
      module InstanceMethods
        
        def split(string = nil)
        
        end
      
        def parse(sections = [])
        
        end
        
      end # InstanceMethods
      
    end #AbstractLanguage
  end
end
