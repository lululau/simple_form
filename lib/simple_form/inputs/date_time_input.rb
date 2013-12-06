module SimpleForm
  module Inputs
    class DateTimeInput < Base
      def input
        if use_html5_inputs?
          @builder.send(:"#{input_type}_field", attribute_name, input_html_options)
        else
          @builder.send(:"#{input_type}_select", attribute_name, input_options, input_html_options)
        end
      end
            
      def input_html_classes
        super.push 'form-control'
      end

      private

      def label_target
        position = case input_type
        when :date, :datetime
          date_order = input_options[:order] || I18n.t('date.order')
          date_order.first.to_sym
        else
          :hour
        end

        position = ActionView::Helpers::DateTimeSelector::POSITION[position]
        "#{attribute_name}_#{position}i"
      end

      def use_html5_inputs?
        input_options[:html5]
      end
    end
  end
end
