# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListUpdateListFiltersParams < HubspotSDK::Models::Crm::ListFilterUpdateRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListUpdateListFiltersParams,
              HubspotSDK::Internal::AnyHash
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
            request_options: HubspotSDK::RequestOptions::OrHash
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
