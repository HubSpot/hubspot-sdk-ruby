# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Limits#get_association_records_limits_by_object_type
      class LimitGetAssociationRecordsLimitsByObjectTypeParams < HubspotSDK::Internal::Type::BaseModel
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
