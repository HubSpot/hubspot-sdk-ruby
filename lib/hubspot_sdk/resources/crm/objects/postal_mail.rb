# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PostalMail
          # @return [HubspotSDK::Resources::Crm::Objects::PostalMail::Batch]
          attr_reader :batch

          # Create a postal mail object with the given properties and return a copy of the
          # object, including the ID.
          #
          # @overload create(associations:, properties:, request_options: {})
          #
          # @param associations [Array<HubspotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::CreatedResponseSimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/v3/objects/postal_mail",
              body: parsed,
              model: HubspotSDK::Crm::CreatedResponseSimplePublicObject,
              options: options
            )
          end

          # @overload update(postal_mail_id, properties:, id_property: nil, request_options: {})
          #
          # @param postal_mail_id [String] Path param:
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailUpdateParams
          def update(postal_mail_id, params)
            parsed, options = HubspotSDK::Crm::Objects::PostalMailUpdateParams.dump_request(params)
            query_params = [:id_property]
            @client.request(
              method: :patch,
              path: ["crm/v3/objects/postal_mail/%1$s", postal_mail_id],
              query: parsed.slice(*query_params).transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # @overload list(after: nil, archived: nil, associations: nil, limit: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param after [String]
          # @param archived [Boolean]
          # @param associations [Array<String>]
          # @param limit [Integer]
          # @param properties [Array<String>]
          # @param properties_with_history [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::PostalMailListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "crm/v3/objects/postal_mail",
              query: parsed.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Move the postal mail object with the ID `{postalMailId}` to the recycling bin.
          #
          # @overload delete(postal_mail_id, request_options: {})
          #
          # @param postal_mail_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailDeleteParams
          def delete(postal_mail_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/v3/objects/postal_mail/%1$s", postal_mail_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # @overload get(postal_mail_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param postal_mail_id [String]
          # @param archived [Boolean]
          # @param associations [Array<String>]
          # @param id_property [String]
          # @param properties [Array<String>]
          # @param properties_with_history [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::PostalMailGetParams
          def get(postal_mail_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::PostalMailGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["crm/v3/objects/postal_mail/%1$s", postal_mail_id],
              query: parsed.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
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
              path: "crm/v3/objects/postal_mail/search",
              body: parsed,
              model: HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Crm::Objects::PostalMail::Batch.new(client: client)
          end
        end
      end
    end
  end
end
