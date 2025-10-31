# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::IntegratorSettings#update_app_name
        class IntegratorSettingUpdateAppNameParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute updated_at
          #
          #   @return [Integer]
          required :updated_at, Integer, api_name: :updatedAt

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(updated_at:, name: nil, request_options: {})
          #   @param updated_at [Integer]
          #   @param name [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
