# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class ParticipationProperties < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::ParticipationProperties,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
          )
        end
        attr_accessor :attendance_state

        sig { returns(Integer) }
        attr_accessor :occurred_at

        sig { returns(T.nilable(Integer)) }
        attr_reader :attendance_duration_seconds

        sig { params(attendance_duration_seconds: Integer).void }
        attr_writer :attendance_duration_seconds

        sig { returns(T.nilable(String)) }
        attr_reader :attendance_percentage

        sig { params(attendance_percentage: String).void }
        attr_writer :attendance_percentage

        sig do
          params(
            attendance_state:
              HubspotSDK::Marketing::ParticipationProperties::AttendanceState::OrSymbol,
            occurred_at: Integer,
            attendance_duration_seconds: Integer,
            attendance_percentage: String
          ).returns(T.attached_class)
        end
        def self.new(
          attendance_state:,
          occurred_at:,
          attendance_duration_seconds: nil,
          attendance_percentage: nil
        )
        end

        sig do
          override.returns(
            {
              attendance_state:
                HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol,
              occurred_at: Integer,
              attendance_duration_seconds: Integer,
              attendance_percentage: String
            }
          )
        end
        def to_hash
        end

        module AttendanceState
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::ParticipationProperties::AttendanceState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REGISTERED =
            T.let(
              :REGISTERED,
              HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          ATTENDED =
            T.let(
              :ATTENDED,
              HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :CANCELLED,
              HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          EMPTY =
            T.let(
              :EMPTY,
              HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          NO_SHOW =
            T.let(
              :NO_SHOW,
              HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
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
