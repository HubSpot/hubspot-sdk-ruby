# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class NearLimitRecordSample < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute object_id_
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute percentage
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute usage
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(label:, object_id_:, percentage:, usage:)
        #   @param label [String]
        #   @param object_id_ [Integer]
        #   @param percentage [Float]
        #   @param usage [Integer]
      end
    end
  end
end
