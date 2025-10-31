# typed: strong

module HubspotSDK
  module Models
    module Events
      class AbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::AbsoluteRangedTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :lower_timestamp

        sig do
          returns(
            HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
          )
        end
        attr_accessor :range_type

        sig do
          returns(
            HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(Integer) }
        attr_accessor :upper_timestamp

        sig do
          params(
            lower_timestamp: Integer,
            range_type:
              HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::OrSymbol,
            type:
              HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::OrSymbol,
            upper_timestamp: Integer
          ).returns(T.attached_class)
        end
        def self.new(lower_timestamp:, range_type:, type:, upper_timestamp:)
        end

        sig do
          override.returns(
            {
              lower_timestamp: Integer,
              range_type:
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol,
              type:
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol,
              upper_timestamp: Integer
            }
          )
        end
        def to_hash
        end

        module RangeType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BETWEEN =
            T.let(
              :BETWEEN,
              HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
            )
          NOT_BETWEEN =
            T.let(
              :NOT_BETWEEN,
              HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
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
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE_RANGED_TIMESTAMP_REFINE_BY =
            T.let(
              :AbsoluteRangedTimestampRefineBy,
              HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
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
