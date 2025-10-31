# typed: strong

module HubspotSDK
  module Models
    class PublicRelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :comparison

      sig { returns(HubspotSDK::PublicTimeOffset) }
      attr_reader :time_offset

      sig { params(time_offset: HubspotSDK::PublicTimeOffset::OrHash).void }
      attr_writer :time_offset

      sig do
        returns(
          HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          comparison: String,
          time_offset: HubspotSDK::PublicTimeOffset::OrHash,
          type:
            HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(comparison:, time_offset:, type:)
      end

      sig do
        override.returns(
          {
            comparison: String,
            time_offset: HubspotSDK::PublicTimeOffset,
            type:
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
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
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELATIVE_COMPARATIVE =
          T.let(
            :RELATIVE_COMPARATIVE,
            HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
