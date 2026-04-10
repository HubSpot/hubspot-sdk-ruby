# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PipelineUpdateAllPropertiesParams < HubSpotSDK::Models::Crm::PipelineReplaceInput
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PipelineUpdateAllPropertiesParams,
              HubSpotSDK::Internal::AnyHash
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
            request_options: HubSpotSDK::RequestOptions::OrHash
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
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
