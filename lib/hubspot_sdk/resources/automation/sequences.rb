# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Sequences
        # @return [HubspotSDK::Resources::Automation::Sequences::Enrollments]
        attr_reader :enrollments

        # Retrieve a list of sequences that belong to a specific user.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::CollectionResponseWithTotalPublicSequenceLiteResponseForwardPaging]
        #
        # @see HubspotSDK::Models::Automation::SequenceListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "automation/v4/sequences/",
            model: HubspotSDK::Automation::CollectionResponseWithTotalPublicSequenceLiteResponseForwardPaging,
            options: params[:request_options]
          )
        end

        # Retrieve details of a specific sequence by its ID.
        #
        # @overload get(sequence_id, request_options: {})
        #
        # @param sequence_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::PublicSequenceResponse]
        #
        # @see HubspotSDK::Models::Automation::SequenceGetParams
        def get(sequence_id, params = {})
          @client.request(
            method: :get,
            path: ["automation/v4/sequences/%1$s", sequence_id],
            model: HubspotSDK::Automation::PublicSequenceResponse,
            options: params[:request_options]
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
