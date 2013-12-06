module SimpleForm
  module Inputs
    class TextInput < Base
      enable :placeholder, :maxlength

      def input
        @builder.text_area(attribute_name, input_html_options)
      end
                  
      def input_html_classes
        super.push 'form-control'
      end
    end
  end
end
