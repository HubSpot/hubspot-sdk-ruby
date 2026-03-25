# typed: strong

module HubspotSDK
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Automation::PublicSequenceLiteResponse
            ]
          )
        end
        def list(
          # The unique identifier of the user whose sequences are to be retrieved. This
          # parameter is required.
          user_id:,
          # The paging cursor token of the last successfully read resource. Use this for
          # pagination to retrieve the next set of results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # The name of the sequence to filter results by.
          name: nil,
          request_options: {}
        )
        end

        # Enroll a contact into a sequence using the specified sequence ID and sender
        # email. This endpoint requires the user ID to be provided as a query parameter
        # and a valid JSON body with the necessary enrollment details. It is used to
        # automate the process of enrolling contacts into predefined sequences for
        # streamlined communication.
        sig do
          params(
            user_id: String,
            contact_id: String,
            sender_email: String,
            sequence_id: String,
            sender_alias_address: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Automation::PublicSequenceEnrollmentLiteResponse
          )
        end
        def create_enrollment(
          # Query param: The unique identifier of the user performing the enrollment. This
          # parameter is required.
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

        # Retrieve details of a specific sequence in your HubSpot account using the
        # sequence ID. This endpoint requires the user ID to be specified and provides
        # comprehensive information about the sequence, including its steps and
        # dependencies.
        sig do
          params(
            sequence_id: String,
            user_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicSequenceResponse)
        end
        def get(
          # The unique identifier of the sequence to retrieve.
          sequence_id,
          # The unique identifier of the user requesting the sequence details. This
          # parameter is required.
          user_id:,
          request_options: {}
        )
        end

        # Retrieve the sequence enrollment details for a specific contact in your HubSpot
        # account. This endpoint provides information about the sequence a contact is
        # enrolled in, including enrollment timestamps and the sequence's name. It is
        # useful for tracking the progress and status of a contact within a sequence.
        sig do
          params(
            contact_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::PublicSequenceEnrollmentResponse)
        end
        def get_enrollment_by_contact_id(
          # The unique identifier of the contact whose sequence enrollment details are being
          # retrieved.
          contact_id,
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
