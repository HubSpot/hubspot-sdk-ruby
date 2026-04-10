# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#delete_association
      class MediaBridgeDeleteAssociationParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute association_id
        #
        #   @return [String]
        required :association_id, String

        # @!method initialize(app_id:, object_type:, association_id:, request_options: {})
        #   @param app_id [Integer]
        #   @param object_type [String]
        #   @param association_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
