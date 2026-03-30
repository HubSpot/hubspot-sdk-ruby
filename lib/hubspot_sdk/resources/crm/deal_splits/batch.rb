# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class DealSplits
        class Batch
          # Read a batch of deal split objects by their associated deal object internal ID
          #
          # @overload read(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::PublicObjectID>] An array of deal split inputs
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseDealToDealSplits]
          #
          # @see HubspotSDK::Models::Crm::DealSplits::BatchReadParams
          def read(params)
            parsed, options = HubspotSDK::Crm::DealSplits::BatchReadParams.dump_request(params)
            @client.request(
              method: :post,
              path: "deal-splits/2026-03/batch/read",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseDealToDealSplits,
              options: options
            )
          end

          # Create or replace deal splits for deals with the provided IDs. Deal split
          # percentages for each deal must sum up to 1.0 (100%) and may have up to 8 decimal
          # places
          #
          # @overload upsert(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::PublicDealSplitsCreateRequest>] An array of deal split inputs
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseDealToDealSplits]
          #
          # @see HubspotSDK::Models::Crm::DealSplits::BatchUpsertParams
          def upsert(params)
            parsed, options = HubspotSDK::Crm::DealSplits::BatchUpsertParams.dump_request(params)
            @client.request(
              method: :post,
              path: "deal-splits/2026-03/batch/upsert",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseDealToDealSplits,
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
