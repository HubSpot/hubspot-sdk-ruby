# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalBookingInfo < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute all_users_busy_times
        #
        #   @return [Array<HubSpotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        required :all_users_busy_times,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Scheduler::ExternalUserBusyTimes] },
                 api_name: :allUsersBusyTimes

        # @!attribute custom_params
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalMeetingsLinkSettings]
        required :custom_params,
                 -> { HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings },
                 api_name: :customParams

        # @!attribute is_offline
        #   Whether the meeting was booked offline, meaning no associated calendar event was
        #   created.
        #
        #   @return [Boolean]
        required :is_offline, HubSpotSDK::Internal::Type::Boolean, api_name: :isOffline

        # @!attribute link_id
        #   The unique identifier for the meeting link.
        #
        #   @return [String]
        required :link_id, String, api_name: :linkId

        # @!attribute link_type
        #   The type of the meeting link. Accepted values are: GROUP_CALENDAR,
        #   PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
        #
        #   @return [Symbol, HubSpotSDK::Models::Scheduler::ExternalBookingInfo::LinkType]
        required :link_type,
                 enum: -> { HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType },
                 api_name: :linkType

        # @!attribute branding_metadata
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalBrandingMetadata, nil]
        optional :branding_metadata,
                 -> { HubSpotSDK::Scheduler::ExternalBrandingMetadata },
                 api_name: :brandingMetadata

        # @!attribute link_availability
        #
        #   @return [HubSpotSDK::Models::Scheduler::ExternalLinkAvailability, nil]
        optional :link_availability,
                 -> { HubSpotSDK::Scheduler::ExternalLinkAvailability },
                 api_name: :linkAvailability

        # @!method initialize(all_users_busy_times:, custom_params:, is_offline:, link_id:, link_type:, branding_metadata: nil, link_availability: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Scheduler::ExternalBookingInfo} for more details.
        #
        #   @param all_users_busy_times [Array<HubSpotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        #
        #   @param custom_params [HubSpotSDK::Models::Scheduler::ExternalMeetingsLinkSettings]
        #
        #   @param is_offline [Boolean] Whether the meeting was booked offline, meaning no associated calendar event was
        #
        #   @param link_id [String] The unique identifier for the meeting link.
        #
        #   @param link_type [Symbol, HubSpotSDK::Models::Scheduler::ExternalBookingInfo::LinkType] The type of the meeting link. Accepted values are: GROUP_CALENDAR, PERSONAL_LINK
        #
        #   @param branding_metadata [HubSpotSDK::Models::Scheduler::ExternalBrandingMetadata]
        #
        #   @param link_availability [HubSpotSDK::Models::Scheduler::ExternalLinkAvailability]

        # The type of the meeting link. Accepted values are: GROUP_CALENDAR,
        # PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
        #
        # @see HubSpotSDK::Models::Scheduler::ExternalBookingInfo#link_type
        module LinkType
          extend HubSpotSDK::Internal::Type::Enum

          GROUP_CALENDAR = :GROUP_CALENDAR
          PERSONAL_LINK = :PERSONAL_LINK
          ROUND_ROBIN_CALENDAR = :ROUND_ROBIN_CALENDAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
