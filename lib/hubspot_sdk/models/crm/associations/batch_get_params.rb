# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        # @see HubspotSDK::Resources::Crm::Associations::Batch#get
        class BatchGetParams < HubspotSDK::Models::Crm::BatchInputPublicFetchAssociationsBatchRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute from_object_type
          #
          #   @return [String]
          required :from_object_type, String

          # @!attribute to_object_type
          #
          #   @return [String]
          required :to_object_type, String

          # @!method initialize(from_object_type:, to_object_type:, request_options: {})
          #   @param from_object_type [String]
          #   @param to_object_type [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
