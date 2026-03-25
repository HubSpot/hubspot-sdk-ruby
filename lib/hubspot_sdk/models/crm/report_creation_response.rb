# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Associations#request_high_usage_report
      class ReportCreationResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enqueue_time
        #
        #   @return [HubspotSDK::Models::Crm::DateTime]
        required :enqueue_time, -> { HubspotSDK::Crm::DateTime }, api_name: :enqueueTime

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
        #   @param enqueue_time [HubspotSDK::Models::Crm::DateTime]
        #
        #   @param user_email [String] Email of the user
        #
        #   @param user_id [Integer] ID of the user
      end
    end
  end
end
