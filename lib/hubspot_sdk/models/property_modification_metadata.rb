# frozen_string_literal: true

module HubspotSDK
  module Models
    class PropertyModificationMetadata < HubspotSDK::Internal::Type::BaseModel
      # @!attribute archivable
      #
      #   @return [Boolean]
      required :archivable, HubspotSDK::Internal::Type::Boolean

      # @!attribute read_only_definition
      #
      #   @return [Boolean]
      required :read_only_definition, HubspotSDK::Internal::Type::Boolean, api_name: :readOnlyDefinition

      # @!attribute read_only_value
      #
      #   @return [Boolean]
      required :read_only_value, HubspotSDK::Internal::Type::Boolean, api_name: :readOnlyValue

      # @!attribute read_only_options
      #
      #   @return [Boolean, nil]
      optional :read_only_options, HubspotSDK::Internal::Type::Boolean, api_name: :readOnlyOptions

      # @!method initialize(archivable:, read_only_definition:, read_only_value:, read_only_options: nil)
      #   @param archivable [Boolean]
      #   @param read_only_definition [Boolean]
      #   @param read_only_value [Boolean]
      #   @param read_only_options [Boolean]
    end
  end
end
