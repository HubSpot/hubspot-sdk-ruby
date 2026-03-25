# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsUser < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID for the meetings user. This value is different than the userId.
        #
        #   @return [String]
        required :id, String

        # @!attribute calendar_provider
        #   The calendar provider associated with the user. Accepted values are: GOOGLE,
        #   OFFICE365, EXCHANGE, UNKNOWN.
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalMeetingsUser::CalendarProvider]
        required :calendar_provider,
                 enum: -> { HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider },
                 api_name: :calendarProvider

        # @!attribute is_sales_starter
        #   Whether the user has a sales starter seat.
        #
        #   @return [Boolean]
        required :is_sales_starter, HubspotSDK::Internal::Type::Boolean, api_name: :isSalesStarter

        # @!attribute user_id
        #   The ID of the user.
        #
        #   @return [String]
        required :user_id, String, api_name: :userId

        # @!attribute user_profile
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalUserProfile]
        required :user_profile, -> { HubspotSDK::Scheduler::ExternalUserProfile }, api_name: :userProfile

        # @!method initialize(id:, calendar_provider:, is_sales_starter:, user_id:, user_profile:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalMeetingsUser} for more details.
        #
        #   @param id [String] The ID for the meetings user. This value is different than the userId.
        #
        #   @param calendar_provider [Symbol, HubspotSDK::Models::Scheduler::ExternalMeetingsUser::CalendarProvider] The calendar provider associated with the user. Accepted values are: GOOGLE, OFF
        #
        #   @param is_sales_starter [Boolean] Whether the user has a sales starter seat.
        #
        #   @param user_id [String] The ID of the user.
        #
        #   @param user_profile [HubspotSDK::Models::Scheduler::ExternalUserProfile]

        # The calendar provider associated with the user. Accepted values are: GOOGLE,
        # OFFICE365, EXCHANGE, UNKNOWN.
        #
        # @see HubspotSDK::Models::Scheduler::ExternalMeetingsUser#calendar_provider
        module CalendarProvider
          extend HubspotSDK::Internal::Type::Enum

          EXCHANGE = :EXCHANGE
          GOOGLE = :GOOGLE
          OFFICE365 = :OFFICE365
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
