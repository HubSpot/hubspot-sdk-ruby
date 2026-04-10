# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          sig do
            returns(HubSpotSDK::Resources::Crm::Objects::PartnerServices::Batch)
          end
          attr_reader :batch

          # Perform a partial update of an Object identified by `{partnerServiceId}`or
          # optionally a unique property value as specified by the `idProperty` query param.
          # `{partnerServiceId}` refers to the internal object ID by default, and the
          # `idProperty` query param refers to a property whose values are unique for the
          # object. Provided property values will be overwritten. Read-only and non-existent
          # properties will result in an error. Properties values can be cleared by passing
          # an empty string.
          sig do
            params(
              partner_service_id: String,
              properties: T::Hash[Symbol, String],
              id_property: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObject)
          end
          def update(
            # Path param
            partner_service_id,
            # Body param: Key value pairs representing the properties of the object.
            properties:,
            # Query param: The name of a property whose values are unique for this object type
            id_property: nil,
            request_options: {}
          )
          end

          # Retrieve a list of associations for a specific partner service, filtered by the
          # type of associated object.
          sig do
            params(
              to_object_type: String,
              partner_service_id: String,
              after: String,
              limit: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Internal::Page[
                HubSpotSDK::Crm::MultiAssociatedObjectWithLabel
              ]
            )
          end
          def list(
            # Path param
            to_object_type,
            # Path param
            partner_service_id:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          # Read an Object identified by `{partnerServiceId}`. `{partnerServiceId}` refers
          # to the internal object ID by default, or optionally any unique property value as
          # specified by the `idProperty` query param. Control what is returned via the
          # `properties` query param.
          sig do
            params(
              partner_service_id: String,
              archived: T::Boolean,
              associations: T::Array[String],
              id_property: String,
              properties: T::Array[String],
              properties_with_history: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::SimplePublicObjectWithAssociations)
          end
          def get(
            partner_service_id,
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

          # Execute a search query to find partner services based on defined filters,
          # properties, and sorting options. This endpoint allows you to retrieve a
          # collection of partner services that match the specified search criteria.
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
