# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CardActions < HubspotSDK::Internal::Type::BaseModel
          # @!attribute base_urls
          #   A list of URL prefixes that will be accepted for card action URLs. If your data
          #   fetch response includes an action URL that doesn't begin with one of these
          #   values, it will result in an error and the card will not be displayed.
          #
          #   @return [Array<String>]
          required :base_urls, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :baseUrls

          # @!method initialize(base_urls:)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Extensions::CardActions} for more details.
          #
          #   @param base_urls [Array<String>] A list of URL prefixes that will be accepted for card action URLs. If your data
        end
      end
    end
  end
end
