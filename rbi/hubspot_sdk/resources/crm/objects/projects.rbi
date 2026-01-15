# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Projects
          sig do
            returns(HubspotSDK::Resources::Crm::Objects::Projects::Associations)
          end
          attr_reader :associations

          sig { returns(HubspotSDK::Resources::Crm::Objects::Projects::Batch) }
          attr_reader :batch

          # Create a project with the given properties and return a copy of the object,
          # including the ID.
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

          # Perform a partial update of an Object identified by `{projectId}`or optionally a
          # unique property value as specified by the `idProperty` query param.
          # `{projectId}` refers to the internal object ID by default, and the `idProperty`
          # query param refers to a property whose values are unique for the object.
          # Provided property values will be overwritten. Read-only and non-existent
          # properties will result in an error. Properties values can be cleared by passing
          # an empty string.
          sig do
            params(
              project_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param
            project_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param: The name of a property whose values are unique for this object
            id_property: nil,
            request_options: {}
          )
          end

          # Read a page of projects. Control what is returned via the `properties` query
          # param.
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
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            limit: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored. Usage of this parameter will reduce
            # the maximum number of projects that can be read by a single request.
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Move an Object identified by `{projectId}` to the recycling bin.
          sig do
            params(
              project_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(project_id, request_options: {})
          end

          # Read an Object identified by `{projectId}`. `{projectId}` refers to the internal
          # object ID by default, or optionally any unique property value as specified by
          # the `idProperty` query param. Control what is returned via the `properties`
          # query param.
          sig do
            params(
              project_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            project_id,
            # Whether to include archived projects
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

          # Merge two project records. Learn more about
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

          # Search for projects by filtering on properties, searching through associations,
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
