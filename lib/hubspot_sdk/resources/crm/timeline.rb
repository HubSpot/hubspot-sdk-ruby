# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Timeline
        # @return [HubSpotSDK::Resources::Crm::Timeline::Batch]
        attr_reader :batch

        # Send a single instance of event data to a specified event type.
        #
        # @overload create_event(id:, event_type_name:, properties:, domain: nil, email: nil, extra_data: nil, object_id_: nil, object_type_fully_qualified_name: nil, timeline_i_frame: nil, timestamp: nil, utk: nil, request_options: {})
        #
        # @param id [String]
        # @param event_type_name [String]
        # @param properties [Hash{Symbol=>String}]
        # @param domain [String]
        # @param email [String]
        # @param extra_data [Object]
        # @param object_id_ [String]
        # @param object_type_fully_qualified_name [String]
        # @param timeline_i_frame [HubSpotSDK::Models::Crm::TimelineEventIFrame]
        # @param timestamp [Time]
        # @param utk [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Crm::TimelineCreateEventParams
        def create_event(params)
          parsed, options = HubSpotSDK::Crm::TimelineCreateEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "integrators/timeline/2026-03/events",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @overload create_project_type(developer_symbol:, project_name:, request_options: {})
        #
        # @param developer_symbol [String]
        # @param project_name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Crm::AppEventResolutionResponse]
        #
        # @see HubSpotSDK::Models::Crm::TimelineCreateProjectTypeParams
        def create_project_type(params)
          parsed, options = HubSpotSDK::Crm::TimelineCreateProjectTypeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "integrators/timeline/2026-03/types/projects",
            body: parsed,
            model: HubSpotSDK::Crm::AppEventResolutionResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::Crm::Timeline::Batch.new(client: client)
        end
      end
    end
  end
end
