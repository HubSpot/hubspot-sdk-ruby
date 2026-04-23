# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #   An integer representing the unique identifier of the CRM object for which the
        #   snapshot is requested.
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute object_type_id
        #   A string representing the type identifier of the CRM object, specifying what
        #   kind of object it is within HubSpot.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #   An integer representing the unique identifier of the HubSpot account (portal)
        #   where the CRM object resides.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute properties
        #   An array of strings, each representing a property of the CRM object that should
        #   be included in the snapshot.
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(object_id_:, object_type_id:, portal_id:, properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest} for more details.
        #
        #   @param object_id_ [Integer] An integer representing the unique identifier of the CRM object for which the sn
        #
        #   @param object_type_id [String] A string representing the type identifier of the CRM object, specifying what kin
        #
        #   @param portal_id [Integer] An integer representing the unique identifier of the HubSpot account (portal) wh
        #
        #   @param properties [Array<String>] An array of strings, each representing a property of the CRM object that should
      end
    end
  end
end
