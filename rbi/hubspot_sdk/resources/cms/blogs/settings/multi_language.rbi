# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          class MultiLanguage
            sig do
              params(
                id: String,
                language:
                  HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::Language::OrSymbol,
                primary_id: String,
                primary_language:
                  HubspotSDK::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage::OrSymbol,
                request_options: HubspotSDK::RequestOptions::OrHash
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

            sig do
              params(
                id: String,
                language: String,
                primary_language: String,
                slug: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::Blogs::Blog)
            end
            def create_language_variation(
              id:,
              language: nil,
              primary_language: nil,
              slug: nil,
              request_options: {}
            )
            end

            sig do
              params(
                id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def detach_from_lang_group(
              # ID of the object to remove from a multi-language group.
              id:,
              request_options: {}
            )
            end

            sig do
              params(
                id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def set_new_lang_primary(
              # ID of object to set as primary in multi-language group.
              id:,
              request_options: {}
            )
            end

            sig do
              params(
                languages:
                  T::Hash[
                    Symbol,
                    HubspotSDK::Cms::UpdateLanguagesRequestVNext::Language::OrSymbol
                  ],
                primary_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
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
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
