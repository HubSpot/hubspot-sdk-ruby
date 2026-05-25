# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Journal
        class Batch
          # Execute a batch read operation on the webhooks journal for the specified date,
          # 2026-03. This endpoint allows you to retrieve multiple entries from the webhooks
          # journal in a single request, which can be useful for processing large amounts of
          # data efficiently. Ensure that the request body is provided in the required
          # format.
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
            # Query param: An integer representing the ID of the portal installation for which
            # the webhooks journal data should be retrieved.
            install_portal_id: nil,
            request_options: {}
          )
          end

          # Retrieve the earliest batch of webhook journal entries for a specified count.
          # This endpoint is useful for accessing historical webhook data in batches,
          # allowing you to process or analyze older entries. The number of entries
          # retrieved is determined by the count parameter.
          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
          end
          def get_earliest(
            # The number of earliest journal entries to retrieve. This must be an integer with
            # a minimum value of 1.
            count,
            # The ID of the portal installation. This is an integer value that specifies which
            # portal's data to access.
            install_portal_id: nil,
            request_options: {}
          )
          end

          # Retrieve a batch of webhook journal entries starting from a specified offset.
          # This endpoint allows you to fetch a defined number of entries, which can be
          # useful for processing large datasets in manageable chunks.
          sig do
            params(
              count: Integer,
              offset: String,
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
          end
          def get_from_offset(
            # Path param: The number of journal entries to retrieve. This must be an integer
            # with a minimum value of 1.
            count,
            # Path param: The starting point for fetching the journal entries. This is a
            # string value.
            offset:,
            # Query param: The ID of the portal installation. This is an integer value.
            install_portal_id: nil,
            request_options: {}
          )
          end

          # Retrieve the latest batch of webhook journal entries up to the specified count.
          # This endpoint is useful for fetching recent webhook data for analysis or
          # processing. The count parameter determines the maximum number of entries to
          # return.
          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
          end
          def get_latest(
            # The maximum number of journal entries to retrieve. This is a required integer
            # parameter with a minimum value of 1.
            count,
            # The ID of the portal installation. This is an integer value used to specify the
            # portal context for the request.
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
