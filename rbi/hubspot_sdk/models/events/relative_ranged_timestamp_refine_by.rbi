# typed: strong

module HubSpotSDK
  module Models
    module Events
      class RelativeRangedTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::RelativeRangedTimestampRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Events::TimeOffset) }
        attr_reader :lower_bound_offset

        sig do
          params(
            lower_bound_offset: HubSpotSDK::Events::TimeOffset::OrHash
          ).void
        end
        attr_writer :lower_bound_offset

        sig do
          returns(
            HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
          )
        end
        attr_accessor :range_type

        sig do
          returns(
            HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(HubSpotSDK::Events::TimeOffset) }
        attr_reader :upper_bound_offset

        sig do
          params(
            upper_bound_offset: HubSpotSDK::Events::TimeOffset::OrHash
          ).void
        end
        attr_writer :upper_bound_offset

        sig do
          params(
            lower_bound_offset: HubSpotSDK::Events::TimeOffset::OrHash,
            range_type:
              HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::OrSymbol,
            type:
              HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type::OrSymbol,
            upper_bound_offset: HubSpotSDK::Events::TimeOffset::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          lower_bound_offset:,
          range_type:,
          type:,
          upper_bound_offset:
        )
        end

        sig do
          override.returns(
            {
              lower_bound_offset: HubSpotSDK::Events::TimeOffset,
              range_type:
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol,
              type:
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol,
              upper_bound_offset: HubSpotSDK::Events::TimeOffset
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
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BETWEEN =
            T.let(
              :BETWEEN,
              HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
            )
          NOT_BETWEEN =
            T.let(
              :NOT_BETWEEN,
              HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
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
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_RANGED_TIMESTAMP_REFINE_BY =
            T.let(
              :RelativeRangedTimestampRefineBy,
              HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol
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
