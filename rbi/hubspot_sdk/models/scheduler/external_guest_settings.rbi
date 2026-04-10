# typed: strong

module HubSpotSDK
  module Models
    module Scheduler
      class ExternalGuestSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Scheduler::ExternalGuestSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates whether guests can be added to the meeting.
        sig { returns(T::Boolean) }
        attr_accessor :can_add_guests

        # The maximum number of guests that can be added to the meeting.
        sig { returns(Integer) }
        attr_accessor :max_guest_count

        sig do
          params(can_add_guests: T::Boolean, max_guest_count: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Indicates whether guests can be added to the meeting.
          can_add_guests:,
          # The maximum number of guests that can be added to the meeting.
          max_guest_count:
        )
        end

        sig do
          override.returns(
            { can_add_guests: T::Boolean, max_guest_count: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
