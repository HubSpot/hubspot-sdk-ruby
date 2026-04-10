# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class DateTime < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Crm::DateTime, HubSpotSDK::Internal::AnyHash)
          end

        # Indicates whether the DateTime value represents only a date without a time
        # component.
        sig { returns(T::Boolean) }
        attr_accessor :date_only

        # The integer value representing the shift in minutes from UTC for the DateTime
        # value.
        sig { returns(Integer) }
        attr_accessor :time_zone_shift

        # The integer value representing a specific point in time.
        sig { returns(Integer) }
        attr_accessor :value

        sig do
          params(
            date_only: T::Boolean,
            time_zone_shift: Integer,
            value: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether the DateTime value represents only a date without a time
          # component.
          date_only:,
          # The integer value representing the shift in minutes from UTC for the DateTime
          # value.
          time_zone_shift:,
          # The integer value representing a specific point in time.
          value:
        )
        end

        sig do
          override.returns(
            { date_only: T::Boolean, time_zone_shift: Integer, value: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
