# typed: strong

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        class Batch
          # Checks whether a set of contacts have opted out of all communications.
          sig do
            params(
              channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
              inputs: T::Array[String],
              business_unit_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse
            )
          end
          def get_unsubscribe_all_statuses(
            # Query param: The communication channel to filter the unsubscribe statuses. This
            # parameter is required and currently supports 'EMAIL' as a valid value.
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param: The ID of the business unit to filter the results. This is an
            # optional parameter.
            business_unit_id: nil,
            request_options: {}
          )
          end

          # Batch retrieve subscription statuses for a set of contacts.
          sig do
            params(
              channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
              inputs: T::Array[String],
              business_unit_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatusBulkResponse
            )
          end
          def read(
            # Query param: The communication channel to filter the subscription statuses. Must
            # be 'EMAIL'.
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param: An optional integer representing the business unit ID. This
            # parameter helps to filter the results based on the specific business unit.
            business_unit_id: nil,
            request_options: {}
          )
          end

          # Unsubscribe a set of contacts from all email subscriptions.
          sig do
            params(
              channel: HubSpotSDK::BatchInputString::Channel::OrSymbol,
              inputs: T::Array[String],
              business_unit_id: Integer,
              verbose: T::Boolean,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse
            )
          end
          def unsubscribe_all(
            # Query param: The communication channel from which subscribers will be
            # unsubscribed. This parameter is required and currently supports only 'EMAIL'.
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param: An optional integer representing the business unit ID for which the
            # operation is being performed.
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
                  HubSpotSDK::CommunicationPreferences::PublicStatusRequest::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus
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
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
