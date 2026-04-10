# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          class MultiLanguage
            # Attach a blog to a multi-language group.
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

            # Create a new language variation from an existing blog.
            sig do
              params(
                id: String,
                language: String,
                primary_language: String,
                slug: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(HubSpotSDK::Cms::Blogs::Blog)
            end
            def create_language_variation(
              # ID of blog to clone.
              id:,
              # Target language of new variant.
              language: nil,
              # Language of primary blog to clone.
              primary_language: nil,
              # Path to this blog.
              slug: nil,
              request_options: {}
            )
            end

            # Detaches a blog from a multi-language group.
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

            # Set a blog as the primary language of a multi-language group.
            sig do
              params(
                id: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def set_new_lang_primary(
              # ID of object to set as primary in multi-language group.
              id:,
              request_options: {}
            )
            end

            # Explicitly set new languages for each blog in a multi-language group.
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
            def update_languages(
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
