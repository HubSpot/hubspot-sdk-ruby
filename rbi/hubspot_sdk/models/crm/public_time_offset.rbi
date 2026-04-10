# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicTimeOffset < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicTimeOffset,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The numerical value representing the quantity of the time offset.
        sig { returns(Integer) }
        attr_accessor :amount

        # Indicates the direction of the time offset, such as forward or backward.
        sig { returns(String) }
        attr_accessor :offset_direction

        # Specifies the unit of time for the offset, such as days, hours, or minutes.
        sig { returns(String) }
        attr_accessor :time_unit

        sig do
          params(
            amount: Integer,
            offset_direction: String,
            time_unit: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The numerical value representing the quantity of the time offset.
          amount:,
          # Indicates the direction of the time offset, such as forward or backward.
          offset_direction:,
          # Specifies the unit of time for the offset, such as days, hours, or minutes.
          time_unit:
        )
        end

        sig do
          override.returns(
            { amount: Integer, offset_direction: String, time_unit: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
