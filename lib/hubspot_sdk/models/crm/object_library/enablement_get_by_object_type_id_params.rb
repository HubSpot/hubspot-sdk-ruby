# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module ObjectLibrary
        # @see HubspotSDK::Resources::Crm::ObjectLibrary::Enablement#get_by_object_type_id
        class EnablementGetByObjectTypeIDParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute object_type_id
          #
          #   @return [String]
          required :object_type_id, String

          # @!method initialize(object_type_id:, request_options: {})
          #   @param object_type_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
