# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Users
        class Batch
          # Create a batch of users
          #
          # @overload create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputForCreate>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::CRM::Users::BatchCreateParams
          def create(params)
            parsed, options = HubspotSDK::CRM::Users::BatchCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/create",
              body: parsed,
              model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Update a batch of users by internal ID, or unique property values
          #
          # @overload update(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInput>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::CRM::Users::BatchUpdateParams
          def update(params)
            parsed, options = HubspotSDK::CRM::Users::BatchUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/update",
              body: parsed,
              model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Archive a batch of users by ID
          #
          # @overload delete(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectID>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Users::BatchDeleteParams
          def delete(params)
            parsed, options = HubspotSDK::CRM::Users::BatchDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/archive",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Users::BatchGetParams} for more details.
          #
          # Retrieve records by record ID or include the `idProperty` parameter to retrieve
          # records by a custom unique value property.
          #
          # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectID>] Body param:
          #
          # @param properties [Array<String>] Body param: Key-value pairs for setting properties for the new object.
          #
          # @param properties_with_history [Array<String>] Body param: Key-value pairs for setting properties for the new object and their
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param id_property [String] Body param: When using a custom unique value property to retrieve records, the n
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::CRM::Users::BatchGetParams
          def get(params)
            parsed, options = HubspotSDK::CRM::Users::BatchGetParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/read",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::CRM::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Create or update records identified by a unique property value as specified by
          # the `idProperty` query param. `idProperty` query param refers to a property
          # whose values are unique for the object.
          #
          # @overload upsert(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::CRM::SimplePublicObjectBatchInputUpsert>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::BatchResponseSimplePublicUpsertObject]
          #
          # @see HubspotSDK::Models::CRM::Users::BatchUpsertParams
          def upsert(params)
            parsed, options = HubspotSDK::CRM::Users::BatchUpsertParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/users/batch/upsert",
              body: parsed,
              model: HubspotSDK::CRM::BatchResponseSimplePublicUpsertObject,
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
