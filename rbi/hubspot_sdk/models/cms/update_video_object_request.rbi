# typed: strong

module HubspotSDK
  module Models
    module Cms
      class UpdateVideoObjectRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::UpdateVideoObjectRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType::OrSymbol
          )
        end
        attr_accessor :media_type

        sig { returns(T.nilable(String)) }
        attr_reader :bearer_token

        sig { params(bearer_token: String).void }
        attr_writer :bearer_token

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

        sig { returns(T.nilable(String)) }
        attr_reader :transcript_url

        sig { params(transcript_url: String).void }
        attr_writer :transcript_url

        sig do
          params(
            media_type:
              HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType::OrSymbol,
            bearer_token: String,
            details_page_link: String,
            duration: Integer,
            external_id: String,
            file_url: String,
            oembed_url: String,
            poster_url: String,
            thumbnail_url: String,
            title: String,
            transcript_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          media_type:,
          bearer_token: nil,
          details_page_link: nil,
          duration: nil,
          external_id: nil,
          file_url: nil,
          oembed_url: nil,
          poster_url: nil,
          thumbnail_url: nil,
          title: nil,
          transcript_url: nil
        )
        end

        sig do
          override.returns(
            {
              media_type:
                HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType::OrSymbol,
              bearer_token: String,
              details_page_link: String,
              duration: Integer,
              external_id: String,
              file_url: String,
              oembed_url: String,
              poster_url: String,
              thumbnail_url: String,
              title: String,
              transcript_url: String
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
                HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VIDEO =
            T.let(
              :VIDEO,
              HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::UpdateVideoObjectRequest::MediaType::TaggedSymbol
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
