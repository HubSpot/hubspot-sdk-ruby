# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ObjectSchemaBatchReadRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_association_definitions
        #   Indicates whether to include association definitions in the response.
        #
        #   @return [Boolean]
        required :include_association_definitions,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includeAssociationDefinitions

        # @!attribute include_audit_metadata
        #   Indicates whether to include audit metadata in the response.
        #
        #   @return [Boolean]
        required :include_audit_metadata, HubSpotSDK::Internal::Type::Boolean, api_name: :includeAuditMetadata

        # @!attribute include_property_definitions
        #   Indicates whether to include property definitions in the response.
        #
        #   @return [Boolean]
        required :include_property_definitions,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :includePropertyDefinitions

        # @!attribute inputs
        #
        #   @return [Array<String>]
        required :inputs, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_association_definitions:, include_audit_metadata:, include_property_definitions:, inputs:)
        #   @param include_association_definitions [Boolean] Indicates whether to include association definitions in the response.
        #
        #   @param include_audit_metadata [Boolean] Indicates whether to include audit metadata in the response.
        #
        #   @param include_property_definitions [Boolean] Indicates whether to include property definitions in the response.
        #
        #   @param inputs [Array<String>]
      end
    end
  end
end
