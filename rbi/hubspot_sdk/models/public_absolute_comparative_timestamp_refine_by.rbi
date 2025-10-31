# typed: strong

module HubspotSDK
  module Models
    class PublicAbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :comparison

      sig { returns(Integer) }
      attr_accessor :timestamp

      sig do
        returns(
          HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          comparison: String,
          timestamp: Integer,
          type:
            HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(comparison:, timestamp:, type:)
      end

      sig do
        override.returns(
          {
            comparison: String,
            timestamp: Integer,
            type:
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type::OrSymbol
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
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABSOLUTE_COMPARATIVE =
          T.let(
            :ABSOLUTE_COMPARATIVE,
            HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
