# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SiteSearchGetIndexedDataParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or
        # `KNOWLEDGE_ARTICLE`.
        sig do
          returns(
            T.nilable(
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            type:
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or
          # `KNOWLEDGE_ARTICLE`.
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              type:
                HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::OrSymbol,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or
        # `KNOWLEDGE_ARTICLE`.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDING_PAGE =
            T.let(
              :LANDING_PAGE,
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::TaggedSymbol
            )
          BLOG_POST =
            T.let(
              :BLOG_POST,
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::TaggedSymbol
            )
          SITE_PAGE =
            T.let(
              :SITE_PAGE,
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::TaggedSymbol
            )
          KNOWLEDGE_ARTICLE =
            T.let(
              :KNOWLEDGE_ARTICLE,
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::TaggedSymbol
            )
          LISTING_PAGE =
            T.let(
              :LISTING_PAGE,
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::TaggedSymbol
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
