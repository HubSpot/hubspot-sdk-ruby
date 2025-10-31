# typed: strong

module HubspotSDK
  module Models
    class PublicRelativeRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRelativeRangedTimestampRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(HubspotSDK::PublicTimeOffset) }
      attr_reader :lower_bound_offset

      sig do
        params(lower_bound_offset: HubspotSDK::PublicTimeOffset::OrHash).void
      end
      attr_writer :lower_bound_offset

      sig { returns(String) }
      attr_accessor :range_type

      sig do
        returns(
          HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig { returns(HubspotSDK::PublicTimeOffset) }
      attr_reader :upper_bound_offset

      sig do
        params(upper_bound_offset: HubspotSDK::PublicTimeOffset::OrHash).void
      end
      attr_writer :upper_bound_offset

      sig do
        params(
          lower_bound_offset: HubspotSDK::PublicTimeOffset::OrHash,
          range_type: String,
          type:
            HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type::OrSymbol,
          upper_bound_offset: HubspotSDK::PublicTimeOffset::OrHash
        ).returns(T.attached_class)
      end
      def self.new(lower_bound_offset:, range_type:, type:, upper_bound_offset:)
      end

      sig do
        override.returns(
          {
            lower_bound_offset: HubspotSDK::PublicTimeOffset,
            range_type: String,
            type:
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type::OrSymbol,
            upper_bound_offset: HubspotSDK::PublicTimeOffset
          }
        )
      end
      def to_hash
      end

      module Type
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELATIVE_RANGED =
          T.let(
            :RELATIVE_RANGED,
            HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
