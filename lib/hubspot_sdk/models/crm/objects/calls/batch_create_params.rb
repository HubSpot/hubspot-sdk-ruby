# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module Calls
          # @see HubspotSDK::Resources::Crm::Objects::Calls::Batch#create
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
