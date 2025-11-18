# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          class Report
            # Requests a report of all objects in the portal which have a high usage of
            # associations
            #
            # @overload request_high_usage_report(user_id, request_options: {})
            #
            # @param user_id [Integer] The user for the report
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Associations::ReportCreationResponse]
            #
            # @see HubspotSDK::Models::Crm::Associations::V4::ReportRequestHighUsageReportParams
            def request_high_usage_report(user_id, params = {})
              @client.request(
                method: :post,
                path: ["crm/v4/associations/usage/high-usage-report/%1$s", user_id],
                model: HubspotSDK::Crm::Associations::ReportCreationResponse,
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
end
