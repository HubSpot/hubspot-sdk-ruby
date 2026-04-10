# typed: strong

module HubSpotSDK
  module Models
    module Events
      class AbsoluteRangedTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :lower_timestamp

        sig do
          returns(
            HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
          )
        end
        attr_accessor :range_type

        sig do
          returns(
            HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(Integer) }
        attr_accessor :upper_timestamp

        sig do
          params(
            lower_timestamp: Integer,
            range_type:
              HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::OrSymbol,
            type:
              HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::OrSymbol,
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
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol,
              type:
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol,
              upper_timestamp: Integer
            }
          )
        end
        def to_hash
        end

        module RangeType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BETWEEN =
            T.let(
              :BETWEEN,
              HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
            )
          NOT_BETWEEN =
            T.let(
              :NOT_BETWEEN,
              HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::RangeType::TaggedSymbol
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
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE_RANGED_TIMESTAMP_REFINE_BY =
            T.let(
              :AbsoluteRangedTimestampRefineBy,
              HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::AbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
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
