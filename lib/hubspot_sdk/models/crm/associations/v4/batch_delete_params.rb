# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        module V4
          # @see HubspotSDK::Resources::Crm::Associations::V4::Batch#delete
          class BatchDeleteParams < HubspotSDK::Models::Crm::Associations::BatchInputPublicAssociationMultiArchive
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
