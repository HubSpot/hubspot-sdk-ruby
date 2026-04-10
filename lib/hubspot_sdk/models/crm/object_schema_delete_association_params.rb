# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::ObjectSchemas#delete_association
      class ObjectSchemaDeleteAssociationParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
