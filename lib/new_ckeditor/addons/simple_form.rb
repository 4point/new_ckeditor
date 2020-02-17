require 'simple_form'

module NewCkeditor
  module Addons
    module SimpleForm
      class CkeditorInput < ::SimpleForm::Inputs::Base
        def input(_wrapper_options = nil)
          input_html_options[:editor_template] ||= options[:editor_template].to_s
          input_html_options[:editor_type]     ||= options[:editor_type].to_s
          @builder.ckeditor(attribute_name, input_html_options)
        end
      end
    end
  end
end

::SimpleForm::FormBuilder.map_type :ckeditor, to: NewCkeditor::Addons::SimpleForm::CkeditorInput