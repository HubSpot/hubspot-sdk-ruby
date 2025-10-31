# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IndexedField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute metadata_field
        #
        #   @return [Boolean]
        required :metadata_field, HubspotSDK::Internal::Type::Boolean, api_name: :metadataField

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #
        #   @return [Object]
        required :value, HubspotSDK::Internal::Type::Unknown

        # @!attribute values
        #
        #   @return [Array<Object>]
        required :values, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!method initialize(metadata_field:, name:, value:, values:)
        #   @param metadata_field [Boolean]
        #   @param name [String]
        #   @param value [Object]
        #   @param values [Array<Object>]
      end
    end
  end
end
