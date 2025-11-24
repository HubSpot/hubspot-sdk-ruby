# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          # @return [HubspotSDK::Resources::Crm::Associations::V4::Batch]
          attr_reader :batch

          # @return [HubspotSDK::Resources::Crm::Associations::V4::Report]
          attr_reader :report

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Crm::Associations::V4::Batch.new(client: client)
            @report = HubspotSDK::Resources::Crm::Associations::V4::Report.new(client: client)
          end
        end
      end
    end
  end
end
