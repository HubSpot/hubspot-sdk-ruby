# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        # @see HubspotSDK::Resources::CRM::Objects::DealSplits#batch_upsert
        class DealSplitBatchUpsertParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertParams::Input>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input] }

          # @!method initialize(inputs:, request_options: {})
          #   @param inputs [Array<HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertParams::Input>]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          class Input < HubspotSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer]
            required :id, Integer

            # @!attribute splits
            #
            #   @return [Array<HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertParams::Input::Split>]
            required :splits,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input::Split] }

            # @!method initialize(id:, splits:)
            #   @param id [Integer]
            #   @param splits [Array<HubspotSDK::Models::CRM::Objects::DealSplitBatchUpsertParams::Input::Split>]

            class Split < HubspotSDK::Internal::Type::BaseModel
              # @!attribute owner_id
              #
              #   @return [Integer]
              required :owner_id, Integer, api_name: :ownerId

              # @!attribute percentage
              #
              #   @return [Float]
              required :percentage, Float

              # @!method initialize(owner_id:, percentage:)
              #   @param owner_id [Integer]
              #   @param percentage [Float]
            end
          end
        end
      end
    end
  end
end
