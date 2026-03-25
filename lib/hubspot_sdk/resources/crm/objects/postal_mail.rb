# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PostalMail
          # Create a batch of postal mail objects.
          #
          # @overload create(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputForCreate>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/batch/create",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Update multiple postal mail objects in a single request.
          #
          # @overload update(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInput>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailUpdateParams
          def update(params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/batch/update",
              body: parsed,
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::PostalMailListParams} for more details.
          #
          # @overload list(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::PostalMailListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/postal_mail",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Archive a batch of postal mail objects using their IDs.
          #
          # @overload delete(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailDeleteParams
          def delete(params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/batch/archive",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::PostalMailGetParams} for more details.
          #
          # Retrieve multiple postal mail objects using their internal IDs or unique
          # property values.
          #
          # @overload get(inputs:, properties:, properties_with_history:, archived: nil, id_property: nil, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectID>] Body param
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
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailGetParams
          def get(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Crm::Objects::PostalMailGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/batch/read",
              query: query,
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::BatchResponseSimplePublicObject,
              options: options
            )
          end

          # Search for postal mail objects using specific criteria in the request.
          #
          # @overload search(after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
          #
          # @param after [String] A paging cursor token for retrieving subsequent pages.
          #
          # @param filter_groups [Array<HubspotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
          #
          # @param limit [Integer] The maximum results to return, up to 200 objects.
          #
          # @param properties [Array<String>] A list of property names to include in the response.
          #
          # @param sorts [Array<String>] Specifies sorting order based on object properties.
          #
          # @param query [String] The search query string, up to 3000 characters.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailSearchParams
          def search(params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/search",
              body: parsed,
              model: HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # Create or update postal mails identified by a unique property value as specified
          # by the `idProperty` query param. `idProperty` query param refers to a property
          # whose values are unique for the object.
          #
          # @overload upsert(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Crm::SimplePublicObjectBatchInputUpsert>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::BatchResponseSimplePublicUpsertObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailUpsertParams
          def upsert(params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailUpsertParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/batch/upsert",
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
