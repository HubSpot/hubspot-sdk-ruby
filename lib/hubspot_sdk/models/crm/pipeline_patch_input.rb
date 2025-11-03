# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PipelinePatchInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #   Whether the pipeline is archived. This property should only be provided when
        #   restoring an archived pipeline. If it's provided in any other call, the request
        #   will fail and a `400 Bad Request` will be returned.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute display_order
        #   The order for displaying this pipeline. If two pipelines have a matching
        #   `displayOrder`, they will be sorted alphabetically by label.
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A unique label used to organize pipelines in HubSpot's UI
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(archived: nil, display_order: nil, label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PipelinePatchInput} for more details.
        #
        #   An input used to update some properties on a pipeline definition.
        #
        #   @param archived [Boolean] Whether the pipeline is archived. This property should only be provided when res
        #
        #   @param display_order [Integer] The order for displaying this pipeline. If two pipelines have a matching `displa
        #
        #   @param label [String] A unique label used to organize pipelines in HubSpot's UI
      end
    end
  end
end
