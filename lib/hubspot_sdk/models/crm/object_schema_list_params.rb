# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::ObjectSchemas#list
      class ObjectSchemaListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute include_association_definitions
        #
        #   @return [Boolean, nil]
        optional :include_association_definitions, HubspotSDK::Internal::Type::Boolean

        # @!attribute include_audit_metadata
        #
        #   @return [Boolean, nil]
        optional :include_audit_metadata, HubspotSDK::Internal::Type::Boolean

        # @!attribute include_property_definitions
        #
        #   @return [Boolean, nil]
        optional :include_property_definitions, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(archived: nil, include_association_definitions: nil, include_audit_metadata: nil, include_property_definitions: nil, request_options: {})
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param include_association_definitions [Boolean]
        #
        #   @param include_audit_metadata [Boolean]
        #
        #   @param include_property_definitions [Boolean]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
