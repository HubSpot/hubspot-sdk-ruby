# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class PublicCardFetchBody < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute object_types
          #   An array of CRM object types where this card should be displayed. HubSpot will
          #   call your target URL whenever a user visits a record page of the types defined
          #   here.
          #
          #   @return [Array<HubSpotSDK::Models::Crm::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute target_url
          #   URL to a service endpoint that will respond with details for this card. HubSpot
          #   will call this endpoint each time a user visits a CRM record page where this
          #   card should be displayed.
          #
          #   @return [String]
          required :target_url, String, api_name: :targetUrl

          # @!method initialize(object_types:, target_url:)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::PublicCardFetchBody} for more details.
          #
          #   @param object_types [Array<HubSpotSDK::Models::Crm::Extensions::CardObjectTypeBody>] An array of CRM object types where this card should be displayed. HubSpot will c
          #
          #   @param target_url [String] URL to a service endpoint that will respond with details for this card. HubSpot
        end
      end
    end
  end
end
