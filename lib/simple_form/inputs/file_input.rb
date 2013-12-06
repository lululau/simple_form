module SimpleForm
  module Inputs
    class FileInput < Base
      def input
        @builder.file_field(attribute_name, input_html_options)
      end
            
      def input_html_classes
        super.push 'form-control'
      end
    end
  end
end
