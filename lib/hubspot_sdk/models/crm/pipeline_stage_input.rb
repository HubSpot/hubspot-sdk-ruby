# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PipelineStageInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #   The order for displaying this pipeline stage. If two pipeline stages have a
        #   matching `displayOrder`, they will be sorted alphabetically by label.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        #   label must be unique within that pipeline.
        #
        #   @return [String]
        required :label, String

        # @!attribute metadata
        #   A JSON object containing properties that are not present on all object
        #   pipelines.
        #
        #   For `deals` pipelines, the `probability` field is required
        #   (`{ "probability": 0.5 }`), and represents the likelihood a deal will close.
        #   Possible values are between 0.0 and 1.0 in increments of 0.1.
        #
        #   For `tickets` pipelines, the `ticketState` field is optional
        #   (`{ "ticketState": "OPEN" }`), and represents whether the ticket remains open or
        #   has been closed by a member of your Support team. Possible values are `OPEN` or
        #   `CLOSED`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute stage_id
        #
        #   @return [String, nil]
        optional :stage_id, String, api_name: :stageId

        # @!method initialize(display_order:, label:, metadata:, stage_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PipelineStageInput} for more details.
        #
        #   @param display_order [Integer] The order for displaying this pipeline stage. If two pipeline stages have a matc
        #
        #   @param label [String] A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        #
        #   @param metadata [Hash{Symbol=>String}] A JSON object containing properties that are not present on all object pipelines
        #
        #   @param stage_id [String]
      end
    end
  end
end
