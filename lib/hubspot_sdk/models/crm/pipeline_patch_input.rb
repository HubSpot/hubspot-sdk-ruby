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
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(archived: nil, display_order: nil, label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PipelinePatchInput} for more details.
        #
        #   @param archived [Boolean] Whether the pipeline is archived. This property should only be provided when res
        #
        #   @param display_order [Integer]
        #
        #   @param label [String]
      end
    end
  end
end
