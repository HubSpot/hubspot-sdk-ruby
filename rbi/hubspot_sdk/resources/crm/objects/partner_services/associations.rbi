# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class PartnerServices
          class Associations
            # Associate a partner service with another object
            sig do
              params(
                association_type: String,
                partner_service_id: String,
                to_object_type: String,
                to_object_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
            end
            def update(
              association_type,
              partner_service_id:,
              to_object_type:,
              to_object_id:,
              request_options: {}
            )
            end

            # List associations of a partner service by type
            sig do
              params(
                to_object_type: String,
                partner_service_id: String,
                after: String,
                include_fa: T::Boolean,
                limit: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Internal::Page[HubspotSDK::Crm::AssociatedID]
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
              # Query param
              include_fa: nil,
              # Query param: The maximum number of results to display per page.
              limit: nil,
              request_options: {}
            )
            end

            # Remove an association between two partner services
            sig do
              params(
                association_type: String,
                partner_service_id: String,
                to_object_type: String,
                to_object_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(
              association_type,
              partner_service_id:,
              to_object_type:,
              to_object_id:,
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
end
