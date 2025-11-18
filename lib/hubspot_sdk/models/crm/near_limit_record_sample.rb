# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class NearLimitRecordSample < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #   The primary identifier of the record.
        #
        #   @return [String]
        required :label, String

        # @!attribute object_id_
        #   The unique identifier for the object.
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!attribute percentage
        #   The percentage of the limit that has been used.
        #
        #   @return [Float]
        required :percentage, Float

        # @!attribute usage
        #   The number of records currently in use.
        #
        #   @return [Integer]
        required :usage, Integer

        # @!method initialize(label:, object_id_:, percentage:, usage:)
        #   @param label [String] The primary identifier of the record.
        #
        #   @param object_id_ [Integer] The unique identifier for the object.
        #
        #   @param percentage [Float] The percentage of the limit that has been used.
        #
        #   @param usage [Integer] The number of records currently in use.
      end
    end
  end
end
