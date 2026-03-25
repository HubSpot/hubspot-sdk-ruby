# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class Pipeline < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #   Whether the pipeline is archived.
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute display_order
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute stages
        #   The stages associated with the pipeline. They can be retrieved and updated via
        #   the pipeline stages endpoints.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PipelineStage>]
        required :stages, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStage] }

        # @!attribute updated_at
        #   The date the pipeline was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute archived_at
        #   The date the pipeline was archived. `archivedAt` will only be present if the
        #   pipeline is archived.
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!method initialize(id:, archived:, created_at:, display_order:, label:, stages:, updated_at:, archived_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::Pipeline} for more details.
        #
        #   @param id [String]
        #
        #   @param archived [Boolean] Whether the pipeline is archived.
        #
        #   @param created_at [Time]
        #
        #   @param display_order [Integer]
        #
        #   @param label [String]
        #
        #   @param stages [Array<HubspotSDK::Models::Crm::PipelineStage>] The stages associated with the pipeline. They can be retrieved and updated via t
        #
        #   @param updated_at [Time] The date the pipeline was last updated.
        #
        #   @param archived_at [Time] The date the pipeline was archived. `archivedAt` will only be present if the pip
      end
    end
  end
end
