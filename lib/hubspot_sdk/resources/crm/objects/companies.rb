# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Companies
          # @return [HubSpotSDK::Resources::Crm::Objects::Companies::Batch]
          attr_reader :batch

          # Create a single company. Include a `properties` object to define
          # [property values](https://developers.hubspot.com/docs/guides/api/crm/properties)
          # for the company, along with an `associations` array to define
          # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
          # with other CRM records.
          #
          # @overload create(associations:, properties:, request_options: {})
          #
          # @param associations [Array<HubSpotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanyCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Crm::Objects::CompanyCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/companies",
              body: parsed,
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::CompanyUpdateParams} for more details.
          #
          # Update a company by ID (`companyId`) or unique property value (`idProperty`).
          # Provided property values will be overwritten. Read-only and non-existent
          # properties will result in an error. Properties values can be cleared by passing
          # an empty string.
          #
          # @overload update(company_id, properties:, id_property: nil, request_options: {})
          #
          # @param company_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanyUpdateParams
          def update(company_id, params)
            query_params = [:id_property]
            parsed, options = HubSpotSDK::Crm::Objects::CompanyUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/companies/%1$s", company_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::CompanyListParams} for more details.
          #
          # Retrieve all companies, using query parameters to control the information that
          # gets returned.
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
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanyListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Crm::Objects::CompanyListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/companies",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Delete a company by ID. Deleted companies can be restored within 90 days of
          # deletion. Learn more about
          # [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
          #
          # @overload delete(company_id, request_options: {})
          #
          # @param company_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanyDeleteParams
          def delete(company_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/companies/%1$s", company_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::CompanyGetParams} for more details.
          #
          # Retrieve a company by its ID (`companyId`) or by a unique property
          # (`idProperty`). You can specify what is returned using the `properties` query
          # parameter.
          #
          # @overload get(company_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param company_id [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param associations [Array<String>] A comma separated list of object types to retrieve associated IDs for. If any of
          #
          # @param id_property [String] The name of a property whose values are unique for this object type
          #
          # @param properties [Array<String>] A comma separated list of the properties to be returned in the response. If any
          #
          # @param properties_with_history [Array<String>] A comma separated list of the properties to be returned along with their history
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanyGetParams
          def get(company_id, params = {})
            parsed, options = HubSpotSDK::Crm::Objects::CompanyGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/companies/%1$s", company_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Merge two company records. Learn more about
          # [merging records](https://knowledge.hubspot.com/records/merge-records).
          #
          # @overload merge(object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_id_to_merge [String] The ID of the company to merge into the primary.
          #
          # @param primary_object_id [String] The ID of the primary company, which the other will merge into.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanyMergeParams
          def merge(params)
            parsed, options = HubSpotSDK::Crm::Objects::CompanyMergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/companies/merge",
              body: parsed,
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Search for companies by filtering on properties, searching through associations,
          # and sorting results. Learn more about
          # [CRM search](https://developers.hubspot.com/docs/guides/api/crm/search#make-a-search-request).
          #
          # @overload search(after:, filter_groups:, limit:, properties:, sorts:, query: nil, request_options: {})
          #
          # @param after [String] A paging cursor token for retrieving subsequent pages.
          #
          # @param filter_groups [Array<HubSpotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
          #
          # @param limit [Integer] The maximum results to return, up to 200 objects.
          #
          # @param properties [Array<String>] A list of property names to include in the response.
          #
          # @param sorts [Array<String>] Specifies sorting order based on object properties.
          #
          # @param query [String] The search query string, up to 3000 characters.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::CollectionResponseWithTotalSimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::CompanySearchParams
          def search(params)
            parsed, options = HubSpotSDK::Crm::Objects::CompanySearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/companies/search",
              body: parsed,
              model: HubSpotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubSpotSDK::Resources::Crm::Objects::Companies::Batch.new(client: client)
          end
        end
      end
    end
  end
end
