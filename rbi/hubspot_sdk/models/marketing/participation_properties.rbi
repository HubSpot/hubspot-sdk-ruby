# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class ParticipationProperties < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::ParticipationProperties,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The state of the participation
        sig do
          returns(
            HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
          )
        end
        attr_accessor :attendance_state

        # Timestamp of when the participation occurred
        sig { returns(Integer) }
        attr_accessor :occurred_at

        # The number of seconds the participation lasted
        sig { returns(T.nilable(Integer)) }
        attr_reader :attendance_duration_seconds

        sig { params(attendance_duration_seconds: Integer).void }
        attr_writer :attendance_duration_seconds

        # Percentage of the participation duration relative to the event duration
        sig { returns(T.nilable(String)) }
        attr_reader :attendance_percentage

        sig { params(attendance_percentage: String).void }
        attr_writer :attendance_percentage

        sig do
          params(
            attendance_state:
              HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::OrSymbol,
            occurred_at: Integer,
            attendance_duration_seconds: Integer,
            attendance_percentage: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The state of the participation
          attendance_state:,
          # Timestamp of when the participation occurred
          occurred_at:,
          # The number of seconds the participation lasted
          attendance_duration_seconds: nil,
          # Percentage of the participation duration relative to the event duration
          attendance_percentage: nil
        )
        end

        sig do
          override.returns(
            {
              attendance_state:
                HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol,
              occurred_at: Integer,
              attendance_duration_seconds: Integer,
              attendance_percentage: String
            }
          )
        end
        def to_hash
        end

        # The state of the participation
        module AttendanceState
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Marketing::ParticipationProperties::AttendanceState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ATTENDED =
            T.let(
              :ATTENDED,
              HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :CANCELLED,
              HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          EMPTY =
            T.let(
              :EMPTY,
              HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          NO_SHOW =
            T.let(
              :NO_SHOW,
              HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )
          REGISTERED =
            T.let(
              :REGISTERED,
              HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Marketing::ParticipationProperties::AttendanceState::TaggedSymbol
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
