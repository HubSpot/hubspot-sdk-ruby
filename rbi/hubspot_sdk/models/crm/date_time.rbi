# typed: strong

module HubspotSDK
  module Models
    module Crm
      class DateTime < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Crm::DateTime, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :date_only

        sig { returns(Integer) }
        attr_accessor :time_zone_shift

        sig { returns(Integer) }
        attr_accessor :value

        sig do
          params(
            date_only: T::Boolean,
            time_zone_shift: Integer,
            value: Integer
          ).returns(T.attached_class)
        end
        def self.new(date_only:, time_zone_shift:, value:)
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
