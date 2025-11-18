# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          module V4
            # @see HubspotSDK::Resources::Crm::Associations::Schema::V4::Definitions#update_label
            class DefinitionUpdateLabelParams < HubspotSDK::Models::Crm::Associations::Schema::PublicAssociationDefinitionUpdateRequest
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
