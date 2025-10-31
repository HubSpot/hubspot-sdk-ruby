# typed: strong

module HubspotSDK
  module Models
    class PublicInListFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicInListFilter, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(HubspotSDK::PublicInListFilter::FilterType::OrSymbol) }
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :list_id

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T.nilable(HubspotSDK::PublicInListFilterMetadata)) }
      attr_reader :metadata

      sig do
        params(metadata: HubspotSDK::PublicInListFilterMetadata::OrHash).void
      end
      attr_writer :metadata

      sig do
        params(
          filter_type: HubspotSDK::PublicInListFilter::FilterType::OrSymbol,
          list_id: String,
          operator: String,
          metadata: HubspotSDK::PublicInListFilterMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(filter_type:, list_id:, operator:, metadata: nil)
      end

      sig do
        override.returns(
          {
            filter_type: HubspotSDK::PublicInListFilter::FilterType::OrSymbol,
            list_id: String,
            operator: String,
            metadata: HubspotSDK::PublicInListFilterMetadata
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicInListFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IN_LIST =
          T.let(
            :IN_LIST,
            HubspotSDK::PublicInListFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicInListFilter::FilterType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
