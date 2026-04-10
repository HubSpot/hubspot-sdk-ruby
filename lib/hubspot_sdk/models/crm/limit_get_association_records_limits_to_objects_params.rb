# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_association_records_limits_to_objects
      class LimitGetAssociationRecordsLimitsToObjectsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute from_object_type_id
        #
        #   @return [String]
        required :from_object_type_id, String

        # @!method initialize(from_object_type_id:, request_options: {})
        #   @param from_object_type_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
