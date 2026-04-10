# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Associations
        sig { returns(HubSpotSDK::Resources::Crm::Associations::Batch) }
        attr_reader :batch

        # Retrieve all associations between a specific record and an object type. Limit
        # 500 per call.
        sig do
          params(
            to_object_type: String,
            object_type: String,
            object_id_: String,
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
          object_type:,
          # Path param
          object_id_:,
          # Query param: The paging cursor token of the last successfully read resource will
          # be returned as the `paging.next.after` JSON property of a paged response
          # containing more results.
          after: nil,
          # Query param: The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        sig do
          params(
            to_object_id: String,
            object_type: String,
            object_id_: String,
            to_object_type: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          to_object_id,
          object_type:,
          object_id_:,
          to_object_type:,
          request_options: {}
        )
        end

        # Requests a report of all objects in the portal which have a high usage of
        # associations
        sig do
          params(
            user_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::ReportCreationResponse)
        end
        def request_high_usage_report(user_id, request_options: {})
        end

        sig do
          params(
            object_type: String,
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
          object_type,
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

        sig do
          params(
            to_object_id: String,
            object_type: String,
            object_id_: String,
            to_object_type: String,
            body: T::Array[HubSpotSDK::AssociationSpec::OrHash],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Crm::LabelsBetweenObjectPair)
        end
        def update_association_labels(
          # Path param
          to_object_id,
          # Path param
          object_type:,
          # Path param
          object_id_:,
          # Path param
          to_object_type:,
          # Body param
          body:,
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
