# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          sig do
            returns(HubspotSDK::Resources::Cms::Blogs::Settings::MultiLanguage)
          end
          attr_reader :multi_language

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
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
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
            ).returns(HubspotSDK::Cms::Blogs::BlogVersion)
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
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            before: nil,
            # The maximum number of results to display per page.
            limit: nil,
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
