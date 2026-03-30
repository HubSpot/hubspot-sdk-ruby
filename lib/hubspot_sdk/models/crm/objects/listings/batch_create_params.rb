# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Listings
          # @see HubspotSDK::Resources::Crm::Objects::Listings::Batch#create
          class BatchCreateParams < HubspotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInputForCreate
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
