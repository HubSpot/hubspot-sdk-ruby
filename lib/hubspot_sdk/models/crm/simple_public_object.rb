# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the object.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The timestamp when the object was created, in ISO 8601 format.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #   Key-value pairs representing the properties of the object.
        #
        #   @return [Hash{Symbol=>String, nil}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String, nil?: true]

        # @!attribute updated_at
        #   The timestamp when the object was last updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute archived
        #   Whether the object is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute archived_at
        #   The timestamp when the object was archived, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute object_write_trace_id
        #
        #   @return [String, nil]
        optional :object_write_trace_id, String, api_name: :objectWriteTraceId

        # @!attribute properties_with_history
        #   Key-value pairs representing the properties of the object along with their
        #   history.
        #
        #   @return [Hash{Symbol=>Array<HubspotSDK::Models::CRM::ValueWithTimestamp>}, nil]
        optional :properties_with_history,
                 -> {
                   HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::ValueWithTimestamp]]
                 },
                 api_name: :propertiesWithHistory

        # @!method initialize(id:, created_at:, properties:, updated_at:, archived: nil, archived_at: nil, object_write_trace_id: nil, properties_with_history: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::SimplePublicObject} for more details.
        #
        #   A simple public object.
        #
        #   @param id [String] The unique ID of the object.
        #
        #   @param created_at [Time] The timestamp when the object was created, in ISO 8601 format.
        #
        #   @param properties [Hash{Symbol=>String, nil}] Key-value pairs representing the properties of the object.
        #
        #   @param updated_at [Time] The timestamp when the object was last updated, in ISO 8601 format.
        #
        #   @param archived [Boolean] Whether the object is archived.
        #
        #   @param archived_at [Time] The timestamp when the object was archived, in ISO 8601 format.
        #
        #   @param object_write_trace_id [String]
        #
        #   @param properties_with_history [Hash{Symbol=>Array<HubspotSDK::Models::CRM::ValueWithTimestamp>}] Key-value pairs representing the properties of the object along with their histo
      end
    end
  end
end
