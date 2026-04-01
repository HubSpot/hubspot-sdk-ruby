# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      class Webhooks
        class Batch
          sig do
            params(
              inputs: T::Array[String],
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get(
            # Body param: Strings to input.
            inputs:,
            # Query param
            install_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_earliest(count, install_portal_id: nil, request_options: {})
          end

          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_latest(count, install_portal_id: nil, request_options: {})
          end

          sig do
            params(
              inputs: T::Array[String],
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_local(
            # Body param: Strings to input.
            inputs:,
            # Query param
            install_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_local_earliest(
            count,
            install_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              count: Integer,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_local_latest(
            count,
            install_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              count: Integer,
              offset: String,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_local_next(
            # Path param
            count,
            # Path param
            offset:,
            # Query param
            install_portal_id: nil,
            request_options: {}
          )
          end

          sig do
            params(
              count: Integer,
              offset: String,
              install_portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseJournalFetchResponse)
          end
          def get_next(
            # Path param
            count,
            # Path param
            offset:,
            # Query param
            install_portal_id: nil,
            request_options: {}
          )
          end

          # Batch create event subscriptions for the specified app.
          sig do
            params(
              app_id: Integer,
              inputs:
                T::Array[
                  HubspotSDK::Webhooks::SubscriptionBatchUpdateRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Webhooks::BatchResponseSubscriptionResponse)
          end
          def update_subscriptions(app_id, inputs:, request_options: {})
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
