# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class PostalMail
          # @return [HubSpotSDK::Resources::Crm::Objects::PostalMail::Batch]
          attr_reader :batch

          # Create a postal mail object with the given properties and return a copy of the
          # object, including the ID.
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
          # @see HubSpotSDK::Models::Crm::Objects::PostalMailCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Crm::Objects::PostalMailCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail",
              body: parsed,
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PostalMailUpdateParams} for more details.
          #
          # @overload update(postal_mail_id, properties:, id_property: nil, request_options: {})
          #
          # @param postal_mail_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubSpotSDK::Models::Crm::Objects::PostalMailUpdateParams
          def update(postal_mail_id, params)
            query_params = [:id_property]
            parsed, options = HubSpotSDK::Crm::Objects::PostalMailUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/postal_mail/%1$s", postal_mail_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubSpotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PostalMailListParams} for more details.
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
          # @see HubSpotSDK::Models::Crm::Objects::PostalMailListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Crm::Objects::PostalMailListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/postal_mail",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move the postal mail object with the ID `{postalMailId}` to the recycling bin.
          #
          # @overload delete(postal_mail_id, request_options: {})
          #
          # @param postal_mail_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Objects::PostalMailDeleteParams
          def delete(postal_mail_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/postal_mail/%1$s", postal_mail_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Objects::PostalMailGetParams} for more details.
          #
          # @overload get(postal_mail_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param postal_mail_id [String]
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
          # @see HubSpotSDK::Models::Crm::Objects::PostalMailGetParams
          def get(postal_mail_id, params = {})
            parsed, options = HubSpotSDK::Crm::Objects::PostalMailGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/postal_mail/%1$s", postal_mail_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubSpotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Search for postal mail objects using specific criteria in the request.
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
          # @see HubSpotSDK::Models::Crm::Objects::PostalMailSearchParams
          def search(params)
            parsed, options = HubSpotSDK::Crm::Objects::PostalMailSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/postal_mail/search",
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
            @batch = HubSpotSDK::Resources::Crm::Objects::PostalMail::Batch.new(client: client)
          end
        end
      end
    end
  end
end
