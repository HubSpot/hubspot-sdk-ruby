# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalBookingInfo < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalBookingInfo,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Scheduler::ExternalUserBusyTimes]) }
        attr_accessor :all_users_busy_times

        sig { returns(HubspotSDK::Scheduler::ExternalMeetingsLinkSettings) }
        attr_reader :custom_params

        sig do
          params(
            custom_params:
              HubspotSDK::Scheduler::ExternalMeetingsLinkSettings::OrHash
          ).void
        end
        attr_writer :custom_params

        sig { returns(T::Boolean) }
        attr_accessor :is_offline

        sig { returns(String) }
        attr_accessor :link_id

        sig do
          returns(
            HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
          )
        end
        attr_accessor :link_type

        sig do
          returns(T.nilable(HubspotSDK::Scheduler::ExternalBrandingMetadata))
        end
        attr_reader :branding_metadata

        sig do
          params(
            branding_metadata:
              HubspotSDK::Scheduler::ExternalBrandingMetadata::OrHash
          ).void
        end
        attr_writer :branding_metadata

        sig do
          returns(T.nilable(HubspotSDK::Scheduler::ExternalLinkAvailability))
        end
        attr_reader :link_availability

        sig do
          params(
            link_availability:
              HubspotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).void
        end
        attr_writer :link_availability

        sig do
          params(
            all_users_busy_times:
              T::Array[HubspotSDK::Scheduler::ExternalUserBusyTimes::OrHash],
            custom_params:
              HubspotSDK::Scheduler::ExternalMeetingsLinkSettings::OrHash,
            is_offline: T::Boolean,
            link_id: String,
            link_type:
              HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::OrSymbol,
            branding_metadata:
              HubspotSDK::Scheduler::ExternalBrandingMetadata::OrHash,
            link_availability:
              HubspotSDK::Scheduler::ExternalLinkAvailability::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          all_users_busy_times:,
          custom_params:,
          is_offline:,
          link_id:,
          link_type:,
          branding_metadata: nil,
          link_availability: nil
        )
        end

        sig do
          override.returns(
            {
              all_users_busy_times:
                T::Array[HubspotSDK::Scheduler::ExternalUserBusyTimes],
              custom_params:
                HubspotSDK::Scheduler::ExternalMeetingsLinkSettings,
              is_offline: T::Boolean,
              link_id: String,
              link_type:
                HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol,
              branding_metadata:
                HubspotSDK::Scheduler::ExternalBrandingMetadata,
              link_availability: HubspotSDK::Scheduler::ExternalLinkAvailability
            }
          )
        end
        def to_hash
        end

        module LinkType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Scheduler::ExternalBookingInfo::LinkType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GROUP_CALENDAR =
            T.let(
              :GROUP_CALENDAR,
              HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
            )
          PERSONAL_LINK =
            T.let(
              :PERSONAL_LINK,
              HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
            )
          ROUND_ROBIN_CALENDAR =
            T.let(
              :ROUND_ROBIN_CALENDAR,
              HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Scheduler::ExternalBookingInfo::LinkType::TaggedSymbol
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
