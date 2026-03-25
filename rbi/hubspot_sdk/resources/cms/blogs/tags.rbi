# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          sig do
            params(
              id: String,
              created: Time,
              deleted_at: Time,
              language: HubspotSDK::Cms::Blogs::Tag::Language::OrSymbol,
              name: String,
              slug: String,
              translated_from_id: Integer,
              updated: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def create(
            # The unique ID of the Blog Tag.
            id:,
            # The timestamp (ISO8601 format) when this Blog Tag was created.
            created:,
            # The timestamp (ISO8601 format) when this Blog Tag was deleted.
            deleted_at:,
            # The explicitly defined ISO 639 language code of the tag.
            language:,
            # The name of the tag.
            name:,
            slug:,
            # ID of the primary tag this object was translated from.
            translated_from_id:,
            # The timestamp (ISO8601 format) when this Blog Tag was updated.
            updated:,
            request_options: {}
          )
          end

          sig do
            params(
              object_id_: String,
              id: String,
              created: Time,
              deleted_at: Time,
              language: HubspotSDK::Cms::Blogs::Tag::Language::OrSymbol,
              name: String,
              slug: String,
              translated_from_id: Integer,
              updated: Time,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def update(
            # Path param
            object_id_,
            # Body param: The unique ID of the Blog Tag.
            id:,
            # Body param: The timestamp (ISO8601 format) when this Blog Tag was created.
            created:,
            # Body param: The timestamp (ISO8601 format) when this Blog Tag was deleted.
            deleted_at:,
            # Body param: The explicitly defined ISO 639 language code of the tag.
            language:,
            # Body param: The name of the tag.
            name:,
            # Body param
            slug:,
            # Body param: ID of the primary tag this object was translated from.
            translated_from_id:,
            # Body param: The timestamp (ISO8601 format) when this Blog Tag was updated.
            updated:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
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
              inputs: T::Array[HubspotSDK::Cms::Blogs::Tag::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def create_batch(
            # Blog tags to input.
            inputs:,
            request_options: {}
          )
          end

          sig do
            params(
              id: String,
              name: String,
              language: String,
              primary_language: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
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
              inputs: T::Array[String],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def get_batch(
            # Body param: Strings to input.
            inputs:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

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

          sig do
            params(
              inputs: T::Array[T.anything],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def update_batch(
            # Body param: JSON nodes to input.
            inputs:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
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
