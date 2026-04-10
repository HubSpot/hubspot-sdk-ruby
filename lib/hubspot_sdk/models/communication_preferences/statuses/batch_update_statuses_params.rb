# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      module Statuses
        # @see HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch#update_statuses
        class BatchUpdateStatusesParams < HubSpotSDK::Models::CommunicationPreferences::BatchInputPublicStatusRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
