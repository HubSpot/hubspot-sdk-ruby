# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Sequences
        class Enrollments
          # Enroll a contact into a sequence using the specified user ID and sequence
          # details.
          #
          # @overload enroll(user_id:, contact_id:, sender_email:, sequence_id:, sender_alias_address: nil, request_options: {})
          #
          # @param user_id [String] Query param:
          #
          # @param contact_id [String] Body param:
          #
          # @param sender_email [String] Body param:
          #
          # @param sequence_id [String] Body param:
          #
          # @param sender_alias_address [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicSequenceEnrollmentLiteResponse]
          #
          # @see HubspotSDK::Models::Automation::Sequences::EnrollmentEnrollParams
          def enroll(params)
            parsed, options = HubspotSDK::Automation::Sequences::EnrollmentEnrollParams.dump_request(params)
            query_params = [:user_id]
            @client.request(
              method: :post,
              path: "automation/v4/sequences/enrollments",
              query: parsed.slice(*query_params).transform_keys(user_id: "userId"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Automation::PublicSequenceEnrollmentLiteResponse,
              options: options
            )
          end

          # Get the enrollment status of a contact in sequences by their contact ID.
          #
          # @overload get_by_contact_id(contact_id, request_options: {})
          #
          # @param contact_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Automation::PublicSequenceEnrollmentResponse]
          #
          # @see HubspotSDK::Models::Automation::Sequences::EnrollmentGetByContactIDParams
          def get_by_contact_id(contact_id, params = {})
            @client.request(
              method: :get,
              path: ["automation/v4/sequences/enrollments/contact/%1$s", contact_id],
              model: HubspotSDK::Automation::PublicSequenceEnrollmentResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
