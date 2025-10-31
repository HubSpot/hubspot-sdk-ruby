# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module V4
          # @see HubspotSDK::Resources::CRM::Associations::V4::Batch#create_default
          class BatchCreateDefaultParams < HubspotSDK::Models::CRM::BatchInputPublicDefaultAssociationMultiPost
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
