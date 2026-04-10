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
            # Query param
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param
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
            # Query param
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param
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
            # Query param
            channel:,
            # Body param: Strings to input.
            inputs:,
            # Query param
            business_unit_id: nil,
            # Query param
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
