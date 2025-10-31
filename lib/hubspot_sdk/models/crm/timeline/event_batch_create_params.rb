# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Timeline
        # @see HubspotSDK::Resources::CRM::Timeline::Events#batch_create
        class EventBatchCreateParams < HubspotSDK::Models::CRM::BatchInputTimelineEvent
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
