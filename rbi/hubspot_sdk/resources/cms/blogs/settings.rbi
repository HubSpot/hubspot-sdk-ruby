# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::Blogs::Blog])
          end
          def list(
            after: nil,
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            limit: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              language: String,
              primary_id: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
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

          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def detach_from_lang_group(
            # ID of the object to remove from a multi-language group.
            id:,
            request_options: {}
          )
          end

          sig do
            params(
              blog_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::Blog)
          end
          def get(blog_id, request_options: {})
          end

          sig do
            params(
              revision_id: String,
              blog_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::VersionBlog)
          end
          def get_revision(revision_id, blog_id:, request_options: {})
          end

          sig do
            params(
              blog_id: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::Cms::Blogs::VersionBlog]
            )
          end
          def list_revisions(
            blog_id,
            after: nil,
            before: nil,
            limit: nil,
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
              languages: T::Hash[Symbol, String],
              primary_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
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
