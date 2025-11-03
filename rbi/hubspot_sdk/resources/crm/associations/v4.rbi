# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          sig { returns(HubspotSDK::Resources::Crm::Associations::V4::Batch) }
          attr_reader :batch

          sig { returns(HubspotSDK::Resources::Crm::Associations::V4::Report) }
          attr_reader :report

          # Create the default (most generic) association type between two object types
          sig do
            params(
              to_object_id: String,
              from_object_type: String,
              from_object_id: String,
              to_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponsePublicDefaultAssociation)
          end
          def create(
            to_object_id,
            from_object_type:,
            from_object_id:,
            to_object_type:,
            request_options: {}
          )
          end

          # Set association labels between two records.
          sig do
            params(
              to_object_id: String,
              object_type: String,
              object_id_: String,
              to_object_type: String,
              body: T::Array[HubspotSDK::AssociationSpec::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::CreatedResponseLabelsBetweenObjectPair)
          end
          def update(
            # Path param:
            to_object_id,
            # Path param:
            object_type:,
            # Path param:
            object_id_:,
            # Path param:
            to_object_type:,
            # Body param:
            body:,
            request_options: {}
          )
          end

          # List all associations of an object by object type. Limit 500 per call.
          sig do
            params(
              to_object_type: String,
              object_type: String,
              object_id_: String,
              after: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Crm::MultiAssociatedObjectWithLabel
              ]
            )
          end
          def list(
            # Path param:
            to_object_type,
            # Path param:
            object_type:,
            # Path param:
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

          # deletes all associations between two records.
          sig do
            params(
              to_object_id: String,
              object_type: String,
              object_id_: String,
              to_object_type: String,
              request_options: HubspotSDK::RequestOptions::OrHash
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

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
