# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class Companies
          sig { returns(HubSpotSDK::Resources::Crm::Objects::Companies::Batch) }
          attr_reader :batch

          # Create a single company. Include a `properties` object to define
          # [property values](https://developers.hubspot.com/docs/guides/api/crm/properties)
          # for the company, along with an `associations` array to define
          # [associations](https://developers.hubspot.com/docs/guides/api/crm/associations/associations-v4)
          # with other CRM records.
          sig do
            params(
              associations:
                T::Array[HubSpotSDK::Crm::PublicAssociationsForObject::OrHash],
              properties: T::Hash[Symbol, String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObject)
          end
          def create(
            associations:,
            # Key-value pairs for setting properties for the new object.
            properties:,
            request_options: {}
          )
          end

          # Update a company by ID (`companyId`) or unique property value (`idProperty`).
          # Provided property values will be overwritten. Read-only and non-existent
          # properties will result in an error. Properties values can be cleared by passing
          # an empty string.
          sig do
            params(
              company_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param
            company_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param: The name of a property whose values are unique for this object type
            id_property: nil,
            request_options: {}
          )
          end

          # Retrieve all companies, using query parameters to control the information that
          # gets returned.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              associations: T::Array[String],
              limit: Integer,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Internal::Page[
                HubSpotSDK::Crm::SimplePublicObjectWithAssociations
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
            # the maximum number of objects that can be read by a single request.
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Delete a company by ID. Deleted companies can be restored within 90 days of
          # deletion. Learn more about
          # [restoring records](https://knowledge.hubspot.com/records/restore-deleted-records).
          sig do
            params(
              company_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(company_id, request_options: {})
          end

          # Retrieve a company by its ID (`companyId`) or by a unique property
          # (`idProperty`). You can specify what is returned using the `properties` query
          # parameter.
          sig do
            params(
              company_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            company_id,
            # Whether to return only results that have been archived.
            archived: nil,
            # A comma separated list of object types to retrieve associated IDs for. If any of
            # the specified associations do not exist, they will be ignored.
            associations: nil,
            # The name of a property whose values are unique for this object type
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

          # Merge two company records. Learn more about
          # [merging records](https://knowledge.hubspot.com/records/merge-records).
          sig do
            params(
              object_id_to_merge: String,
              primary_object_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObject)
          end
          def merge(
            # The ID of the company to merge into the primary.
            object_id_to_merge:,
            # The ID of the primary company, which the other will merge into.
            primary_object_id:,
            request_options: {}
          )
          end

          # Search for companies by filtering on properties, searching through associations,
          # and sorting results. Learn more about
          # [CRM search](https://developers.hubspot.com/docs/guides/api/crm/search#make-a-search-request).
          sig do
            params(
              after: String,
              filter_groups: T::Array[HubSpotSDK::Crm::FilterGroup::OrHash],
              limit: Integer,
              properties: T::Array[String],
              sorts: T::Array[String],
              query: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
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
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
