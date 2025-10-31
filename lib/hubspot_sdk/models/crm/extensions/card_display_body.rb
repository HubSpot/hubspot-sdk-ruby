# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class CardDisplayBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute properties
          #   Card display properties. These will will be rendered as "label : value" pairs in
          #   the card UI. See the [example card](#) in the overview docs for more details.
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::CardDisplayProperty>]
          required :properties,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardDisplayProperty] }

          # @!method initialize(properties:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::CRM::Extensions::CardDisplayBody} for more details.
          #
          #   Configuration for displayed info on a card
          #
          #   @param properties [Array<HubspotSDK::Models::CRM::Extensions::CardDisplayProperty>] Card display properties. These will will be rendered as "label : value" pairs in
        end
      end
    end
  end
end
