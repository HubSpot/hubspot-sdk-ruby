# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class MarkRecordingAsReadyRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute engagement_id
          #   The unique identifier for the engagement associated with the call recording.
          #
          #   @return [Integer]
          required :engagement_id, Integer, api_name: :engagementId

          # @!method initialize(engagement_id:)
          #   @param engagement_id [Integer] The unique identifier for the engagement associated with the call recording.
        end
      end
    end
  end
end
