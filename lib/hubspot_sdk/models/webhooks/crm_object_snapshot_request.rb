# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #   An integer representing the unique identifier of the CRM object for which the
        #   snapshot is being requested.
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute object_type_id
        #   A string representing the type identifier of the CRM object.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #   An integer representing the unique identifier of the HubSpot portal.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute properties
        #   An array of strings, each representing a property of the CRM object to be
        #   included in the snapshot.
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(object_id_:, object_type_id:, portal_id:, properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest} for more details.
        #
        #   @param object_id_ [Integer] An integer representing the unique identifier of the CRM object for which the sn
        #
        #   @param object_type_id [String] A string representing the type identifier of the CRM object.
        #
        #   @param portal_id [Integer] An integer representing the unique identifier of the HubSpot portal.
        #
        #   @param properties [Array<String>] An array of strings, each representing a property of the CRM object to be includ
      end
    end
  end
end
