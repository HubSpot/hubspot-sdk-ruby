# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Limits#get_association_records_limits_to_objects
      class LimitGetAssociationRecordsLimitsToObjectsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute from_object_type_id
        #
        #   @return [String]
        required :from_object_type_id, String

        # @!method initialize(from_object_type_id:, request_options: {})
        #   @param from_object_type_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
