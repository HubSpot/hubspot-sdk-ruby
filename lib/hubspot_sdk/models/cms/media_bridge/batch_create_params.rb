# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module MediaBridge
        # @see HubspotSDK::Resources::Cms::MediaBridge::Batch#create
        class BatchCreateParams < HubspotSDK::Models::BatchInputPropertyCreate
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!method initialize(app_id:, object_type:, request_options: {})
          #   @param app_id [Integer]
          #   @param object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
