# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Limits#get_association_records_limits_by_object_type
      class LimitGetAssociationRecordsLimitsByObjectTypeParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute from_object_type_id
        #
        #   @return [String]
        required :from_object_type_id, String

        # @!attribute to_object_type_id
        #
        #   @return [String]
        required :to_object_type_id, String

        # @!method initialize(from_object_type_id:, to_object_type_id:, request_options: {})
        #   @param from_object_type_id [String]
        #   @param to_object_type_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
