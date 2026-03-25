# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        sig { returns(HubspotSDK::Resources::Crm::Associations::Batch) }
        attr_reader :batch

        sig do
          params(
            to_object_id: String,
            object_type: String,
            object_id_: String,
            to_object_type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_associations(
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::ReportCreationResponse)
        end
        def request_high_usage_report(
          # The user for the report
          user_id,
          request_options: {}
        )
        end

        sig do
          params(
            to_object_id: String,
            object_type: String,
            object_id_: String,
            to_object_type: String,
            body: T::Array[HubspotSDK::AssociationSpec::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::LabelsBetweenObjectPair)
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
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
