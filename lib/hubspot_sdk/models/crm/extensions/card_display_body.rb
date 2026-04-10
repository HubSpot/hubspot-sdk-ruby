# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardDisplayBody < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute properties
          #   Card display properties. These will will be rendered as "label : value" pairs in
          #   the card UI. See the [example card](#) in the overview docs for more details.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::CardDisplayProperty>]
          required :properties,
                   -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardDisplayProperty] }

          # @!method initialize(properties:)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::CardDisplayBody} for more details.
          #
          #   @param properties [Array<HubSpotSDK::Models::Crm::Extensions::CardDisplayProperty>] Card display properties. These will will be rendered as "label : value" pairs in
        end
      end
    end
  end
end
