# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        module V4
          # @see HubspotSDK::Resources::Marketing::Subscriptions::V4::Statuses#batch_update
          class StatusBatchUpdateParams < HubspotSDK::Models::Marketing::Subscriptions::BatchInputPublicStatusRequest
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
