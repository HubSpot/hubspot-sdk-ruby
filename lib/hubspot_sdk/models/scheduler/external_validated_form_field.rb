# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalValidatedFormField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute is_custom
        #
        #   @return [Boolean]
        required :is_custom, HubspotSDK::Internal::Type::Boolean, api_name: :isCustom

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!attribute field_type
        #
        #   @return [String, nil]
        optional :field_type, String, api_name: :fieldType

        # @!attribute translated_label
        #
        #   @return [String, nil]
        optional :translated_label, String, api_name: :translatedLabel

        # @!attribute value_label
        #
        #   @return [String, nil]
        optional :value_label, String, api_name: :valueLabel

        # @!method initialize(is_custom:, label:, name:, value:, field_type: nil, translated_label: nil, value_label: nil)
        #   @param is_custom [Boolean]
        #   @param label [String]
        #   @param name [String]
        #   @param value [String]
        #   @param field_type [String]
        #   @param translated_label [String]
        #   @param value_label [String]
      end
    end
  end
end
