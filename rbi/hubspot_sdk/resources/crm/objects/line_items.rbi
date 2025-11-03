# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class LineItems
          sig { returns(HubspotSDK::Resources::Crm::Objects::LineItems::Batch) }
          attr_reader :batch

          # Create a line item with the given properties and return a copy of the object,
          # including the ID. Documentation and examples for creating standard line items is
          # provided.
          sig do
            params(
              properties: T::Hash[Symbol, String],
              associations:
                T::Array[HubspotSDK::Crm::PublicAssociationsForObject::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::CreatedResponseSimplePublicObject)
          end
          def create(
            # Key-value pairs for setting properties for the new object.
            properties:,
            associations: nil,
            request_options: {}
          )
          end

          # Perform a partial update of an Object identified by `{lineItemId}`or optionally
          # a unique property value as specified by the `idProperty` query param.
          # `{lineItemId}` refers to the internal object ID by default, and the `idProperty`
          # query param refers to a property whose values are unique for the object.
          # Provided property values will be overwritten. Read-only and non-existent
          # properties will result in an error. Properties values can be cleared by passing
          # an empty string.
          sig do
            params(
              line_item_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param:
            line_item_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param: The name of a property whose values are unique for this object
            id_property: nil,
            request_options: {}
          )
          end

          # Read a page of line items. Control what is returned via the `properties` query
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
            # The maximum number of results to display per page.
            limit: nil,
            # A comma separated list of the properties to be returned in the response. If any
            # of the specified properties are not present on the requested object(s), they
            # will be ignored.
            properties: nil,
            # A comma separated list of the properties to be returned along with their history
            # of previous values. If any of the specified properties are not present on the
            # requested object(s), they will be ignored. Usage of this parameter will reduce
            # the maximum number of line items that can be read by a single request.
            properties_with_history: nil,
            request_options: {}
          )
          end

          # Move an Object identified by `{lineItemId}` to the recycling bin.
          sig do
            params(
              line_item_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(line_item_id, request_options: {})
          end

          # Read an Object identified by `{lineItemId}`. `{lineItemId}` refers to the
          # internal object ID by default, or optionally any unique property value as
          # specified by the `idProperty` query param. Control what is returned via the
          # `properties` query param.
          sig do
            params(
              line_item_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            line_item_id,
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

          sig do
            params(
              after: String,
              filter_groups: T::Array[HubspotSDK::Crm::FilterGroup::OrHash],
              limit: Integer,
              properties: T::Array[String],
              query: String,
              sorts: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::CollectionResponseWithTotalSimplePublicObject
            )
          end
          def search(
            # A paging cursor token for retrieving subsequent pages.
            after: nil,
            # Up to 6 groups of filters defining additional query criteria.
            filter_groups: nil,
            # The maximum results to return, up to 200 objects.
            limit: nil,
            # A list of property names to include in the response.
            properties: nil,
            # The search query string, up to 3000 characters.
            query: nil,
            # Specifies sorting order based on object properties.
            sorts: nil,
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
