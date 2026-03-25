# typed: strong

module HubspotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        class Batch
          # Retrieve the unsubscribe-all status for a batch of subscribers in a specified
          # channel. This endpoint is useful for checking the current unsubscribe-all status
          # of multiple subscribers at once, helping to manage and audit communication
          # preferences efficiently.
          sig do
            params(
              channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
              inputs: T::Array[String],
              business_unit_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse
            )
          end
          def get_unsubscribe_all_statuses(
            # Query param: The communication channel to check the unsubscribe-all status for.
            # Currently, only 'EMAIL' is supported. This parameter is required.
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param: The ID of the business unit for which the statuses are being
            # retrieved. This is an optional parameter.
            business_unit_id: nil,
            request_options: {}
          )
          end

          # Retrieve the subscription statuses for multiple subscribers in a batch
          # operation. This endpoint allows you to check the communication preferences of
          # several subscribers at once, which is useful for managing large lists of
          # contacts efficiently.
          sig do
            params(
              channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
              inputs: T::Array[String],
              business_unit_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse
            )
          end
          def read(
            # Query param: The communication channel to filter by. This parameter is required
            # and currently only supports 'EMAIL'.
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param: An optional identifier for the business unit. This is an integer
            # value.
            business_unit_id: nil,
            request_options: {}
          )
          end

          # Unsubscribe a set of contacts from all email subscriptions.
          sig do
            params(
              channel: HubspotSDK::BatchInputString::Channel::OrSymbol,
              inputs: T::Array[String],
              business_unit_id: Integer,
              verbose: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse
            )
          end
          def unsubscribe_all(
            # Query param: A required string specifying the communication channel. Currently,
            # only 'EMAIL' is supported.
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param: The ID of the business unit to which the operation applies. It is
            # an optional parameter.
            business_unit_id: nil,
            # Query param: A boolean indicating whether to include detailed information in the
            # response. Defaults to false.
            verbose: nil,
            request_options: {}
          )
          end

          # Update the subscription status for a set of contacts.
          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::CommunicationPreferences::PublicStatusRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::CommunicationPreferences::BatchResponsePublicStatus
            )
          end
          def update_statuses(
            # An array of PublicStatusRequest objects, each representing a subscription status
            # update request. This property is required.
            inputs:,
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
