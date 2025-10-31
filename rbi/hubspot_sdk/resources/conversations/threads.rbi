# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Threads
        # Updates a single thread. Either a thread's status can be updated, or the thread
        # can be restored.
        sig do
          params(
            thread_id: String,
            archived: T::Boolean,
            status:
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicThread)
        end
        def update(
          thread_id,
          # Whether this thread is archived. Set to false to restore the thread.
          archived: nil,
          # The thread's status: `OPEN` or `CLOSED`.
          status: nil,
          request_options: {}
        )
        end

        # Retrieve a list of threads, with optional filters and sorting.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Conversations::CollectionResponsePublicThreadForwardPaging
          )
        end
        def list(request_options: {})
        end

        # Archives a single thread. The thread will be permanently deleted 30 days after
        # placed in an archived state.
        sig do
          params(
            thread_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(thread_id, request_options: {})
        end

        # Retrieve a single thread by its ID
        sig do
          params(
            thread_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicThread)
        end
        def get(thread_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
