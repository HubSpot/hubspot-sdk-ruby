# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Associations#request_high_usage_report
      class ReportCreationResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute enqueue_time
        #
        #   @return [HubSpotSDK::Models::Crm::DateTime]
        required :enqueue_time, -> { HubSpotSDK::Crm::DateTime }, api_name: :enqueueTime

        # @!attribute user_email
        #   Email of the user
        #
        #   @return [String]
        required :user_email, String, api_name: :userEmail

        # @!attribute user_id
        #   ID of the user
        #
        #   @return [Integer]
        required :user_id, Integer, api_name: :userId

        # @!method initialize(enqueue_time:, user_email:, user_id:)
        #   @param enqueue_time [HubSpotSDK::Models::Crm::DateTime]
        #
        #   @param user_email [String] Email of the user
        #
        #   @param user_id [Integer] ID of the user
      end
    end
  end
end
