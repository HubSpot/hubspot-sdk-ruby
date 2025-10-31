# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        # @see HubspotSDK::Resources::CRM::Associations::Schema#list
        class SchemaListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute from_object_type
          #
          #   @return [String]
          required :from_object_type, String

          # @!method initialize(from_object_type:, request_options: {})
          #   @param from_object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
