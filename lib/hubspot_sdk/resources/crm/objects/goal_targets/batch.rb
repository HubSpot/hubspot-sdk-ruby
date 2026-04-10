# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class GoalTargets
          class Batch
            # Create multiple goal targets in a single batch operation.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GoalTargets::BatchCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Crm::Objects::GoalTargets::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/goal_targets/batch/create",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Update multiple goal targets in a single batch operation using their internal
            # IDs or unique property values.
            #
            # @overload update(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInput>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GoalTargets::BatchUpdateParams
            def update(params)
              parsed, options = HubSpotSDK::Crm::Objects::GoalTargets::BatchUpdateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/goal_targets/batch/update",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Archive multiple goal targets in a single batch operation using their IDs.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GoalTargets::BatchDeleteParams
            def delete(params)
              parsed, options = HubSpotSDK::Crm::Objects::GoalTargets::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/goal_targets/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Objects::GoalTargets::BatchGetParams} for more
            # details.
            #
            # Retrieve records by record ID or include the `idProperty` parameter to retrieve
            # records by a custom unique value property.
            #
            # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectID>] Body param
            #
            # @param properties [Array<String>] Body param: Key-value pairs for setting properties for the new object.
            #
            # @param properties_with_history [Array<String>] Body param: Key-value pairs for setting properties for the new object and their
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param id_property [String] Body param: When using a custom unique value property to retrieve records, the n
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GoalTargets::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubSpotSDK::Crm::Objects::GoalTargets::BatchGetParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/goal_targets/batch/read",
                query: query,
                body: parsed.except(*query_params),
                model: HubSpotSDK::Crm::BatchResponseSimplePublicObject,
                options: options
              )
            end

            # Create and update a batch of goal targets by a unique property. Goal targets
            # that don't exist will be created, while existing goal targets will be updated.
            #
            # @overload upsert(inputs:, request_options: {})
            #
            # @param inputs [Array<HubSpotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
            #
            # @see HubSpotSDK::Models::Crm::Objects::GoalTargets::BatchUpsertParams
            def upsert(params)
              parsed, options = HubSpotSDK::Crm::Objects::GoalTargets::BatchUpsertParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/objects/2026-03/goal_targets/batch/upsert",
                body: parsed,
                model: HubSpotSDK::Crm::BatchResponseSimplePublicUpsertObject,
                options: options
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
  end
end
