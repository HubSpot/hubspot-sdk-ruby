# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Schemas#list
        class SchemaListResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::Crm::Objects::ObjectSchema>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Objects::ObjectSchema] }

          # @!method initialize(results:)
          #   @param results [Array<HubspotSDK::Models::Crm::Objects::ObjectSchema>]
        end
      end
    end
  end
end
