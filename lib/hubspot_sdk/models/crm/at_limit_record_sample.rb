# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class AtLimitRecordSample < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute label
        #   The label associated with a record that is at its limit.
        #
        #   @return [String]
        required :label, String

        # @!attribute object_id_
        #   The objectId of the object that is at its limit.
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!method initialize(label:, object_id_:)
        #   @param label [String] The label associated with a record that is at its limit.
        #
        #   @param object_id_ [Integer] The objectId of the object that is at its limit.
      end
    end
  end
end
