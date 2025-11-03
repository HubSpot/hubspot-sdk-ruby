# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Timeline
        # @see HubspotSDK::Resources::Crm::Timeline::Events#batch_create
        class EventBatchCreateParams < HubspotSDK::Models::Crm::BatchInputTimelineEvent
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
