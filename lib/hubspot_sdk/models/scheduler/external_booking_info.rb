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
        #
        #   @return [Boolean]
        required :is_offline, HubspotSDK::Internal::Type::Boolean, api_name: :isOffline

        # @!attribute link_id
        #
        #   @return [String]
        required :link_id, String, api_name: :linkId

        # @!attribute link_type
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
        #   @param all_users_busy_times [Array<HubspotSDK::Models::Scheduler::ExternalUserBusyTimes>]
        #   @param custom_params [HubspotSDK::Models::Scheduler::ExternalMeetingsLinkSettings]
        #   @param is_offline [Boolean]
        #   @param link_id [String]
        #   @param link_type [Symbol, HubspotSDK::Models::Scheduler::ExternalBookingInfo::LinkType]
        #   @param branding_metadata [HubspotSDK::Models::Scheduler::ExternalBrandingMetadata]
        #   @param link_availability [HubspotSDK::Models::Scheduler::ExternalLinkAvailability]

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
