# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Timeline
        class Batch
          # @overload create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubSpotSDK::Models::Crm::AppEventOccurrence>]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::BatchResponseAppEventOccurrence]
          #
          # @see HubSpotSDK::Models::Crm::Timeline::BatchCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Crm::Timeline::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "integrators/timeline/2026-03/events/batch",
              body: parsed,
              model: HubSpotSDK::Crm::BatchResponseAppEventOccurrence,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
