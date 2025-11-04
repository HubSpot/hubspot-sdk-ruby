# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class AssociationsV4SimplePublicUpsertObject < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The unique ID of the object.
          #
          #   @return [String]
          required :id, String

          # @!attribute archived
          #   Whether the object is archived.
          #
          #   @return [Boolean]
          required :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute created_at
          #   The timestamp when the object was created, in ISO 8601 format.
          #
          #   @return [Time]
          required :created_at, Time, api_name: :createdAt

          # @!attribute new
          #   Whether the property is new.
          #
          #   @return [Boolean]
          required :new, HubspotSDK::Internal::Type::Boolean

          # @!attribute properties
          #   Key value pairs representing the properties of the object.
          #
          #   @return [Hash{Symbol=>String}]
          required :properties, HubspotSDK::Internal::Type::HashOf[String]

          # @!attribute updated_at
          #   The timestamp when the object was last updated, in ISO 8601 format.
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

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
          #   @return [Hash{Symbol=>Array<HubspotSDK::Models::Crm::ValueWithTimestamp>}, nil]
          optional :properties_with_history,
                   -> {
                     HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::ValueWithTimestamp]]
                   },
                   api_name: :propertiesWithHistory

          # @!method initialize(id:, archived:, created_at:, new:, properties:, updated_at:, archived_at: nil, object_write_trace_id: nil, properties_with_history: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Associations::AssociationsV4SimplePublicUpsertObject}
          #   for more details.
          #
          #   Represents a CRM object that has either been created or updated (upserted)
          #
          #   @param id [String] The unique ID of the object.
          #
          #   @param archived [Boolean] Whether the object is archived.
          #
          #   @param created_at [Time] The timestamp when the object was created, in ISO 8601 format.
          #
          #   @param new [Boolean] Whether the property is new.
          #
          #   @param properties [Hash{Symbol=>String}] Key value pairs representing the properties of the object.
          #
          #   @param updated_at [Time] The timestamp when the object was last updated, in ISO 8601 format.
          #
          #   @param archived_at [Time] The timestamp when the object was archived, in ISO 8601 format.
          #
          #   @param object_write_trace_id [String]
          #
          #   @param properties_with_history [Hash{Symbol=>Array<HubspotSDK::Models::Crm::ValueWithTimestamp>}] Key-value pairs representing the properties of the object along with their histo
        end
      end
    end
  end
end
