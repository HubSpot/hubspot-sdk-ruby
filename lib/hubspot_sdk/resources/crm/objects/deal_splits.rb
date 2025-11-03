# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class DealSplits
          # Read a batch of deal split objects by their associated deal object internal ID
          #
          # @overload batch_read(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::PublicObjectID>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Objects::BatchResponseDealToDealSplits]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealSplitBatchReadParams
          def batch_read(params)
            parsed, options = HubspotSDK::Crm::Objects::DealSplitBatchReadParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/deals/splits/batch/read",
              body: parsed,
              model: HubspotSDK::Crm::Objects::BatchResponseDealToDealSplits,
              options: options
            )
          end

          # Create or replace deal splits for deals with the provided IDs. Deal split
          # percentages for each deal must sum up to 1.0 (100%) and may have up to 8 decimal
          # places
          #
          # @overload batch_upsert(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::Objects::PublicDealSplitsCreateRequest>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Objects::BatchResponseDealToDealSplits]
          #
          # @see HubspotSDK::Models::Crm::Objects::DealSplitBatchUpsertParams
          def batch_upsert(params)
            parsed, options = HubspotSDK::Crm::Objects::DealSplitBatchUpsertParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/deals/splits/batch/upsert",
              body: parsed,
              model: HubspotSDK::Crm::Objects::BatchResponseDealToDealSplits,
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
