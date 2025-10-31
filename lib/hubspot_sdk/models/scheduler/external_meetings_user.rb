# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsUser < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute calendar_provider
        #
        #   @return [String]
        required :calendar_provider, String, api_name: :calendarProvider

        # @!attribute is_sales_starter
        #
        #   @return [Boolean]
        required :is_sales_starter, HubspotSDK::Internal::Type::Boolean, api_name: :isSalesStarter

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String, api_name: :userId

        # @!attribute user_profile
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalUserProfile]
        required :user_profile, -> { HubspotSDK::Scheduler::ExternalUserProfile }, api_name: :userProfile

        # @!method initialize(id:, calendar_provider:, is_sales_starter:, user_id:, user_profile:)
        #   @param id [String]
        #   @param calendar_provider [String]
        #   @param is_sales_starter [Boolean]
        #   @param user_id [String]
        #   @param user_profile [HubspotSDK::Models::Scheduler::ExternalUserProfile]
      end
    end
  end
end
