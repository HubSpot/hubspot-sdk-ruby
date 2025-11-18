# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Properties#list
        class PropertyListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute properties
          #   Filter the response to the specified properties.
          #
          #   @return [String, nil]
          optional :properties, String

          # @!method initialize(app_id:, archived: nil, properties: nil, request_options: {})
          #   @param app_id [Integer]
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param properties [String] Filter the response to the specified properties.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
