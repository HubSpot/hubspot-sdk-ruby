# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PipelineStagePatchInput < HubspotSDK::Internal::Type::BaseModel
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
        required :metadata, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute archived
        #   Whether the pipeline is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute display_order
        #   The order for displaying this pipeline stage. If two pipeline stages have a
        #   matching `displayOrder`, they will be sorted alphabetically by label.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        #   label must be unique within that pipeline.
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(metadata:, archived: nil, display_order: nil, label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PipelineStagePatchInput} for more details.
        #
        #   @param metadata [Hash{Symbol=>String}] A JSON object containing properties that are not present on all object pipelines
        #
        #   @param archived [Boolean] Whether the pipeline is archived.
        #
        #   @param display_order [Integer] The order for displaying this pipeline stage. If two pipeline stages have a matc
        #
        #   @param label [String] A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
      end
    end
  end
end
