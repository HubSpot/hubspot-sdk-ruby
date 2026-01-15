# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Sequences
        class Enrollments
          # Enroll a contact into a sequence using the specified user ID and sequence
          # details.
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
          def enroll(
            # Query param
            user_id:,
            # Body param
            contact_id:,
            # Body param
            sender_email:,
            # Body param
            sequence_id:,
            # Body param
            sender_alias_address: nil,
            request_options: {}
          )
          end

          # Get the enrollment status of a contact in sequences by their contact ID.
          sig do
            params(
              contact_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Automation::PublicSequenceEnrollmentResponse)
          end
          def get_by_contact_id(contact_id, request_options: {})
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
