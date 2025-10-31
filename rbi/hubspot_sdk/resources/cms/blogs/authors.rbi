# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Authors
          # Create a new Blog Author.
          sig do
            params(
              id: String,
              avatar: String,
              bio: String,
              created: Time,
              deleted_at: Time,
              display_name: String,
              email: String,
              facebook: String,
              full_name: String,
              language: HubspotSDK::Cms::Blogs::BlogAuthor::Language::OrSymbol,
              linkedin: String,
              name: String,
              slug: String,
              translated_from_id: Integer,
              twitter: String,
              updated: Time,
              website: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogAuthor)
          end
          def create(
            # The unique ID of the Blog Author.
            id:,
            # URL to the blog author's avatar, if supplying a custom one.
            avatar:,
            # A short biography of the blog author.
            bio:,
            created:,
            # The timestamp (ISO8601 format) when this Blog Author was deleted.
            deleted_at:,
            # The full name of the Blog Author to be displayed.
            display_name:,
            # Email address of the Blog Author.
            email:,
            # URL to the Blog Author's Facebook page.
            facebook:,
            full_name:,
            # The explicitly defined ISO 639 language code of the blog author.
            language:,
            # URL to the blog author's LinkedIn page.
            linkedin:,
            name:,
            slug:,
            # ID of the primary blog author this object was translated from.
            translated_from_id:,
            # URL or username of the Twitter account associated with the Blog Author. This
            # will be normalized into the Twitter url for said user.
            twitter:,
            updated:,
            # URL to the website of the Blog Author.
            website:,
            request_options: {}
          )
          end

          # Sparse updates a single Blog Author object identified by the id in the path. All
          # the column values need not be specified. Only the that need to be modified can
          # be specified.
          sig do
            params(
              object_id_: String,
              id: String,
              avatar: String,
              bio: String,
              created: Time,
              deleted_at: Time,
              display_name: String,
              email: String,
              facebook: String,
              full_name: String,
              language: HubspotSDK::Cms::Blogs::BlogAuthor::Language::OrSymbol,
              linkedin: String,
              name: String,
              slug: String,
              translated_from_id: Integer,
              twitter: String,
              updated: Time,
              website: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogAuthor)
          end
          def update(
            # Path param: The Blog Author id.
            object_id_,
            # Body param: The unique ID of the Blog Author.
            id:,
            # Body param: URL to the blog author's avatar, if supplying a custom one.
            avatar:,
            # Body param: A short biography of the blog author.
            bio:,
            # Body param:
            created:,
            # Body param: The timestamp (ISO8601 format) when this Blog Author was deleted.
            deleted_at:,
            # Body param: The full name of the Blog Author to be displayed.
            display_name:,
            # Body param: Email address of the Blog Author.
            email:,
            # Body param: URL to the Blog Author's Facebook page.
            facebook:,
            # Body param:
            full_name:,
            # Body param: The explicitly defined ISO 639 language code of the blog author.
            language:,
            # Body param: URL to the blog author's LinkedIn page.
            linkedin:,
            # Body param:
            name:,
            # Body param:
            slug:,
            # Body param: ID of the primary blog author this object was translated from.
            translated_from_id:,
            # Body param: URL or username of the Twitter account associated with the Blog
            # Author. This will be normalized into the Twitter url for said user.
            twitter:,
            # Body param:
            updated:,
            # Body param: URL to the website of the Blog Author.
            website:,
            # Query param: Specifies whether to update deleted Blog Authors. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Get the list of blog authors. Supports paging and filtering. This method would
          # be useful for an integration that examined these models and used an external
          # service to suggest edits.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::Cms::Blogs::BlogAuthor]
            )
          end
          def list(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return deleted Blog Authors. Defaults to `false`.
            archived: nil,
            # Only return Blog Authors created after the specified time.
            created_after: nil,
            # Only return Blog Authors created at exactly the specified time.
            created_at: nil,
            # Only return Blog Authors created before the specified time.
            created_before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            property: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return Blog Authors last updated after the specified time.
            updated_after: nil,
            # Only return Blog Authors last updated at exactly the specified time.
            updated_at: nil,
            # Only return Blog Authors last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Delete the Blog Author object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The Blog Author id.
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Attach a Blog Author to a multi-language group.
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

          # Create the Blog Author objects detailed in the request body.
          sig do
            params(
              inputs: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor)
          end
          def create_batch(
            # Blog authors to input.
            inputs:,
            request_options: {}
          )
          end

          # Create a new language variation from an existing Blog Author.
          sig do
            params(
              id: String,
              blog_author: HubspotSDK::Cms::Blogs::BlogAuthor::OrHash,
              language: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogAuthor)
          end
          def create_language_variation(
            # ID of the object to be cloned.
            id:,
            # Model definition for a Blog Author.
            blog_author:,
            # Language of newly cloned object.
            language: nil,
            # Primary language in multi-language group.
            primary_language: nil,
            request_options: {}
          )
          end

          # Delete the Blog Author objects identified in the request body.
          sig do
            params(
              inputs: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_batch(
            # Strings to input.
            inputs:,
            request_options: {}
          )
          end

          # Detach a Blog Author from a multi-language group.
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

          # Retrieve the Blog Author object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BlogAuthor)
          end
          def get(
            # The Blog Author id.
            object_id_,
            # Specifies whether to return deleted Blog Authors. Defaults to `false`.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          # Retrieve the Blog Author objects identified in the request body.
          sig do
            params(
              inputs: T::Array[String],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor)
          end
          def get_batch(
            # Body param: Strings to input.
            inputs:,
            # Query param: Specifies whether to return deleted Blog Authors. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Set a Blog Author as the primary language of a multi-language group.
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

          # Update the Blog Author objects identified in the request body.
          sig do
            params(
              inputs: T::Array[T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor)
          end
          def update_batch(
            # Body param: JSON nodes to input.
            inputs:,
            # Query param: Specifies whether to update deleted Blog Authors. Defaults to
            # `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Explicitly set new languages for each Blog Author in a multi-language group.
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
