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

        # Number of attended contact records of a marketing event
        sig { returns(Integer) }
        attr_accessor :attended

        # Number of cancelled contact records of a marketing event
        sig { returns(Integer) }
        attr_accessor :cancelled

        # Number of no-show contact records of a marketing event
        sig { returns(Integer) }
        attr_accessor :no_shows

        # Number of registered contact records of a marketing event
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
        def self.new(
          # Number of attended contact records of a marketing event
          attended:,
          # Number of cancelled contact records of a marketing event
          cancelled:,
          # Number of no-show contact records of a marketing event
          no_shows:,
          # Number of registered contact records of a marketing event
          registered:
        )
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
