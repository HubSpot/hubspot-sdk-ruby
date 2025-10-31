# typed: strong

module HubspotSDK
  module Models
    class PublicAllHistoryRefineBy < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAllHistoryRefineBy,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(HubspotSDK::PublicAllHistoryRefineBy::Type::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          type: HubspotSDK::PublicAllHistoryRefineBy::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(type:)
      end

      sig do
        override.returns(
          { type: HubspotSDK::PublicAllHistoryRefineBy::Type::OrSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicAllHistoryRefineBy::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL_HISTORY =
          T.let(
            :ALL_HISTORY,
            HubspotSDK::PublicAllHistoryRefineBy::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicAllHistoryRefineBy::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
