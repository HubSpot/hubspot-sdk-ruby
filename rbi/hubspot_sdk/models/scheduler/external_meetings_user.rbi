# typed: strong

module HubspotSDK
  module Models
    module Scheduler
      class ExternalMeetingsUser < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Scheduler::ExternalMeetingsUser,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID for the meetings user. This value is different than the userId.
        sig { returns(String) }
        attr_accessor :id

        # The calendar provider associated with the user. Accepted values are: GOOGLE,
        # OFFICE365, EXCHANGE, UNKNOWN.
        sig do
          returns(
            HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
          )
        end
        attr_accessor :calendar_provider

        # Whether the user has a sales starter seat.
        sig { returns(T::Boolean) }
        attr_accessor :is_sales_starter

        # The ID of the user.
        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(HubspotSDK::Scheduler::ExternalUserProfile) }
        attr_reader :user_profile

        sig do
          params(
            user_profile: HubspotSDK::Scheduler::ExternalUserProfile::OrHash
          ).void
        end
        attr_writer :user_profile

        sig do
          params(
            id: String,
            calendar_provider:
              HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::OrSymbol,
            is_sales_starter: T::Boolean,
            user_id: String,
            user_profile: HubspotSDK::Scheduler::ExternalUserProfile::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID for the meetings user. This value is different than the userId.
          id:,
          # The calendar provider associated with the user. Accepted values are: GOOGLE,
          # OFFICE365, EXCHANGE, UNKNOWN.
          calendar_provider:,
          # Whether the user has a sales starter seat.
          is_sales_starter:,
          # The ID of the user.
          user_id:,
          user_profile:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              calendar_provider:
                HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol,
              is_sales_starter: T::Boolean,
              user_id: String,
              user_profile: HubspotSDK::Scheduler::ExternalUserProfile
            }
          )
        end
        def to_hash
        end

        # The calendar provider associated with the user. Accepted values are: GOOGLE,
        # OFFICE365, EXCHANGE, UNKNOWN.
        module CalendarProvider
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCHANGE =
            T.let(
              :EXCHANGE,
              HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )
          GOOGLE =
            T.let(
              :GOOGLE,
              HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )
          OFFICE365 =
            T.let(
              :OFFICE365,
              HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
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
