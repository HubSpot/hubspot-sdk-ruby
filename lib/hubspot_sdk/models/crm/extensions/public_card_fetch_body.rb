# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class PublicCardFetchBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute object_types
          #
          #   @return [Array<HubspotSDK::Models::CRM::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute target_url
          #
          #   @return [String]
          required :target_url, String, api_name: :targetUrl

          # @!method initialize(object_types:, target_url:)
          #   @param object_types [Array<HubspotSDK::Models::CRM::Extensions::CardObjectTypeBody>]
          #   @param target_url [String]
        end
      end
    end
  end
end
