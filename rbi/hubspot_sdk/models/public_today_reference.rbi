# typed: strong

module HubspotSDK
  module Models
    class PublicTodayReference < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicTodayReference, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(HubspotSDK::PublicTodayReference::ReferenceType::OrSymbol) }
      attr_accessor :reference_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :hour

      sig { params(hour: Integer).void }
      attr_writer :hour

      sig { returns(T.nilable(Integer)) }
      attr_reader :millisecond

      sig { params(millisecond: Integer).void }
      attr_writer :millisecond

      sig { returns(T.nilable(Integer)) }
      attr_reader :minute

      sig { params(minute: Integer).void }
      attr_writer :minute

      sig { returns(T.nilable(Integer)) }
      attr_reader :second

      sig { params(second: Integer).void }
      attr_writer :second

      sig do
        params(
          reference_type:
            HubspotSDK::PublicTodayReference::ReferenceType::OrSymbol,
          hour: Integer,
          millisecond: Integer,
          minute: Integer,
          second: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        reference_type:,
        hour: nil,
        millisecond: nil,
        minute: nil,
        second: nil
      )
      end

      sig do
        override.returns(
          {
            reference_type:
              HubspotSDK::PublicTodayReference::ReferenceType::OrSymbol,
            hour: Integer,
            millisecond: Integer,
            minute: Integer,
            second: Integer
          }
        )
      end
      def to_hash
      end

      module ReferenceType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicTodayReference::ReferenceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TODAY =
          T.let(
            :TODAY,
            HubspotSDK::PublicTodayReference::ReferenceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicTodayReference::ReferenceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
