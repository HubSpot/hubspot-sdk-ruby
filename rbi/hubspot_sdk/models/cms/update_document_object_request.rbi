# typed: strong

module HubspotSDK
  module Models
    module Cms
      class UpdateDocumentObjectRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::UpdateDocumentObjectRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::UpdateDocumentObjectRequest::MediaType::OrSymbol
          )
        end
        attr_accessor :media_type

        sig { returns(T.nilable(String)) }
        attr_reader :details_page_link

        sig { params(details_page_link: String).void }
        attr_writer :details_page_link

        sig { returns(T.nilable(Integer)) }
        attr_reader :duration

        sig { params(duration: Integer).void }
        attr_writer :duration

        sig { returns(T.nilable(String)) }
        attr_reader :external_id

        sig { params(external_id: String).void }
        attr_writer :external_id

        sig { returns(T.nilable(String)) }
        attr_reader :file_url

        sig { params(file_url: String).void }
        attr_writer :file_url

        sig { returns(T.nilable(String)) }
        attr_reader :oembed_url

        sig { params(oembed_url: String).void }
        attr_writer :oembed_url

        sig { returns(T.nilable(String)) }
        attr_reader :poster_url

        sig { params(poster_url: String).void }
        attr_writer :poster_url

        sig { returns(T.nilable(String)) }
        attr_reader :thumbnail_url

        sig { params(thumbnail_url: String).void }
        attr_writer :thumbnail_url

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(
            media_type:
              HubspotSDK::Cms::UpdateDocumentObjectRequest::MediaType::OrSymbol,
            details_page_link: String,
            duration: Integer,
            external_id: String,
            file_url: String,
            oembed_url: String,
            poster_url: String,
            thumbnail_url: String,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          media_type:,
          details_page_link: nil,
          duration: nil,
          external_id: nil,
          file_url: nil,
          oembed_url: nil,
          poster_url: nil,
          thumbnail_url: nil,
          title: nil
        )
        end

        sig do
          override.returns(
            {
              media_type:
                HubspotSDK::Cms::UpdateDocumentObjectRequest::MediaType::OrSymbol,
              details_page_link: String,
              duration: Integer,
              external_id: String,
              file_url: String,
              oembed_url: String,
              poster_url: String,
              thumbnail_url: String,
              title: String
            }
          )
        end
        def to_hash
        end

        module MediaType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::UpdateDocumentObjectRequest::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DOCUMENT =
            T.let(
              :DOCUMENT,
              HubspotSDK::Cms::UpdateDocumentObjectRequest::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::UpdateDocumentObjectRequest::MediaType::TaggedSymbol
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
