# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          module V4
            # @see HubspotSDK::Resources::CRM::Associations::Schema::V4::Configurations#batch_create_by_object_types
            class ConfigurationBatchCreateByObjectTypesParams < HubspotSDK::Models::CRM::Associations::Schema::BatchInputPublicAssociationDefinitionConfigurationCreateRequest
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
  end
end
