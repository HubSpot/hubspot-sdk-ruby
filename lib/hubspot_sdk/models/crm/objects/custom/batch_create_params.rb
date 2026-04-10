# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module Custom
          # @see HubSpotSDK::Resources::Crm::Objects::Custom::Batch#create
          class BatchCreateParams < HubSpotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputForCreate
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!attribute object_type
            #
            #   @return [String]
            required :object_type, String

            # @!method initialize(object_type:, request_options: {})
            #   @param object_type [String]
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
