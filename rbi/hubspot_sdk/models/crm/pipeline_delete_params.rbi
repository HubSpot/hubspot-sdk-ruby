# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineDeleteParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :object_type

        sig { returns(String) }
        attr_accessor :pipeline_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :validate_deal_stage_usages_before_delete

        sig do
          params(validate_deal_stage_usages_before_delete: T::Boolean).void
        end
        attr_writer :validate_deal_stage_usages_before_delete

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :validate_references_before_delete

        sig { params(validate_references_before_delete: T::Boolean).void }
        attr_writer :validate_references_before_delete

        sig do
          params(
            object_type: String,
            pipeline_id: String,
            validate_deal_stage_usages_before_delete: T::Boolean,
            validate_references_before_delete: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          object_type:,
          pipeline_id:,
          validate_deal_stage_usages_before_delete: nil,
          validate_references_before_delete: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              object_type: String,
              pipeline_id: String,
              validate_deal_stage_usages_before_delete: T::Boolean,
              validate_references_before_delete: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
