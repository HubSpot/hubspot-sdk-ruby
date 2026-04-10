# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module ObjectLibrary
        # @see HubSpotSDK::Resources::Crm::ObjectLibrary::Enablement#get_by_object_type_id
        class EnablementGetByObjectTypeIDParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute object_type_id
          #
          #   @return [String]
          required :object_type_id, String

          # @!method initialize(object_type_id:, request_options: {})
          #   @param object_type_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
