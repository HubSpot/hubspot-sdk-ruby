# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module DealSplits
        # @see HubSpotSDK::Resources::Crm::DealSplits::Batch#read
        class BatchReadParams < HubSpotSDK::Models::BatchInputPublicObjectID
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
