# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Authors
          sig { returns(HubspotSDK::Resources::Cms::Blogs::Authors::Batch) }
          attr_reader :batch

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
            ).returns(StringIO)
          end
          def create(
            # The unique ID of the Blog Author.
            id:,
            # URL to the blog author's avatar, if supplying a custom one.
            avatar:,
            # A short biography of the blog author.
            bio:,
            # The timestamp (ISO8601 format) when this Blog Author was created.
            created:,
            # The timestamp (ISO8601 format) when this Blog Author was deleted.
            deleted_at:,
            # The full name of the Blog Author to be displayed.
            display_name:,
            # Email address of the Blog Author.
            email:,
            # URL to the Blog Author's Facebook page.
            facebook:,
            # The full, unabbreviated name of the blog author, typically their first and last
            # name combined.
            full_name:,
            # The explicitly defined ISO 639 language code of the blog author.
            language:,
            # URL to the blog author's LinkedIn page.
            linkedin:,
            # The name field for the blog author. (This appears to be a shorter or alternative
            # name field compared to fullName.)
            name:,
            # A URL-friendly identifier for the blog author that can be used to reference the
            # author in URLs. Typically generated from the author's name and contains
            # lowercase letters, hyphens, and underscores.
            slug:,
            # ID of the primary blog author this object was translated from.
            translated_from_id:,
            # URL or username of the Twitter account associated with the Blog Author. This
            # will be normalized into the Twitter url for said user.
            twitter:,
            # The timestamp (ISO8601 format) when this Blog Author was updated.
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
            ).returns(StringIO)
          end
          def update(
            # Path param
            object_id_,
            # Body param: The unique ID of the Blog Author.
            id:,
            # Body param: URL to the blog author's avatar, if supplying a custom one.
            avatar:,
            # Body param: A short biography of the blog author.
            bio:,
            # Body param: The timestamp (ISO8601 format) when this Blog Author was created.
            created:,
            # Body param: The timestamp (ISO8601 format) when this Blog Author was deleted.
            deleted_at:,
            # Body param: The full name of the Blog Author to be displayed.
            display_name:,
            # Body param: Email address of the Blog Author.
            email:,
            # Body param: URL to the Blog Author's Facebook page.
            facebook:,
            # Body param: The full, unabbreviated name of the blog author, typically their
            # first and last name combined.
            full_name:,
            # Body param: The explicitly defined ISO 639 language code of the blog author.
            language:,
            # Body param: URL to the blog author's LinkedIn page.
            linkedin:,
            # Body param: The name field for the blog author. (This appears to be a shorter or
            # alternative name field compared to fullName.)
            name:,
            # Body param: A URL-friendly identifier for the blog author that can be used to
            # reference the author in URLs. Typically generated from the author's name and
            # contains lowercase letters, hyphens, and underscores.
            slug:,
            # Body param: ID of the primary blog author this object was translated from.
            translated_from_id:,
            # Body param: URL or username of the Twitter account associated with the Blog
            # Author. This will be normalized into the Twitter url for said user.
            twitter:,
            # Body param: The timestamp (ISO8601 format) when this Blog Author was updated.
            updated:,
            # Body param: URL to the website of the Blog Author.
            website:,
            # Query param: Whether to return only results that have been archived.
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
            ).returns(StringIO)
          end
          def list(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
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

          # Create a new language variation from an existing Blog Author.
          sig do
            params(
              id: String,
              blog_author: HubspotSDK::Cms::Blogs::BlogAuthor::OrHash,
              language: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def create_language_variation(
            # ID of the object to be cloned.
            id:,
            blog_author:,
            # Language of newly cloned object.
            language: nil,
            # Primary language in multi-language group.
            primary_language: nil,
            request_options: {}
          )
          end

          # Detach a Blog Author from a multi-language group.
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

          # Retrieve the Blog Author object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def get(
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

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
            ).returns(StringIO)
          end
          def get_cursor(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

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
            ).returns(StringIO)
          end
          def get_cursor_by_query(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

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
            ).returns(StringIO)
          end
          def get_posts_cursor(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

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
            ).returns(StringIO)
          end
          def get_posts_cursor_by_query(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

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
            ).returns(StringIO)
          end
          def get_tags_cursor(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

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
            ).returns(StringIO)
          end
          def get_tags_cursor_by_query(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
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

          # Explicitly set new languages for each Blog Author in a multi-language group.
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
