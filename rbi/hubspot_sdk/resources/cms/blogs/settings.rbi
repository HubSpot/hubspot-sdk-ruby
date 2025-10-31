# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          # Get the list of Blogs. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
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
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return archived Blogs. Defaults to `false`.
            archived: nil,
            # Only return Blogs created after the specified time.
            created_after: nil,
            # Only return Blogs created at exactly the specified time.
            created_at: nil,
            # Only return Blogs created before the specified time.
            created_before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name` and
            # `id`
            sort: nil,
            # Only return Blogs last updated after the specified time.
            updated_after: nil,
            # Only return Blogs last updated at exactly the specified time.
            updated_at: nil,
            # Only return Blogs last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Attach a blog to a multi-language group.
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

          # Create a new language variation from an existing blog
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

          # Detach a blog from a multi-language group.
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

          # Retrieve the Blog object identified by the id in the path.
          sig do
            params(
              blog_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::Blog)
          end
          def get(
            # The Blog id.
            blog_id,
            request_options: {}
          )
          end

          # Retrieves a previous version of a Blog
          sig do
            params(
              revision_id: String,
              blog_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::VersionBlog)
          end
          def get_revision(
            # The Blog version id.
            revision_id,
            # The Blog id.
            blog_id:,
            request_options: {}
          )
          end

          # Retrieves all the previous versions of a Blog
          sig do
            params(
              blog_id: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Cms::Blogs::CollectionResponseWithTotalVersionBlog
            )
          end
          def list_revisions(
            # The Blog id.
            blog_id,
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            request_options: {}
          )
          end

          # Set a blog as the primary language of a multi-language group.
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

          # Explicitly set new languages for each blog in a multi-language group.
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
