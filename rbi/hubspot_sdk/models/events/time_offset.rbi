# typed: strong

module HubspotSDK
  module Models
    module Events
      class TimeOffset < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Events::TimeOffset, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :amount

        sig do
          returns(HubspotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol)
        end
        attr_accessor :offset_direction

        sig { returns(HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol) }
        attr_accessor :time_unit

        sig do
          params(
            amount: Integer,
            offset_direction:
              HubspotSDK::Events::TimeOffset::OffsetDirection::OrSymbol,
            time_unit: HubspotSDK::Events::TimeOffset::TimeUnit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(amount:, offset_direction:, time_unit:)
        end

        sig do
          override.returns(
            {
              amount: Integer,
              offset_direction:
                HubspotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol,
              time_unit: HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module OffsetDirection
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::TimeOffset::OffsetDirection)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAST =
            T.let(
              :PAST,
              HubspotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol
            )
          FUTURE =
            T.let(
              :FUTURE,
              HubspotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::TimeOffset::OffsetDirection::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Events::TimeOffset::TimeUnit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEEKS =
            T.let(
              :WEEKS,
              HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            )
          DAYS =
            T.let(:DAYS, HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol)
          HOURS =
            T.let(
              :HOURS,
              HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            )
          MINUTES =
            T.let(
              :MINUTES,
              HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Events::TimeOffset::TimeUnit::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
