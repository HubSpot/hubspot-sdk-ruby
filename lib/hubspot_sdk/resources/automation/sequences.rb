# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Automation
      class Sequences
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Automation::SequenceListParams} for more details.
        #
        # Retrieve a list of sequences available in your HubSpot account. This endpoint
        # allows you to filter sequences by user ID and name, and supports pagination for
        # large result sets. Use this endpoint to manage and review your sequences
        # effectively.
        #
        # @overload list(user_id:, after: nil, limit: nil, name: nil, request_options: {})
        #
        # @param user_id [String]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param name [String]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Automation::PublicSequenceLiteResponse>]
        #
        # @see HubSpotSDK::Models::Automation::SequenceListParams
        def list(params)
          parsed, options = HubSpotSDK::Automation::SequenceListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "automation/sequences/2026-03",
            query: query.transform_keys(user_id: "userId"),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Automation::PublicSequenceLiteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Automation::SequenceCreateEnrollmentParams} for more
        # details.
        #
        # Enroll a contact into a sequence using the specified user ID and sequence
        # details.
        #
        # @overload create_enrollment(user_id:, contact_id:, sender_email:, sequence_id:, sender_alias_address: nil, request_options: {})
        #
        # @param user_id [String] Query param
        #
        # @param contact_id [String] Body param: The unique identifier of the contact to be enrolled in the sequence.
        #
        # @param sender_email [String] Body param: The email address of the sender enrolling the contact in the sequenc
        #
        # @param sequence_id [String] Body param: The unique identifier of the sequence in which the contact will be e
        #
        # @param sender_alias_address [String] Body param: The alias email address used by the sender when enrolling the contac
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Automation::PublicSequenceEnrollmentLiteResponse]
        #
        # @see HubSpotSDK::Models::Automation::SequenceCreateEnrollmentParams
        def create_enrollment(params)
          query_params = [:user_id]
          parsed, options = HubSpotSDK::Automation::SequenceCreateEnrollmentParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :post,
            path: "automation/sequences/2026-03/enrollments",
            query: query.transform_keys(user_id: "userId"),
            body: parsed.except(*query_params),
            model: HubSpotSDK::Automation::PublicSequenceEnrollmentLiteResponse,
            options: options
          )
        end

        # Retrieve details of a specific sequence by its ID.
        #
        # @overload get(sequence_id, user_id:, request_options: {})
        #
        # @param sequence_id [String]
        # @param user_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Automation::PublicSequenceResponse]
        #
        # @see HubSpotSDK::Models::Automation::SequenceGetParams
        def get(sequence_id, params)
          parsed, options = HubSpotSDK::Automation::SequenceGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["automation/sequences/2026-03/%1$s", sequence_id],
            query: query.transform_keys(user_id: "userId"),
            model: HubSpotSDK::Automation::PublicSequenceResponse,
            options: options
          )
        end

        # Get the enrollment status of a contact in sequences by their contact ID.
        #
        # @overload get_enrollment_by_contact_id(contact_id, request_options: {})
        #
        # @param contact_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Automation::PublicSequenceEnrollmentResponse]
        #
        # @see HubSpotSDK::Models::Automation::SequenceGetEnrollmentByContactIDParams
        def get_enrollment_by_contact_id(contact_id, params = {})
          @client.request(
            method: :get,
            path: ["automation/sequences/2026-03/enrollments/contact/%1$s", contact_id],
            model: HubSpotSDK::Automation::PublicSequenceEnrollmentResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
