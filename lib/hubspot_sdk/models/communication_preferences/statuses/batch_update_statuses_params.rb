# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch#update_statuses
        class BatchUpdateStatusesParams < HubspotSDK::Models::CommunicationPreferences::BatchInputPublicStatusRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
