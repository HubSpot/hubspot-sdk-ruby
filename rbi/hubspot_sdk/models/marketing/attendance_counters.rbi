# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class AttendanceCounters < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::AttendanceCounters,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :attended

        sig { returns(Integer) }
        attr_accessor :cancelled

        sig { returns(Integer) }
        attr_accessor :no_shows

        sig { returns(Integer) }
        attr_accessor :registered

        sig do
          params(
            attended: Integer,
            cancelled: Integer,
            no_shows: Integer,
            registered: Integer
          ).returns(T.attached_class)
        end
        def self.new(attended:, cancelled:, no_shows:, registered:)
        end

        sig do
          override.returns(
            {
              attended: Integer,
              cancelled: Integer,
              no_shows: Integer,
              registered: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
