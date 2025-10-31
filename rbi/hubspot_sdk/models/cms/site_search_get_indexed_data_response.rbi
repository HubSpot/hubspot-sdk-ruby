# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SiteSearchGetIndexedDataResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID of the document in HubSpot.
        sig { returns(String) }
        attr_accessor :id

        # The indexed fields in HubSpot.
        sig do
          returns(
            T::Hash[
              Symbol,
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field
            ]
          )
        end
        attr_accessor :fields

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        sig do
          returns(
            HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # The indexed data in HubSpot
        sig do
          params(
            id: String,
            fields:
              T::Hash[
                Symbol,
                HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field::OrHash
              ],
            type:
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::OrSymbol
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
              fields:
                T::Hash[
                  Symbol,
                  HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field
                ],
              type:
                HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Field < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Field,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :metadata_field

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.anything) }
          attr_accessor :value

          sig { returns(T::Array[T.anything]) }
          attr_accessor :values

          sig do
            params(
              metadata_field: T::Boolean,
              name: String,
              value: T.anything,
              values: T::Array[T.anything]
            ).returns(T.attached_class)
          end
          def self.new(metadata_field:, name:, value:, values:)
          end

          sig do
            override.returns(
              {
                metadata_field: T::Boolean,
                name: String,
                value: T.anything,
                values: T::Array[T.anything]
              }
            )
          end
          def to_hash
          end
        end

        # The type of document. Can be `SITE_PAGE`, `LANDING_PAGE`, `BLOG_POST`,
        # `LISTING_PAGE`, or `KNOWLEDGE_ARTICLE`.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
