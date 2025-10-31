# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          # Create a new Blog Tag.
          sig do
            params(
              id: String,
              created: Time,
              deleted_at: Time,
              language: HubspotSDK::Cms::Blogs::Tag::Language::OrSymbol,
              name: String,
              translated_from_id: Integer,
              updated: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::Tag)
          end
          def create(
            # The unique ID of the Blog Tag.
            id:,
            created:,
            # The timestamp (ISO8601 format) when this Blog Tag was deleted.
            deleted_at:,
            # The explicitly defined ISO 639 language code of the tag.
            language:,
            # The name of the tag.
            name:,
            # ID of the primary tag this object was translated from.
            translated_from_id:,
            updated:,
            request_options: {}
          )
          end

          # Sparse updates a single Blog Tag object identified by the id in the path. All
          # the column values need not be specified. Only the that need to be modified can
          # be specified.
          sig do
            params(
              object_id_: String,
              id: String,
              created: Time,
              deleted_at: Time,
              language: HubspotSDK::Cms::Blogs::Tag::Language::OrSymbol,
              name: String,
              translated_from_id: Integer,
              updated: Time,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::Tag)
          end
          def update(
            # Path param: The Blog Tag id.
            object_id_,
            # Body param: The unique ID of the Blog Tag.
            id:,
            # Body param:
            created:,
            # Body param: The timestamp (ISO8601 format) when this Blog Tag was deleted.
            deleted_at:,
            # Body param: The explicitly defined ISO 639 language code of the tag.
            language:,
            # Body param: The name of the tag.
            name:,
            # Body param: ID of the primary tag this object was translated from.
            translated_from_id:,
            # Body param:
            updated:,
            # Query param: Specifies whether to update deleted Blog Tags. Defaults to `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Get the list of blog tags. Supports paging and filtering. This method would be
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
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::Blogs::Tag])
          end
          def list(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return deleted Blog Tags. Defaults to `false`.
            archived: nil,
            # Only return Blog Tags created after the specified time.
            created_after: nil,
            # Only return Blog Tags created at exactly the specified time.
            created_at: nil,
            # Only return Blog Tags created before the specified time.
            created_before: nil,
            # The maximum number of results to return. Default is 100.
            limit: nil,
            property: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return Blog Tags last updated after the specified time.
            updated_after: nil,
            # Only return Blog Tags last updated at exactly the specified time.
            updated_at: nil,
            # Only return Blog Tags last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Delete the Blog Tag object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The Blog Tag id.
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Attach a Blog Tag to a multi-language group.
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

          # Create the Blog Tag objects detailed in the request body.
          sig do
            params(
              inputs: T::Array[HubspotSDK::Cms::Blogs::Tag::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BatchResponseTag)
          end
          def create_batch(
            # Blog tags to input.
            inputs:,
            request_options: {}
          )
          end

          # Create a new language variation from an existing Blog Tag
          sig do
            params(
              id: String,
              name: String,
              language: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::Tag)
          end
          def create_lang_variation(
            # ID of the object to be cloned.
            id:,
            # Name of newly cloned blog tag.
            name:,
            # Target language of new variant.
            language: nil,
            # Language of primary blog tag to clone.
            primary_language: nil,
            request_options: {}
          )
          end

          # Delete the Blog Tag objects identified in the request body.
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

          # Detach a Blog Tag from a multi-language group.
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

          # Retrieve the Blog Tag object identified by the id in the path.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::Tag)
          end
          def get(
            # The Blog Tag id.
            object_id_,
            # Specifies whether to return deleted Blog Tags. Defaults to `false`.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          # Retrieve the Blog Tag objects identified in the request body.
          sig do
            params(
              inputs: T::Array[String],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BatchResponseTag)
          end
          def get_batch(
            # Body param: Strings to input.
            inputs:,
            # Query param: Specifies whether to return deleted Blog Tags. Defaults to `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Set a Blog Tag as the primary language of a multi-language group.
          sig do
            params(
              id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def set_lang_primary(
            # ID of object to set as primary in multi-language group.
            id:,
            request_options: {}
          )
          end

          # Update the Blog Tag objects identified in the request body.
          sig do
            params(
              inputs: T::Array[T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::Blogs::BatchResponseTag)
          end
          def update_batch(
            # Body param: JSON nodes to input.
            inputs:,
            # Query param: Specifies whether to update deleted Blog Tags. Defaults to `false`.
            archived: nil,
            request_options: {}
          )
          end

          # Explicitly set new languages for each Blog Tag in a multi-language group.
          sig do
            params(
              languages: T::Hash[Symbol, String],
              primary_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
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
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
