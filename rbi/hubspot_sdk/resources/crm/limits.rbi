# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Limits
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
          from_object_type_id: nil,
          to_object_type_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            to_object_type_id: String,
            from_object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Crm::AssociationRecordLimitResponse)
        end
        def get_association_records_limits_by_object_type(
          to_object_type_id,
          from_object_type_id:,
          request_options: {}
        )
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
          )
        end
        def get_association_records_limits_from_objects(request_options: {})
        end

        sig do
          params(
            from_object_type_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Crm::CollectionResponseObjectTypeNearOrAtAssociationLimitNoPaging
          )
        end
        def get_association_records_limits_to_objects(
          from_object_type_id,
          request_options: {}
        )
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CalculatedPropertyLimitResponse
          )
        end
        def get_calculated_property_limits(request_options: {})
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CustomObjectLimitResponse
          )
        end
        def get_custom_object_type_limits(request_options: {})
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::CustomPropertyLimitResponse
          )
        end
        def get_custom_property_limits(request_options: {})
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Crm::PipelineLimitResponse
          )
        end
        def get_pipeline_limits(request_options: {})
        end

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
