# typed: strong

module HubSpotSDK
  module Models
    module Events
      class TimeOffset < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Events::TimeOffset, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :amount

        sig do
          returns(HubSpotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol)
        end
        attr_accessor :offset_direction

        sig { returns(HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol) }
        attr_accessor :time_unit

        sig do
          params(
            amount: Integer,
            offset_direction:
              HubSpotSDK::Events::TimeOffset::OffsetDirection::OrSymbol,
            time_unit: HubSpotSDK::Events::TimeOffset::TimeUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(amount:, offset_direction:, time_unit:)
        end

        sig do
          override.returns(
            {
              amount: Integer,
              offset_direction:
                HubSpotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol,
              time_unit: HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module OffsetDirection
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::TimeOffset::OffsetDirection)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FUTURE =
            T.let(
              :FUTURE,
              HubSpotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol
            )
          PAST =
            T.let(
              :PAST,
              HubSpotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Events::TimeOffset::TimeUnit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DAYS =
            T.let(:DAYS, HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol)
          HOURS =
            T.let(
              :HOURS,
              HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            )
          MINUTES =
            T.let(
              :MINUTES,
              HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            )
          WEEKS =
            T.let(
              :WEEKS,
              HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
