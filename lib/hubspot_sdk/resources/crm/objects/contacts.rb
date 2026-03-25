# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Contacts
          # @return [HubspotSDK::Resources::Crm::Objects::Contacts::Batch]
          attr_reader :batch

          # Create a single contact. Include a `properties` object to define
          # [property values](https://developers.hubspot.com/docs/guides/api/crm/properties)
          # for the contact, along with an `associations` array to define
          # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
          # with other CRM records.
          #
          # @overload create(associations:, properties:, request_options: {})
          #
          # @param associations [Array<HubspotSDK::Models::Crm::PublicAssociationsForObject>]
          #
          # @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactCreateParams
          def create(params)
            parsed, options = HubspotSDK::Crm::Objects::ContactCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/contacts",
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::ContactUpdateParams} for more details.
          #
          # Update an existing contact, identified by ID or email/unique property value. To
          # identify a contact by ID, include the ID in the request URL path. To identify a
          # contact by their email or other unique property, include the email/property
          # value in the request URL path, and add the `idProperty` query parameter
          # (`/crm/v3/objects/contacts/jon@website.com?idProperty=email`). Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          #
          # @overload update(contact_id, properties:, id_property: nil, request_options: {})
          #
          # @param contact_id [String] Path param
          #
          # @param properties [Hash{Symbol=>String}] Body param: Key value pairs representing the properties of the object.
          #
          # @param id_property [String] Query param: The name of a property whose values are unique for this object type
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactUpdateParams
          def update(contact_id, params)
            query_params = [:id_property]
            parsed, options = HubspotSDK::Crm::Objects::ContactUpdateParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["crm/objects/2026-03/contacts/%1$s", contact_id],
              query: query.transform_keys(id_property: "idProperty"),
              body: parsed.except(*query_params),
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::ContactListParams} for more details.
          #
          # Retrieve all contacts, using query parameters to specify the information that
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactListParams
          def list(params = {})
            parsed, options = HubspotSDK::Crm::Objects::ContactListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "crm/objects/2026-03/contacts",
              query: query.transform_keys(properties_with_history: "propertiesWithHistory"),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Delete a contact by ID. Deleted contacts can be restored within 90 days of
          # deletion. Learn more about the
          # [data impacted by contact deletions](https://knowledge.hubspot.com/privacy-and-consent/understand-restorable-and-permanent-contact-deletions)
          # and how to
          # [restore archived records](https://knowledge.hubspot.com/records/restore-deleted-records).
          #
          # @overload delete(contact_id, request_options: {})
          #
          # @param contact_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactDeleteParams
          def delete(contact_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/objects/2026-03/contacts/%1$s", contact_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::ContactGdprDeleteParams} for more details.
          #
          # Permanently delete a contact and all associated content to follow GDPR. Use
          # optional property `idProperty` set to `email` to identify contact by email
          # address. If email address is not found, the email address will be added to a
          # blocklist and prevent it from being used in the future. Learn more about
          # [permanently deleting contacts](https://knowledge.hubspot.com/privacy-and-consent/how-do-i-perform-a-gdpr-delete-in-hubspot).
          #
          # @overload gdpr_delete(object_id_:, id_property: nil, request_options: {})
          #
          # @param object_id_ [String] The ID of the contact to permanently delete.
          #
          # @param id_property [String] The name of a property whose values are unique for this object. An alternative t
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactGdprDeleteParams
          def gdpr_delete(params)
            parsed, options = HubspotSDK::Crm::Objects::ContactGdprDeleteParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/contacts/gdpr-delete",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Objects::ContactGetParams} for more details.
          #
          # Retrieve a contact by its ID (`contactId`) or by a unique property
          # (`idProperty`). You can specify what is returned using the `properties` query
          # parameter.
          #
          # @overload get(contact_id, archived: nil, associations: nil, id_property: nil, properties: nil, properties_with_history: nil, request_options: {})
          #
          # @param contact_id [String]
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactGetParams
          def get(contact_id, params = {})
            parsed, options = HubspotSDK::Crm::Objects::ContactGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["crm/objects/2026-03/contacts/%1$s", contact_id],
              query: query.transform_keys(
                id_property: "idProperty",
                properties_with_history: "propertiesWithHistory"
              ),
              model: HubspotSDK::Crm::SimplePublicObjectWithAssociations,
              options: options
            )
          end

          # Merge two contact records. Learn more about
          # [merging records](https://knowledge.hubspot.com/records/merge-records).
          #
          # @overload merge(object_id_to_merge:, primary_object_id:, request_options: {})
          #
          # @param object_id_to_merge [String] The ID of the company to merge into the primary.
          #
          # @param primary_object_id [String] The ID of the primary company, which the other will merge into.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::SimplePublicObject]
          #
          # @see HubspotSDK::Models::Crm::Objects::ContactMergeParams
          def merge(params)
            parsed, options = HubspotSDK::Crm::Objects::ContactMergeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/contacts/merge",
              body: parsed,
              model: HubspotSDK::Crm::SimplePublicObject,
              options: options
            )
          end

          # Search for contacts by filtering on properties, searching through associations,
          # and sorting results. Learn more about
          # [CRM search](https://developers.hubspot.com/docs/guides/api/crm/search#make-a-search-request).
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
          # @see HubspotSDK::Models::Crm::Objects::ContactSearchParams
          def search(params)
            parsed, options = HubspotSDK::Crm::Objects::ContactSearchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/objects/2026-03/contacts/search",
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
            @batch = HubspotSDK::Resources::Crm::Objects::Contacts::Batch.new(client: client)
          end
        end
      end
    end
  end
end
