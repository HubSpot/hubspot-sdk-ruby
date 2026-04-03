# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::MarketingEvents#delete_batch_by_external_event_id
      class MarketingEventDeleteBatchByExternalEventIDParams < HubspotSDK::Models::Marketing::BatchInputMarketingEventExternalUniqueIdentifier
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
