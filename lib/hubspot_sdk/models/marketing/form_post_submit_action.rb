# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class FormPostSubmitAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The action to take after submit. The default action is displaying a thank you
        #   message.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::FormPostSubmitAction::Type]
        required :type, enum: -> { HubspotSDK::Marketing::FormPostSubmitAction::Type }

        # @!attribute value
        #   The thank you text or the page to redirect to.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::FormPostSubmitAction} for more details.
        #
        #   What should happen after the customer submits the form.
        #
        #   @param type [Symbol, HubspotSDK::Models::Marketing::FormPostSubmitAction::Type] The action to take after submit. The default action is displaying a thank you me
        #
        #   @param value [String] The thank you text or the page to redirect to.

        # The action to take after submit. The default action is displaying a thank you
        # message.
        #
        # @see HubspotSDK::Models::Marketing::FormPostSubmitAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          REDIRECT_URL = :redirect_url
          THANK_YOU = :thank_you

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
