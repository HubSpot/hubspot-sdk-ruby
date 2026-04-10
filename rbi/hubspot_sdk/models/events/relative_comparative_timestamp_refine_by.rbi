# typed: strong

module HubSpotSDK
  module Models
    module Events
      class RelativeComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::RelativeComparativeTimestampRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
          )
        end
        attr_accessor :comparison

        sig { returns(HubSpotSDK::Events::TimeOffset) }
        attr_reader :time_offset

        sig { params(time_offset: HubSpotSDK::Events::TimeOffset::OrHash).void }
        attr_writer :time_offset

        sig do
          returns(
            HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison:
              HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::OrSymbol,
            time_offset: HubSpotSDK::Events::TimeOffset::OrHash,
            type:
              HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(comparison:, time_offset:, type:)
        end

        sig do
          override.returns(
            {
              comparison:
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol,
              time_offset: HubSpotSDK::Events::TimeOffset,
              type:
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
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
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AFTER =
            T.let(
              :AFTER,
              HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )
          BEFORE =
            T.let(
              :BEFORE,
              HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
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
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_COMPARATIVE_TIMESTAMP_REFINE_BY =
            T.let(
              :RelativeComparativeTimestampRefineBy,
              HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
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
