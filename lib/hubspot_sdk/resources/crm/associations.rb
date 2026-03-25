# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        # @return [HubspotSDK::Resources::Crm::Associations::Batch]
        attr_reader :batch

        # @overload delete_associations(to_object_id, object_type:, object_id_:, to_object_type:, request_options: {})
        #
        # @param to_object_id [String]
        # @param object_type [String]
        # @param object_id_ [String]
        # @param to_object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Crm::AssociationDeleteAssociationsParams
        def delete_associations(to_object_id, params)
          parsed, options = HubspotSDK::Crm::AssociationDeleteAssociationsParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          to_object_type =
            parsed.delete(:to_object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "crm/objects/2026-03/%1$s/%2$s/associations/%3$s/%4$s",
              object_type,
              object_id_,
              to_object_type,
              to_object_id
            ],
            model: NilClass,
            options: options
          )
        end

        # Requests a report of all objects in the portal which have a high usage of
        # associations
        #
        # @overload request_high_usage_report(user_id, request_options: {})
        #
        # @param user_id [Integer] The user for the report
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::ReportCreationResponse]
        #
        # @see HubspotSDK::Models::Crm::AssociationRequestHighUsageReportParams
        def request_high_usage_report(user_id, params = {})
          @client.request(
            method: :post,
            path: ["crm/associations/2026-03/usage/high-usage-report/%1$s", user_id],
            model: HubspotSDK::Crm::ReportCreationResponse,
            options: params[:request_options]
          )
        end

        # @overload update_association_labels(to_object_id, object_type:, object_id_:, to_object_type:, body:, request_options: {})
        #
        # @param to_object_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param object_id_ [String] Path param
        #
        # @param to_object_type [String] Path param
        #
        # @param body [Array<HubspotSDK::Models::AssociationSpec>] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Crm::LabelsBetweenObjectPair]
        #
        # @see HubspotSDK::Models::Crm::AssociationUpdateAssociationLabelsParams
        def update_association_labels(to_object_id, params)
          parsed, options = HubspotSDK::Crm::AssociationUpdateAssociationLabelsParams.dump_request(params)
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_id_ =
            parsed.delete(:object_id_) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          to_object_type =
            parsed.delete(:to_object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: [
              "crm/objects/2026-03/%1$s/%2$s/associations/%3$s/%4$s",
              object_type,
              object_id_,
              to_object_type,
              to_object_id
            ],
            body: parsed[:body],
            model: HubspotSDK::Crm::LabelsBetweenObjectPair,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::Associations::Batch.new(client: client)
        end
      end
    end
  end
end
