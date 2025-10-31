# typed: strong

module HubspotSDK
  module Models
    module Events
      class AbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
          )
        end
        attr_accessor :comparison

        sig { returns(Integer) }
        attr_accessor :timestamp

        sig do
          returns(
            HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison:
              HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::OrSymbol,
            timestamp: Integer,
            type:
              HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(comparison:, timestamp:, type:)
        end

        sig do
          override.returns(
            {
              comparison:
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol,
              timestamp: Integer,
              type:
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Comparison
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEFORE =
            T.let(
              :BEFORE,
              HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )
          AFTER =
            T.let(
              :AFTER,
              HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Comparison::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE_COMPARATIVE_TIMESTAMP_REFINE_BY =
            T.let(
              :AbsoluteComparativeTimestampRefineBy,
              HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
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
