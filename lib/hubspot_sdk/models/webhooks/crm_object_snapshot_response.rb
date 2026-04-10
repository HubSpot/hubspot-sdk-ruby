# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotResponse < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute snapshot_status_id
        #
        #   @return [String]
        required :snapshot_status_id, String, api_name: :snapshotStatusId

        # @!method initialize(object_id_:, object_type_id:, portal_id:, snapshot_status_id:)
        #   @param object_id_ [Integer]
        #   @param object_type_id [String]
        #   @param portal_id [Integer]
        #   @param snapshot_status_id [String]
      end
    end
  end
end
