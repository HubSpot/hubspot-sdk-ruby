# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module Listings
          # @see HubSpotSDK::Resources::Crm::Objects::Listings::Batch#create
          class BatchCreateParams < HubSpotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputForCreate
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
