# typed: strong

module HubspotSDK
  module Models
    class PublicNumOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicNumOccurrencesRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(HubspotSDK::PublicNumOccurrencesRefineBy::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(Integer)) }
      attr_reader :max_occurrences

      sig { params(max_occurrences: Integer).void }
      attr_writer :max_occurrences

      sig { returns(T.nilable(Integer)) }
      attr_reader :min_occurrences

      sig { params(min_occurrences: Integer).void }
      attr_writer :min_occurrences

      sig do
        params(
          type: HubspotSDK::PublicNumOccurrencesRefineBy::Type::OrSymbol,
          max_occurrences: Integer,
          min_occurrences: Integer
        ).returns(T.attached_class)
      end
      def self.new(type:, max_occurrences: nil, min_occurrences: nil)
      end

      sig do
        override.returns(
          {
            type: HubspotSDK::PublicNumOccurrencesRefineBy::Type::OrSymbol,
            max_occurrences: Integer,
            min_occurrences: Integer
          }
        )
      end
      def to_hash
      end

      module Type
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicNumOccurrencesRefineBy::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUM_OCCURRENCES =
          T.let(
            :NUM_OCCURRENCES,
            HubspotSDK::PublicNumOccurrencesRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicNumOccurrencesRefineBy::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
