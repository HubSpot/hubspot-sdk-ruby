# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          class MultiLanguage
            # Attach a blog post to a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
            sig do
              params(
                id: String,
                language:
                  HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
                primary_id: String,
                primary_language:
                  HubSpotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def attach_to_lang_group(
              # ID of the object to add to a multi-language group.
              id:,
              # Designated language of the object to add to a multi-language group.
              language:,
              # ID of primary language object in multi-language group.
              primary_id:,
              # Primary language of the multi-language group.
              primary_language: nil,
              request_options: {}
            )
            end

            # Create a new language variation from an existing blog post
            sig do
              params(
                id: String,
                language: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def create_lang_variation(
              # ID of blog post to clone.
              id:,
              # Target language of new variant.
              language: nil,
              request_options: {}
            )
            end

            # Detach a blog post from a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
            sig do
              params(
                id: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def detach_from_lang_group(
              # ID of the object to remove from a multi-language group.
              id:,
              request_options: {}
            )
            end

            # Set the primary language of a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content)
            # to the language of the provided post (specified as an ID in the request body)
            sig do
              params(
                id: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def set_lang_primary(
              # ID of object to set as primary in multi-language group.
              id:,
              request_options: {}
            )
            end

            # Explicitly set new languages for each post in a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
            sig do
              params(
                languages:
                  T::Hash[
                    Symbol,
                    HubSpotSDK::Cms::UpdateLanguagesRequestVNext::Language::OrSymbol
                  ],
                primary_id: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def update_langs(
              # Map of object IDs to associated languages of object in the multi-language group.
              languages:,
              # ID of the primary object in the multi-language group.
              primary_id:,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
