# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class FormStyle < HubspotSDK::Internal::Type::BaseModel
        # @!attribute background_width
        #
        #   @return [String]
        required :background_width, String, api_name: :backgroundWidth

        # @!attribute font_family
        #
        #   @return [String]
        required :font_family, String, api_name: :fontFamily

        # @!attribute help_text_color
        #
        #   @return [String]
        required :help_text_color, String, api_name: :helpTextColor

        # @!attribute help_text_size
        #
        #   @return [String]
        required :help_text_size, String, api_name: :helpTextSize

        # @!attribute label_text_color
        #
        #   @return [String]
        required :label_text_color, String, api_name: :labelTextColor

        # @!attribute label_text_size
        #
        #   @return [String]
        required :label_text_size, String, api_name: :labelTextSize

        # @!attribute legal_consent_text_color
        #
        #   @return [String]
        required :legal_consent_text_color, String, api_name: :legalConsentTextColor

        # @!attribute legal_consent_text_size
        #
        #   @return [String]
        required :legal_consent_text_size, String, api_name: :legalConsentTextSize

        # @!attribute submit_alignment
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::FormStyle::SubmitAlignment]
        required :submit_alignment,
                 enum: -> { HubspotSDK::Marketing::FormStyle::SubmitAlignment },
                 api_name: :submitAlignment

        # @!attribute submit_color
        #
        #   @return [String]
        required :submit_color, String, api_name: :submitColor

        # @!attribute submit_font_color
        #
        #   @return [String]
        required :submit_font_color, String, api_name: :submitFontColor

        # @!attribute submit_size
        #
        #   @return [String]
        required :submit_size, String, api_name: :submitSize

        # @!method initialize(background_width:, font_family:, help_text_color:, help_text_size:, label_text_color:, label_text_size:, legal_consent_text_color:, legal_consent_text_size:, submit_alignment:, submit_color:, submit_font_color:, submit_size:)
        #   Styling options for the form
        #
        #   @param background_width [String]
        #   @param font_family [String]
        #   @param help_text_color [String]
        #   @param help_text_size [String]
        #   @param label_text_color [String]
        #   @param label_text_size [String]
        #   @param legal_consent_text_color [String]
        #   @param legal_consent_text_size [String]
        #   @param submit_alignment [Symbol, HubspotSDK::Models::Marketing::FormStyle::SubmitAlignment]
        #   @param submit_color [String]
        #   @param submit_font_color [String]
        #   @param submit_size [String]

        # @see HubspotSDK::Models::Marketing::FormStyle#submit_alignment
        module SubmitAlignment
          extend HubspotSDK::Internal::Type::Enum

          CENTER = :center
          LEFT = :left
          RIGHT = :right

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
