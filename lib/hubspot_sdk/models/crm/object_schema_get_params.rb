# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::ObjectSchemas#get
      class ObjectSchemaGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute include_association_definitions
        #
        #   @return [Boolean, nil]
        optional :include_association_definitions, HubSpotSDK::Internal::Type::Boolean

        # @!attribute include_audit_metadata
        #
        #   @return [Boolean, nil]
        optional :include_audit_metadata, HubSpotSDK::Internal::Type::Boolean

        # @!attribute include_property_definitions
        #
        #   @return [Boolean, nil]
        optional :include_property_definitions, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(object_type:, include_association_definitions: nil, include_audit_metadata: nil, include_property_definitions: nil, request_options: {})
        #   @param object_type [String]
        #   @param include_association_definitions [Boolean]
        #   @param include_audit_metadata [Boolean]
        #   @param include_property_definitions [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
