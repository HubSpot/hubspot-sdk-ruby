# typed: strong

module HubSpotSDK
  module Resources
    class Automation
      class Sequences
        # Retrieve a list of sequences available in your HubSpot account. This endpoint
        # allows you to filter sequences by user ID and name, and supports pagination for
        # large result sets. Use this endpoint to manage and review your sequences
        # effectively.
        sig do
          params(
            user_id: String,
            after: String,
            limit: Integer,
            name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[
              HubSpotSDK::Automation::PublicSequenceLiteResponse
            ]
          )
        end
        def list(
          user_id:,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          request_options: {}
        )
        end

        # Enroll a contact into a sequence using the specified user ID and sequence
        # details.
        sig do
          params(
            user_id: String,
            contact_id: String,
            sender_email: String,
            sequence_id: String,
            sender_alias_address: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Automation::PublicSequenceEnrollmentLiteResponse
          )
        end
        def create_enrollment(
          # Query param
          user_id:,
          # Body param: The unique identifier of the contact to be enrolled in the sequence.
          contact_id:,
          # Body param: The email address of the sender enrolling the contact in the
          # sequence.
          sender_email:,
          # Body param: The unique identifier of the sequence in which the contact will be
          # enrolled.
          sequence_id:,
          # Body param: The alias email address used by the sender when enrolling the
          # contact.
          sender_alias_address: nil,
          request_options: {}
        )
        end

        # Retrieve details of a specific sequence by its ID.
        sig do
          params(
            sequence_id: String,
            user_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Automation::PublicSequenceResponse)
        end
        def get(sequence_id, user_id:, request_options: {})
        end

        # Get the enrollment status of a contact in sequences by their contact ID.
        sig do
          params(
            contact_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Automation::PublicSequenceEnrollmentResponse)
        end
        def get_enrollment_by_contact_id(contact_id, request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
