# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Contacts
          sig { returns(HubspotSDK::Resources::Crm::Objects::Contacts::Batch) }
          attr_reader :batch

          # Create a single contact. Include a `properties` object to define
          # [property values](https://developers.hubspot.com/docs/guides/api/crm/properties)
          # for the contact, along with an `associations` array to define
          # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
          # with other CRM records.
          sig do
            params(
              associations:
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
              properties: T::Hash[Symbol, String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::CreatedResponseSimplePublicObject)
          end
          def create(
            associations:,
            # Key-value pairs for setting properties for the new object.
            properties:,
            request_options: {}
          )
          end

          # Update an existing contact, identified by ID or email/unique property value. To
          # identify a contact by ID, include the ID in the request URL path. To identify a
          # contact by their email or other unique property, include the email/property
          # value in the request URL path, and add the `idProperty` query parameter
          # (`/crm/v3/objects/contacts/jon@website.com?idProperty=email`). Provided property
          # values will be overwritten. Read-only and non-existent properties will result in
          # an error. Properties values can be cleared by passing an empty string.
          sig do
            params(
              contact_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param:
            contact_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param: The name of a property whose values are unique for this object.
            id_property: nil,
            request_options: {}
          )
          end

          # Retrieve all contacts, using query parameters to specify the information that
          # gets returned.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              associations: T::Array[String],
              limit: Integer,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Crm::SimplePublicObjectWithAssociations
              ]
            )
          end
          def list(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # A comma separated list of object types to retrieve associated IDs for. If any of
            # the specified associations do not exist, they will be ignored.
            associations: nil,
            # The maximum number of results to display per page.
            limit: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored. Usage of this parameter will reduce
            # the maximum number of contacts that can be read by a single request.
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Delete a contact by ID. Deleted contacts can be restored within 90 days of
          # deletion. Learn more about the
          # [data impacted by contact deletions](https://knowledge.hubspot.com/privacy-and-consent/understand-restorable-and-permanent-contact-deletions)
          # and how to
          # [restore archived records](https://knowledge.hubspot.com/records/restore-deleted-records).
          sig do
            params(
              contact_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(contact_id, request_options: {})
          end

          # Permanently delete a contact and all associated content to follow GDPR. Use
          # optional property `idProperty` set to `email` to identify contact by email
          # address. If email address is not found, the email address will be added to a
          # blocklist and prevent it from being used in the future. Learn more about
          # [permanently deleting contacts](https://knowledge.hubspot.com/privacy-and-consent/how-do-i-perform-a-gdpr-delete-in-hubspot).
          sig do
            params(
              object_id_: String,
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def gdpr_delete(
            # ID of the object
            object_id_:,
            # ID property
            id_property: nil,
            request_options: {}
          )
          end

          # Retrieve a contact by its ID (`contactId`) or by a unique property
          # (`idProperty`). You can specify what is returned using the `properties` query
          # parameter.
          sig do
            params(
              contact_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            contact_id,
            # Whether to return only results that have been archived.
            archived: nil,
            # A comma separated list of object types to retrieve associated IDs for. If any of
            # the specified associations do not exist, they will be ignored.
            associations: nil,
            # The name of a property whose values are unique for this object
            id_property: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored.
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Merge two contact records. Learn more about
          # [merging records](https://knowledge.hubspot.com/records/merge-records).
          sig do
            params(
              object_id_to_merge: String,
              primary_object_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def merge(
            # The unique identifier of the CRM object that will be merged into the primary
            # object.
            object_id_to_merge:,
            # The unique identifier of the CRM object that will remain after the merge.
            primary_object_id:,
            request_options: {}
          )
          end

          # Search for contacts by filtering on properties, searching through associations,
          # and sorting results. Learn more about
          # [CRM search](https://developers.hubspot.com/docs/guides/api/crm/search#make-a-search-request).
          sig do
            params(
              after: String,
              filter_groups: T::Array[HubspotSDK::Crm::FilterGroup::OrHash],
              limit: Integer,
              properties: T::Array[String],
              sorts: T::Array[String],
              query: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
            )
          end
          def search(
            # A paging cursor token for retrieving subsequent pages.
            after:,
            # Up to 6 groups of filters defining additional query criteria.
            filter_groups:,
            # The maximum results to return, up to 200 objects.
            limit:,
            # A list of property names to include in the response.
            properties:,
            # Specifies sorting order based on object properties.
            sorts:,
            # The search query string, up to 3000 characters.
            query: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
