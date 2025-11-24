# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class FormDisplayOptions < HubspotSDK::Internal::Type::BaseModel
        # @!attribute render_raw_html
        #   Whether the form will render as raw HTML as opposed to inside an iFrame.
        #
        #   @return [Boolean]
        required :render_raw_html, HubspotSDK::Internal::Type::Boolean, api_name: :renderRawHtml

        # @!attribute style
        #   Styling options for the form
        #
        #   @return [HubspotSDK::Models::Marketing::FormStyle]
        required :style, -> { HubspotSDK::Marketing::FormStyle }

        # @!attribute submit_button_text
        #   The text displayed on the form submit button.
        #
        #   @return [String]
        required :submit_button_text, String, api_name: :submitButtonText

        # @!attribute theme
        #   The theme used for styling the input fields. This will not apply if the form is
        #   added to a HubSpot CMS page.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::FormDisplayOptions::Theme]
        required :theme, enum: -> { HubspotSDK::Marketing::FormDisplayOptions::Theme }

        # @!attribute css_class
        #
        #   @return [String, nil]
        optional :css_class, String, api_name: :cssClass

        # @!method initialize(render_raw_html:, style:, submit_button_text:, theme:, css_class: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::FormDisplayOptions} for more details.
        #
        #   Options for styling the form.
        #
        #   @param render_raw_html [Boolean] Whether the form will render as raw HTML as opposed to inside an iFrame.
        #
        #   @param style [HubspotSDK::Models::Marketing::FormStyle] Styling options for the form
        #
        #   @param submit_button_text [String] The text displayed on the form submit button.
        #
        #   @param theme [Symbol, HubspotSDK::Models::Marketing::FormDisplayOptions::Theme] The theme used for styling the input fields. This will not apply if the form is
        #
        #   @param css_class [String]

        # The theme used for styling the input fields. This will not apply if the form is
        # added to a HubSpot CMS page.
        #
        # @see HubspotSDK::Models::Marketing::FormDisplayOptions#theme
        module Theme
          extend HubspotSDK::Internal::Type::Enum

          CANVAS = :canvas
          DEFAULT_STYLE = :default_style
          LEGACY = :legacy
          LINEAR = :linear
          ROUND = :round
          SHARP = :sharp

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
