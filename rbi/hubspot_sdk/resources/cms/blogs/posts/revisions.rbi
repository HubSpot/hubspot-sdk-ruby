# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          class Revisions
            # Retrieve a previous version of a blog post.
            sig do
              params(
                revision_id: String,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def get_previous_version(
              revision_id,
              object_id_:,
              request_options: {}
            )
            end

            # Retrieve all the previous versions of a blog post.
            sig do
              params(
                object_id_: String,
                after: String,
                before: String,
                limit: Integer,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def get_previous_versions(
              object_id_,
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

            # Restores a blog post to one of its previous versions.
            sig do
              params(
                revision_id: String,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def restore_previous_version(
              revision_id,
              object_id_:,
              request_options: {}
            )
            end

            # Takes a specified version of a blog post, sets it as the new draft version of
            # the blog post.
            sig do
              params(
                revision_id: Integer,
                object_id_: String,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def restore_previous_version_to_draft(
              revision_id,
              object_id_:,
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
