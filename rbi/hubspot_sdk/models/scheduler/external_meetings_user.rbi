# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalMeetingsUser < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalMeetingsUser,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The ID for the meetings user. This value is different than the userId.
        sig { returns(String) }
        attr_accessor :id

        # The calendar provider associated with the user. Accepted values are: GOOGLE,
        # OFFICE365, EXCHANGE, UNKNOWN.
        sig do
          returns(
            HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
          )
        end
        attr_accessor :calendar_provider

        # Whether the user has a sales starter seat.
        sig { returns(T::Boolean) }
        attr_accessor :is_sales_starter

        # The ID of the user.
        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(HubSpotSDK::Scheduler::ExternalUserProfile) }
        attr_reader :user_profile

        sig do
          params(
            user_profile: HubSpotSDK::Scheduler::ExternalUserProfile::OrHash
          ).void
        end
        attr_writer :user_profile

        sig do
          params(
            id: String,
            calendar_provider:
              HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::OrSymbol,
            is_sales_starter: T::Boolean,
            user_id: String,
            user_profile: HubSpotSDK::Scheduler::ExternalUserProfile::OrHash
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
                HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol,
              is_sales_starter: T::Boolean,
              user_id: String,
              user_profile: HubSpotSDK::Scheduler::ExternalUserProfile
            }
          )
        end
        def to_hash
        end

        # The calendar provider associated with the user. Accepted values are: GOOGLE,
        # OFFICE365, EXCHANGE, UNKNOWN.
        module CalendarProvider
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXCHANGE =
            T.let(
              :EXCHANGE,
              HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )
          GOOGLE =
            T.let(
              :GOOGLE,
              HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )
          OFFICE365 =
            T.let(
              :OFFICE365,
              HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Scheduler::ExternalMeetingsUser::CalendarProvider::TaggedSymbol
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
