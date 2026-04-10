# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module AssociationsSchema
        # @see HubSpotSDK::Resources::Crm::AssociationsSchema::Limits#list
        class LimitListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
