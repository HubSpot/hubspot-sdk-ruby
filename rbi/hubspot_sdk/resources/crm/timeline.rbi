# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Timeline
        sig { returns(HubSpotSDK::Resources::Crm::Timeline::Batch) }
        attr_reader :batch

        # Send a single instance of event data to a specified event type.
        sig do
          params(
            id: String,
            event_type_name: String,
            properties: T::Hash[Symbol, String],
            domain: String,
            email: String,
            extra_data: T.anything,
            object_id_: String,
            object_type_fully_qualified_name: String,
            timeline_i_frame: HubSpotSDK::Crm::TimelineEventIFrame::OrHash,
            timestamp: Time,
            utk: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def create_event(
          id:,
          event_type_name:,
          properties:,
          domain: nil,
          email: nil,
          extra_data: nil,
          object_id_: nil,
          object_type_fully_qualified_name: nil,
          timeline_i_frame: nil,
          timestamp: nil,
          utk: nil,
          request_options: {}
        )
        end

        sig do
          params(
            developer_symbol: String,
            project_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::AppEventResolutionResponse)
        end
        def create_project_type(
          developer_symbol:,
          project_name:,
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
