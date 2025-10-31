# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class ValueWithTimestamp < HubspotSDK::Internal::Type::BaseModel
        # @!attribute source_type
        #   The property type.
        #
        #   @return [String]
        required :source_type, String, api_name: :sourceType

        # @!attribute timestamp
        #   The timestamp when the property was updated, in ISO 8601 format.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute value
        #   The property value.
        #
        #   @return [String]
        required :value, String

        # @!attribute source_id
        #   The unique ID of the property.
        #
        #   @return [String, nil]
        optional :source_id, String, api_name: :sourceId

        # @!attribute source_label
        #   A human-readable label.
        #
        #   @return [String, nil]
        optional :source_label, String, api_name: :sourceLabel

        # @!attribute updated_by_user_id
        #   The ID of the user who last updated the property.
        #
        #   @return [Integer, nil]
        optional :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!method initialize(source_type:, timestamp:, value:, source_id: nil, source_label: nil, updated_by_user_id: nil)
        #   Property model that includes timestamp.
        #
        #   @param source_type [String] The property type.
        #
        #   @param timestamp [Time] The timestamp when the property was updated, in ISO 8601 format.
        #
        #   @param value [String] The property value.
        #
        #   @param source_id [String] The unique ID of the property.
        #
        #   @param source_label [String] A human-readable label.
        #
        #   @param updated_by_user_id [Integer] The ID of the user who last updated the property.
      end
    end
  end
end
