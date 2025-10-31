# typed: strong

module HubspotSDK
  module Models
    module Events
      class RelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::RelativeRangedTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Events::TimeOffset) }
        attr_reader :lower_bound_offset

        sig do
          params(
            lower_bound_offset: HubspotSDK::Events::TimeOffset::OrHash
          ).void
        end
        attr_writer :lower_bound_offset

        sig do
          returns(
            HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
          )
        end
        attr_accessor :range_type

        sig do
          returns(
            HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(HubspotSDK::Events::TimeOffset) }
        attr_reader :upper_bound_offset

        sig do
          params(
            upper_bound_offset: HubspotSDK::Events::TimeOffset::OrHash
          ).void
        end
        attr_writer :upper_bound_offset

        sig do
          params(
            lower_bound_offset: HubspotSDK::Events::TimeOffset::OrHash,
            range_type:
              HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::OrSymbol,
            type:
              HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type::OrSymbol,
            upper_bound_offset: HubspotSDK::Events::TimeOffset::OrHash
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
              lower_bound_offset: HubspotSDK::Events::TimeOffset,
              range_type:
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol,
              type:
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol,
              upper_bound_offset: HubspotSDK::Events::TimeOffset
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
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BETWEEN =
            T.let(
              :BETWEEN,
              HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
            )
          NOT_BETWEEN =
            T.let(
              :NOT_BETWEEN,
              HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::RangeType::TaggedSymbol
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
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_RANGED_TIMESTAMP_REFINE_BY =
            T.let(
              :RelativeRangedTimestampRefineBy,
              HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Events::RelativeRangedTimestampRefineBy::Type::TaggedSymbol
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
