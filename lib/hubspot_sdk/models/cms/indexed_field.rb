# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IndexedField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute metadata_field
        #   Indicates whether the field is a metadata field.
        #
        #   @return [Boolean]
        required :metadata_field, HubspotSDK::Internal::Type::Boolean, api_name: :metadataField

        # @!attribute name
        #   The name of the indexed field.
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #   The primary value of the indexed field.
        #
        #   @return [Object]
        required :value, HubspotSDK::Internal::Type::Unknown

        # @!attribute values
        #
        #   @return [Array<Object>]
        required :values, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!method initialize(metadata_field:, name:, value:, values:)
        #   @param metadata_field [Boolean] Indicates whether the field is a metadata field.
        #
        #   @param name [String] The name of the indexed field.
        #
        #   @param value [Object] The primary value of the indexed field.
        #
        #   @param values [Array<Object>]
      end
    end
  end
end
