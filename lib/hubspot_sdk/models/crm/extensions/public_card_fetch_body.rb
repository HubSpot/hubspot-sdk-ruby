# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class PublicCardFetchBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute object_types
          #
          #   @return [Array<HubspotSDK::Models::Crm::Extensions::CardObjectTypeBody>]
          required :object_types,
                   -> {
                     HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Extensions::CardObjectTypeBody]
                   },
                   api_name: :objectTypes

          # @!attribute target_url
          #
          #   @return [String]
          required :target_url, String, api_name: :targetUrl

          # @!method initialize(object_types:, target_url:)
          #   @param object_types [Array<HubspotSDK::Models::Crm::Extensions::CardObjectTypeBody>]
          #   @param target_url [String]
        end
      end
    end
  end
end
