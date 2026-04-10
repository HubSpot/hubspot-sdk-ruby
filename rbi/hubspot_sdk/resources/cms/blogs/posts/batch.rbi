# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          class Batch
            # Create a batch of blog posts, specifying their content in the request body.
            sig do
              params(
                inputs: T::Array[HubSpotSDK::Cms::Blogs::BlogPost::OrHash],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def create(
              # Blog posts to input.
              inputs:,
              request_options: {}
            )
            end

            # Update a batch of blog posts.
            sig do
              params(
                inputs: T::Array[T.anything],
                archived: T::Boolean,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def update(
              # Body param: JSON nodes to input.
              inputs:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
              request_options: {}
            )
            end

            # Delete a blog post by ID. Note: This is not the same as the in-app `archive`
            # function. To perform a dashboard `archive` send an normal update with the
            # `archivedInDashboard` field set to `true`.
            sig do
              params(
                inputs: T::Array[String],
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(
              # Strings to input.
              inputs:,
              request_options: {}
            )
            end

            # Retrieve a batch of blog posts by ID. identified in the request body.
            sig do
              params(
                inputs: T::Array[String],
                archived: T::Boolean,
                request_options: HubSpotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def get(
              # Body param: Strings to input.
              inputs:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
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
