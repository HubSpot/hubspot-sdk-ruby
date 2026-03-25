# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Authors
          class Batch
            sig do
              params(
                inputs: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor::OrHash],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(StringIO)
            end
            def create(
              # Blog authors to input.
              inputs:,
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
            def update(
              # Body param: JSON nodes to input.
              inputs:,
              # Query param: Whether to return only results that have been archived.
              archived: nil,
              request_options: {}
            )
            end

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

            sig do
              params(
                inputs: T::Array[String],
                archived: T::Boolean,
                request_options: HubspotSDK::RequestOptions::OrHash
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
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
