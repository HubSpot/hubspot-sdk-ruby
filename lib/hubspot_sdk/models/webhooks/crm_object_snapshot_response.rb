# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #   An integer representing the unique identifier of the CRM object for which the
        #   snapshot is taken.
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute object_type_id
        #   A string indicating the type of the CRM object, such as contact, company, or
        #   deal.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute portal_id
        #   An integer representing the unique identifier of the HubSpot portal associated
        #   with the CRM object.
        #
        #   @return [Integer]
        required :portal_id, Integer, api_name: :portalId

        # @!attribute snapshot_status_id
        #   A UUID string representing the status identifier of the snapshot request,
        #   indicating the current state of the snapshot process.
        #
        #   @return [String]
        required :snapshot_status_id, String, api_name: :snapshotStatusId

        # @!method initialize(object_id_:, object_type_id:, portal_id:, snapshot_status_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::CrmObjectSnapshotResponse} for more details.
        #
        #   @param object_id_ [Integer] An integer representing the unique identifier of the CRM object for which the sn
        #
        #   @param object_type_id [String] A string indicating the type of the CRM object, such as contact, company, or dea
        #
        #   @param portal_id [Integer] An integer representing the unique identifier of the HubSpot portal associated w
        #
        #   @param snapshot_status_id [String] A UUID string representing the status identifier of the snapshot request, indica
      end
    end
  end
end
