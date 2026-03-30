# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        class Batch
          # @overload create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::AppEventOccurrence>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseAppEventOccurrence]
          #
          # @see HubspotSDK::Models::Crm::Timeline::BatchCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Timeline::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "integrators/timeline/2026-03/events/batch",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseAppEventOccurrence,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
