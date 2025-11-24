# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class Projects
          class Associations
            sig do
              params(
                association_type: String,
                project_id: String,
                to_object_type: String,
                to_object_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Crm::SimplePublicObjectWithAssociations)
            end
            def update(
              association_type,
              project_id:,
              to_object_type:,
              to_object_id:,
              request_options: {}
            )
            end

            sig do
              params(
                to_object_type: String,
                project_id: String,
                after: String,
                include_fa: T::Boolean,
                limit: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(
                HubspotSDK::Internal::Page[HubspotSDK::Crm::AssociatedID]
              )
            end
            def list(
              # Path param:
              to_object_type,
              # Path param:
              project_id:,
              # Query param:
              after: nil,
              # Query param:
              include_fa: nil,
              # Query param:
              limit: nil,
              request_options: {}
            )
            end

            sig do
              params(
                association_type: String,
                project_id: String,
                to_object_type: String,
                to_object_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def delete(
              association_type,
              project_id:,
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
