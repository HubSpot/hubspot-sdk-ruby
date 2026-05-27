# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class JournalLocal
        class Batch
          # Execute a batch read operation on the webhooks journal. This endpoint allows you
          # to retrieve a batch of webhook journal entries by providing the necessary input
          # data. It is useful for processing multiple records in a single request,
          # streamlining data retrieval tasks.
          sig do
            params(
              inputs: T::Array[String],
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
          end
          def get(
            # Body param: Strings to input.
            inputs:,
            # Query param: The ID of the portal where the webhooks are installed. This
            # parameter is optional and is used to specify the target portal for the
            # operation.
            install_portal_id: nil,
            request_options: {}
          )
          end

          # Retrieve the earliest batch of webhook journal entries. This endpoint is useful
          # for accessing the oldest available data in the webhook journal, allowing users
          # to process or analyze historical webhook events. The number of entries to fetch
          # is specified by the 'count' path parameter.
          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
          end
          def get_earliest(
            # The number of earliest webhook journal entries to retrieve. This is a required
            # integer parameter with a minimum value of 1.
            count,
            # The ID of the portal installation to filter the webhook journal entries. This is
            # an optional integer parameter.
            install_portal_id: nil,
            request_options: {}
          )
          end

          # Retrieve a batch of webhook journal entries starting from a specified offset.
          # This endpoint is useful for paginating through large sets of webhook data. The
          # number of entries returned is determined by the 'count' parameter.
          sig do
            params(
              count: Integer,
              offset: String,
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
          end
          def get_from_offset(
            # Path param: The number of journal entries to retrieve in this batch. Must be an
            # integer with a minimum value of 1.
            count,
            # Path param: The starting point for the batch retrieval, specified as a string.
            offset:,
            # Query param: The ID of the portal where the webhooks are installed. This is an
            # optional parameter.
            install_portal_id: nil,
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
