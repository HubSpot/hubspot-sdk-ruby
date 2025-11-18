# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Limits
        # Returns limits and usage for custom association labels
        sig do
          params(
            from_object_type_id: String,
            to_object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Crm::CollectionResponseAssociationLabelLimitResponseNoPaging
          )
        end
        def get_association_label_limits(
          # objectTypeId of the object type on the "from" side of the association
          from_object_type_id: nil,
          # objectTypeId of the object type on the "to" side of the association
          to_object_type_id: nil,
          request_options: {}
        )
        end

        # Returns records approaching or at association limits between two objects
        sig do
          params(
            to_object_type_id: String,
            from_object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::AssociationRecordLimitResponse)
        end
        def get_association_records_limits_by_object_type(
          # objectTypeId of the object type on the "to" side of the association
          to_object_type_id,
          # objectTypeId of the object type on the "from" side of the association
          from_object_type_id:,
          request_options: {}
        )
        end

        # Returns objects with records approaching or at association limits
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
          )
        end
        def get_association_records_limits_from_objects(request_options: {})
        end

        # Returns objects for which the from object has records approaching or at
        # association limits
        sig do
          params(
            from_object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
          )
        end
        def get_association_records_limits_to_objects(
          # objectTypeId of the object type on the "from" side of the association
          from_object_type_id,
          request_options: {}
        )
        end

        # Returns overall limit and per object usage for calculated properties
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CalculatedPropertyLimitResponse
          )
        end
        def get_calculated_property_limits(request_options: {})
        end

        # Returns limits and usage for custom object schemas
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CustomObjectLimitResponse
          )
        end
        def get_custom_object_type_limits(request_options: {})
        end

        # Returns limits and usage per object for custom properties
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CustomPropertyLimitResponse
          )
        end
        def get_custom_property_limits(request_options: {})
        end

        # Returns limits and usage per object for pipelines
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::PipelineLimitResponse
          )
        end
        def get_pipeline_limits(request_options: {})
        end

        # Returns limits and usage per object for records
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::RecordLimitResponse
          )
        end
        def get_record_limits(request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
