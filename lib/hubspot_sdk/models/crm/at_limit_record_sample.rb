# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class AtLimitRecordSample < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute object_id_
        #
        #   @return [Integer]
        required :object_id_, Integer, api_name: :objectId

        # @!method initialize(label:, object_id_:)
        #   @param label [String]
        #   @param object_id_ [Integer]
      end
    end
  end
end
