# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IndexedData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::IndexedData, HubspotSDK::Internal::AnyHash)
          end

        # The ID of the document in HubSpot.
        sig { returns(String) }
        attr_accessor :id

        # The indexed fields in HubSpot.
        sig { returns(T::Hash[Symbol, HubspotSDK::Cms::IndexedField]) }
        attr_accessor :fields

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        sig { returns(HubspotSDK::Cms::IndexedData::Type::TaggedSymbol) }
        attr_accessor :type

        # The indexed data in HubSpot
        sig do
          params(
            id: String,
            fields: T::Hash[Symbol, HubspotSDK::Cms::IndexedField::OrHash],
            type: HubspotSDK::Cms::IndexedData::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the document in HubSpot.
          id:,
          # The indexed fields in HubSpot.
          fields:,
          # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
          # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              fields: T::Hash[Symbol, HubspotSDK::Cms::IndexedField],
              type: HubspotSDK::Cms::IndexedData::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Cms::IndexedData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLOG_POST =
            T.let(:BLOG_POST, HubspotSDK::Cms::IndexedData::Type::TaggedSymbol)
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Cms::IndexedData::Type::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Cms::IndexedData::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubspotSDK::Cms::IndexedData::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(:SITE_PAGE, HubspotSDK::Cms::IndexedData::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::IndexedData::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
