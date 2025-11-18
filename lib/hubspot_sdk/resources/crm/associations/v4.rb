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

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Associations::V4MergeParams} for more details.
          #
          # Merge two CRM objects of the specified type into one.
          #
          # @overload merge(object_type, object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_type [String] Specifies the type of CRM object to merge.
          #
          # @param object_id_to_merge [String] The unique identifier of the CRM object that will be merged into the primary obj
          #
          # @param primary_object_id [String] The unique identifier of the CRM object that will remain after the merge.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Associations::V4MergeParams
          def merge(object_type, params)
            parsed, options = HubspotSDK::Crm::Associations::V4MergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/v4/objects/%1$s/merge", object_type],
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

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
