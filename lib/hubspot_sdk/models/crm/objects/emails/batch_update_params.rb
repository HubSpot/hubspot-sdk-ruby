# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module Emails
          # @see HubSpotSDK::Resources::Crm::Objects::Emails::Batch#update
          class BatchUpdateParams < HubSpotSDK::Models::Crm::BatchInputSimplePublicObjectBatchInput
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
