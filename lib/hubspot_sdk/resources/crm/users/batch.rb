# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Users
        class Batch
          # Create a batch of users
          #
          # @overload create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Users::BatchCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Users::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/create",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Update a batch of users by internal ID, or unique property values
          #
          # @overload update(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Users::BatchUpdateParams
          def update(params)
            parsed, options = HubspotSDK::Crm::Users::BatchUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/update",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Archive a batch of users by ID
          #
          # @overload delete(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Users::BatchDeleteParams
          def delete(params)
            parsed, options = HubspotSDK::Crm::Users::BatchDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/archive",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Users::BatchGetParams} for more details.
          #
          # Retrieve records by record ID or include the `idProperty` parameter to retrieve
          # records by a custom unique value property.
          #
          # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>] Body param:
          #
          # @param properties [Array<String>] Body param: Key-value pairs for setting properties for the new object.
          #
          # @param properties_with_history [Array<String>] Body param: Key-value pairs for setting properties for the new object and their
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param id_property [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Users::BatchGetParams
          def get(params)
            parsed, options = HubspotSDK::Crm::Users::BatchGetParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/read",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Create or update records identified by a unique property value as specified by
          # the `idProperty` query param. `idProperty` query param refers to a property
          # whose values are unique for the object.
          #
          # @overload upsert(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
          #
          # @see HubspotSDK::Models::Crm::Users::BatchUpsertParams
          def upsert(params)
            parsed, options = HubspotSDK::Crm::Users::BatchUpsertParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/upsert",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseSimplePublicUpsertObject,
              options: options
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
