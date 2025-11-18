# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Sequences
        # @return [HubspotSDK::Resources::Automation::Sequences::Enrollments]
        attr_reader :enrollments

        # Retrieve a list of sequences that belong to a specific user.
        #
        # @overload list(user_id:, after: nil, limit: nil, name: nil, request_options: {})
        #
        # @param user_id [String]
        # @param after [String]
        # @param limit [Integer]
        # @param name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Automation::PublicSequenceLiteResponse>]
        #
        # @see HubspotSDK::Models::Automation::SequenceListParams
        def list(params)
          parsed, options = HubspotSDK::Automation::SequenceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "automation/v4/sequences/",
            query: parsed.transform_keys(user_id: "userId"),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Automation::PublicSequenceLiteResponse,
            options: options
          )
        end

        # Retrieve details of a specific sequence by its ID.
        #
        # @overload get(sequence_id, user_id:, request_options: {})
        #
        # @param sequence_id [String]
        # @param user_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicSequenceResponse]
        #
        # @see HubspotSDK::Models::Automation::SequenceGetParams
        def get(sequence_id, params)
          parsed, options = HubspotSDK::Automation::SequenceGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["automation/v4/sequences/%1$s", sequence_id],
            query: parsed.transform_keys(user_id: "userId"),
            model: HubspotSDK::Automation::PublicSequenceResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @enrollments = HubspotSDK::Resources::Automation::Sequences::Enrollments.new(client: client)
        end
      end
    end
  end
end
