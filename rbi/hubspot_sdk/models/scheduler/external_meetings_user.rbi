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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :calendar_provider

        sig { returns(T::Boolean) }
        attr_accessor :is_sales_starter

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
            calendar_provider: String,
            is_sales_starter: T::Boolean,
            user_id: String,
            user_profile: HubspotSDK::Scheduler::ExternalUserProfile::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          calendar_provider:,
          is_sales_starter:,
          user_id:,
          user_profile:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              calendar_provider: String,
              is_sales_starter: T::Boolean,
              user_id: String,
              user_profile: HubspotSDK::Scheduler::ExternalUserProfile
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
