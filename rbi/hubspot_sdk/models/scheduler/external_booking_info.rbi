# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalBookingInfo < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalBookingInfo,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Scheduler::ExternalUserBusyTimes]) }
        attr_accessor :all_users_busy_times

        sig { returns(HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings) }
        attr_reader :custom_params

        sig do
          params(
            custom_params:
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::OrHash
          ).void
        end
        attr_writer :custom_params

        # Whether the meeting was booked offline, meaning no associated calendar event was
        # created.
        sig { returns(T::Boolean) }
        attr_accessor :is_offline

        # The unique identifier for the meeting link.
        sig { returns(String) }
        attr_accessor :link_id

        # The type of the meeting link. Accepted values are: GROUP_CALENDAR,
        # PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
          )
        end
        attr_accessor :link_type

        sig do
          returns(T.nilable(HubSpotSDK::Scheduler::ExternalBrandingMetadata))
        end
        attr_reader :branding_metadata

        sig do
          params(
            branding_metadata:
              HubSpotSDK::Scheduler::ExternalBrandingMetadata::OrHash
          ).void
        end
        attr_writer :branding_metadata

        sig do
          returns(T.nilable(HubSpotSDK::Scheduler::ExternalLinkAvailability))
        end
        attr_reader :link_availability

        sig do
          params(
            link_availability:
              HubSpotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).void
        end
        attr_writer :link_availability

        sig do
          params(
            all_users_busy_times:
              T::Array[HubSpotSDK::Scheduler::ExternalUserBusyTimes::OrHash],
            custom_params:
              HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings::OrHash,
            is_offline: T::Boolean,
            link_id: String,
            link_type:
              HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::OrSymbol,
            branding_metadata:
              HubSpotSDK::Scheduler::ExternalBrandingMetadata::OrHash,
            link_availability:
              HubSpotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          all_users_busy_times:,
          custom_params:,
          # Whether the meeting was booked offline, meaning no associated calendar event was
          # created.
          is_offline:,
          # The unique identifier for the meeting link.
          link_id:,
          # The type of the meeting link. Accepted values are: GROUP_CALENDAR,
          # PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
          link_type:,
          branding_metadata: nil,
          link_availability: nil
        )
        end

        sig do
          override.returns(
            {
              all_users_busy_times:
                T::Array[HubSpotSDK::Scheduler::ExternalUserBusyTimes],
              custom_params:
                HubSpotSDK::Scheduler::ExternalMeetingsLinkSettings,
              is_offline: T::Boolean,
              link_id: String,
              link_type:
                HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol,
              branding_metadata:
                HubSpotSDK::Scheduler::ExternalBrandingMetadata,
              link_availability: HubSpotSDK::Scheduler::ExternalLinkAvailability
            }
          )
        end
        def to_hash
        end

        # The type of the meeting link. Accepted values are: GROUP_CALENDAR,
        # PERSONAL_LINK, ROUND_ROBIN_CALENDAR.
        module LinkType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GROUP_CALENDAR =
            T.let(
              :GROUP_CALENDAR,
              HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
            )
          PERSONAL_LINK =
            T.let(
              :PERSONAL_LINK,
              HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
            )
          ROUND_ROBIN_CALENDAR =
            T.let(
              :ROUND_ROBIN_CALENDAR,
              HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
