# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#delete_property_group
      class MediaBridgeDeletePropertyGroupParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [String]
        required :app_id, String

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute group_name
        #
        #   @return [String]
        required :group_name, String

        # @!method initialize(app_id:, object_type:, group_name:, request_options: {})
        #   @param app_id [String]
        #   @param object_type [String]
        #   @param group_name [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
