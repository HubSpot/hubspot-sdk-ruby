# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::ObjectSchemas#delete_association
      class ObjectSchemaDeleteAssociationParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute association_identifier
        #
        #   @return [String]
        required :association_identifier, String

        # @!method initialize(object_type:, association_identifier:, request_options: {})
        #   @param object_type [String]
        #   @param association_identifier [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
