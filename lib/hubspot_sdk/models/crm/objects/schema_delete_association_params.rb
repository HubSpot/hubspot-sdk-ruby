# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::Schemas#delete_association
        class SchemaDeleteAssociationParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_type
          #
          #   @return [String]
          required :object_type, String

          # @!method initialize(object_type:, request_options: {})
          #   @param object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
