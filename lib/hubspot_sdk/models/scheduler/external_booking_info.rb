# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalBookingInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute all_users_busy_times
        #
        #   @return [Array<HubspotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        required :all_users_busy_times,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Scheduler::ExternalUserBusyTimes] },
                 api_name: :allUsersBusyTimes

        # @!attribute custom_params
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings]
        required :custom_params,
                 -> { HubspotSDK::Scheduler::ExternalMeetingsLinkSettings },
                 api_name: :customParams

        # @!attribute is_offline
        #   Whether the meeting was booked offline, meaning no associated calendar event was
        #   created.
        #
        #   @return [Boolean]
        required :is_offline, HubspotSDK::Internal::Type::Boolean, api_name: :isOffline

        # @!attribute link_id
        #   The unique identifier for the meeting link.
        #
        #   @return [String]
        required :link_id, String, api_name: :linkId

        # @!attribute link_type
        #   The type of the meeting link. Accepted values are: GROUP_CALENDAR,
        #   PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalBookingInfo::LinkType]
        required :link_type,
                 enum: -> { HubspotSDK::Scheduler::ExternalBookingInfo::LinkType },
                 api_name: :linkType

        # @!attribute branding_metadata
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalBrandingMetadata, nil]
        optional :branding_metadata,
                 -> { HubspotSDK::Scheduler::ExternalBrandingMetadata },
                 api_name: :brandingMetadata

        # @!attribute link_availability
        #
        #   @return [HubspotSDK::Models::Scheduler::ExternalLinkAvailability, nil]
        optional :link_availability,
                 -> { HubspotSDK::Scheduler::ExternalLinkAvailability },
                 api_name: :linkAvailability

        # @!method initialize(all_users_busy_times:, custom_params:, is_offline:, link_id:, link_type:, branding_metadata: nil, link_availability: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalBookingInfo} for more details.
        #
        #   @param all_users_busy_times [Array<HubspotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        #
        #   @param custom_params [HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings]
        #
        #   @param is_offline [Boolean] Whether the meeting was booked offline, meaning no associated calendar event was
        #
        #   @param link_id [String] The unique identifier for the meeting link.
        #
        #   @param link_type [Symbol, HubspotSDK::Models::Scheduler::ExternalBookingInfo::LinkType] The type of the meeting link. Accepted values are: GROUP_CALENDAR, PERSONAL_LINK
        #
        #   @param branding_metadata [HubspotSDK::Models::Scheduler::ExternalBrandingMetadata]
        #
        #   @param link_availability [HubspotSDK::Models::Scheduler::ExternalLinkAvailability]

        # The type of the meeting link. Accepted values are: GROUP_CALENDAR,
        # PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
        #
        # @see HubspotSDK::Models::Scheduler::ExternalBookingInfo#link_type
        module LinkType
          extend HubspotSDK::Internal::Type::Enum

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
