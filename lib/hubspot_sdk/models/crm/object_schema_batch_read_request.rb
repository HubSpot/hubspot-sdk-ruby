# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ObjectSchemaBatchReadRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_association_definitions
        #
        #   @return [Boolean]
        required :include_association_definitions,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includeAssociationDefinitions

        # @!attribute include_audit_metadata
        #
        #   @return [Boolean]
        required :include_audit_metadata, HubspotSDK::Internal::Type::Boolean, api_name: :includeAuditMetadata

        # @!attribute include_property_definitions
        #
        #   @return [Boolean]
        required :include_property_definitions,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :includePropertyDefinitions

        # @!attribute inputs
        #
        #   @return [Array<String>]
        required :inputs, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_association_definitions:, include_audit_metadata:, include_property_definitions:, inputs:)
        #   @param include_association_definitions [Boolean]
        #   @param include_audit_metadata [Boolean]
        #   @param include_property_definitions [Boolean]
        #   @param inputs [Array<String>]
      end
    end
  end
end
