# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Schemas#update
        class SchemaUpdateParams < HubspotSDK::Models::Crm::Objects::ObjectTypeDefinitionPatch
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [String]
          required :app_id, String

          # @!method initialize(app_id:, request_options: {})
          #   @param app_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
