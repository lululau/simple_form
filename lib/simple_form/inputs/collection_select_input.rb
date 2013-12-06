module SimpleForm
  module Inputs
    class CollectionSelectInput < CollectionInput
      def input
        label_method, value_method = detect_collection_methods

        @builder.collection_select(
          attribute_name, collection, value_method, label_method,
          input_options, input_html_options
        )
      end
      
      def input_html_classes
        super.push 'form-control'
      end
    end
  end
end
