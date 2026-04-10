# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListUpdateListFiltersParams < HubSpotSDK::Models::Crm::ListFilterUpdateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListUpdateListFiltersParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :list_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enroll_objects_in_workflows

        sig { params(enroll_objects_in_workflows: T::Boolean).void }
        attr_writer :enroll_objects_in_workflows

        sig do
          params(
            list_id: String,
            enroll_objects_in_workflows: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          list_id:,
          enroll_objects_in_workflows: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              list_id: String,
              enroll_objects_in_workflows: T::Boolean,
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
