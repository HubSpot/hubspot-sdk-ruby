# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute properties
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(object_id_:, object_type_id:, portal_id:, properties:)
        #   @param object_id_ [Integer]
        #   @param object_type_id [String]
        #   @param portal_id [Integer]
        #   @param properties [Array<String>]
      end
    end
  end
end
