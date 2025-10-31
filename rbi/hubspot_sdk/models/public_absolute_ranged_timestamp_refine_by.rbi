# typed: strong

module HubspotSDK
  module Models
    class PublicAbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :lower_timestamp

      sig { returns(String) }
      attr_accessor :range_type

      sig do
        returns(
          HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig { returns(Integer) }
      attr_accessor :upper_timestamp

      sig do
        params(
          lower_timestamp: Integer,
          range_type: String,
          type:
            HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type::OrSymbol,
          upper_timestamp: Integer
        ).returns(T.attached_class)
      end
      def self.new(lower_timestamp:, range_type:, type:, upper_timestamp:)
      end

      sig do
        override.returns(
          {
            lower_timestamp: Integer,
            range_type: String,
            type:
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type::OrSymbol,
            upper_timestamp: Integer
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
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABSOLUTE_RANGED =
          T.let(
            :ABSOLUTE_RANGED,
            HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
