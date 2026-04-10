# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class IndexedData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::IndexedData, HubSpotSDK::Internal::AnyHash)
          end

        # The ID of the document in HubSpot.
        sig { returns(String) }
        attr_accessor :id

        # The indexed fields in HubSpot.
        sig { returns(T::Hash[Symbol, HubSpotSDK::Cms::IndexedField]) }
        attr_accessor :fields

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        sig { returns(HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol) }
        attr_accessor :type

        sig do
          params(
            id: String,
            fields: T::Hash[Symbol, HubSpotSDK::Cms::IndexedField::OrHash],
            type: HubSpotSDK::Cms::IndexedData::Type::OrSymbol
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
              fields: T::Hash[Symbol, HubSpotSDK::Cms::IndexedField],
              type: HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubSpotSDK::Cms::IndexedData::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLOG_POST =
            T.let(:BLOG_POST, HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol)
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol
            )
          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(:SITE_PAGE, HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol)
          STRUCTURED_CONTENT =
            T.let(
              :STRUCTURED_CONTENT,
              HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::IndexedData::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
