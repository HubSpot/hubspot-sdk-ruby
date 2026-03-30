# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      module Webhooks
        # @see HubspotSDK::Resources::Webhooks::Webhooks::Batch#get_latest
        class BatchGetLatestParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute count
          #
          #   @return [Integer]
          required :count, Integer

          # @!attribute install_portal_id
          #
          #   @return [Integer, nil]
          optional :install_portal_id, Integer

          # @!method initialize(count:, install_portal_id: nil, request_options: {})
          #   @param count [Integer]
          #   @param install_portal_id [Integer]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
