# typed: strong

module HubspotSDK
  module Models
    module Events
      class RelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::RelativeComparativeTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
          )
        end
        attr_accessor :comparison

        sig { returns(HubspotSDK::Events::TimeOffset) }
        attr_reader :time_offset

        sig { params(time_offset: HubspotSDK::Events::TimeOffset::OrHash).void }
        attr_writer :time_offset

        sig do
          returns(
            HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison:
              HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::OrSymbol,
            time_offset: HubspotSDK::Events::TimeOffset::OrHash,
            type:
              HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(comparison:, time_offset:, type:)
        end

        sig do
          override.returns(
            {
              comparison:
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol,
              time_offset: HubspotSDK::Events::TimeOffset,
              type:
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
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
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BEFORE =
            T.let(
              :BEFORE,
              HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )
          AFTER =
            T.let(
              :AFTER,
              HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Comparison::TaggedSymbol
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
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_COMPARATIVE_TIMESTAMP_REFINE_BY =
            T.let(
              :RelativeComparativeTimestampRefineBy,
              HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RelativeComparativeTimestampRefineBy::Type::TaggedSymbol
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
