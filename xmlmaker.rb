#a dsl for generate xml file

class XMLMaker
  def method_missing(name, *arg, &block)
    prefix = "<#{name}>"
    postfix = "</#{name}>"
    midstr = self.class_eval &block if block_given?
    midstr ||= ""
    "#{prefix}\n#{midstr}#{postfix}\n".chop!
  end
end
