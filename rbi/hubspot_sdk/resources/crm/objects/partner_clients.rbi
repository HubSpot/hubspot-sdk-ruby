# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class PartnerClients
          sig do
            returns(HubSpotSDK::Resources::Crm::Objects::PartnerClients::Batch)
          end
          attr_reader :batch

          # Update the specified properties of an existing partner client.
          sig do
            params(
              partner_client_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param
            partner_client_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param: The name of a property whose values are unique for this object type
            id_property: nil,
            request_options: {}
          )
          end

          # Retrieve a list of partner clients with optional filtering by deleted status,
          # associations, and specific properties. The response can be paginated using the
          # 'after' parameter.
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

          # Retrieve detailed information about a specific partner client, including
          # selected properties and associations. This endpoint is useful for accessing
          # comprehensive client data for analysis or integration purposes.
          sig do
            params(
              partner_client_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            partner_client_id,
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

          # Retrieve a list of associations for a specific partner client based on the
          # specified object type.
          sig do
            params(
              to_object_type: String,
              partner_client_id: String,
              after: String,
              limit: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Internal::Page[
                HubSpotSDK::Crm::MultiAssociatedObjectWithLabel
              ]
            )
          end
          def list_associations(
            # Path param
            to_object_type,
            # Path param
            partner_client_id:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          # Execute a search for partner clients based on defined filters, properties, and
          # sorting options. This endpoint allows you to retrieve partner client data that
          # matches the search criteria, facilitating integration and data synchronization
          # with third-party systems.
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
