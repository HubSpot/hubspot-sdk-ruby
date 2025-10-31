# typed: strong

module HubspotSDK
  module Models
    class PublicSetOccurrencesRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicSetOccurrencesRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :set_type

      sig { returns(HubspotSDK::PublicSetOccurrencesRefineBy::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          set_type: String,
          type: HubspotSDK::PublicSetOccurrencesRefineBy::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(set_type:, type:)
      end

      sig do
        override.returns(
          {
            set_type: String,
            type: HubspotSDK::PublicSetOccurrencesRefineBy::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicSetOccurrencesRefineBy::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SET_OCCURRENCES =
          T.let(
            :SET_OCCURRENCES,
            HubspotSDK::PublicSetOccurrencesRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicSetOccurrencesRefineBy::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
