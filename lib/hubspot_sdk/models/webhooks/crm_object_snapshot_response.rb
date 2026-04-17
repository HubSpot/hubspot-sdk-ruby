# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #   An integer representing the unique identifier for the CRM object.
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute object_type_id
        #   A string representing the type identifier of the CRM object.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #   An integer representing the unique identifier for the HubSpot portal.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute snapshot_status_id
        #   A UUID string representing the status identifier of the snapshot.
        #
        #   @return [String]
        required :snapshot_status_id, String, api_name: :snapshotStatusId

        # @!method initialize(object_id_:, object_type_id:, portal_id:, snapshot_status_id:)
        #   @param object_id_ [Integer] An integer representing the unique identifier for the CRM object.
        #
        #   @param object_type_id [String] A string representing the type identifier of the CRM object.
        #
        #   @param portal_id [Integer] An integer representing the unique identifier for the HubSpot portal.
        #
        #   @param snapshot_status_id [String] A UUID string representing the status identifier of the snapshot.
      end
    end
  end
end
