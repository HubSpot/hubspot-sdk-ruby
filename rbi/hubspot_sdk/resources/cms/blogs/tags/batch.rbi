# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          class Batch
            # Delete the Blog Tag objects identified in the request body.
            sig do
              params(
                inputs: T::Array[String],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(
              # Strings to input.
              inputs:,
              request_options: {}
            )
            end

            # Create the Blog Tag objects detailed in the request body.
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

            # Retrieve the Blog Tag objects identified in the request body.
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

            # Update the Blog Tag objects identified in the request body.
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
