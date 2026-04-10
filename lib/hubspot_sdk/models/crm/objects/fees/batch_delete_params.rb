# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        module Fees
          # @see HubSpotSDK::Resources::Crm::Objects::Fees::Batch#delete
          class BatchDeleteParams < HubSpotSDK::Models::Crm::BatchInputSimplePublicObjectID
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
