# typed: strong

module HubSpotSDK
  module Models
    module Events
      class AbsoluteComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
          )
        end
        attr_accessor :comparison

        sig { returns(Integer) }
        attr_accessor :timestamp

        sig do
          returns(
            HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison:
              HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::OrSymbol,
            timestamp: Integer,
            type:
              HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(comparison:, timestamp:, type:)
        end

        sig do
          override.returns(
            {
              comparison:
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol,
              timestamp: Integer,
              type:
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Comparison
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER =
            T.let(
              :AFTER,
              HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )
          BEFORE =
            T.let(
              :BEFORE,
              HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE_COMPARATIVE_TIMESTAMP_REFINE_BY =
            T.let(
              :AbsoluteComparativeTimestampRefineBy,
              HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
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
