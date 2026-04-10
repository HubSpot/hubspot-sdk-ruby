# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_record_memberships
      class ListGetRecordMembershipsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String

        # @!attribute record_id
        #
        #   @return [String]
        required :record_id, String

        # @!method initialize(object_type_id:, record_id:, request_options: {})
        #   @param object_type_id [String]
        #   @param record_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
