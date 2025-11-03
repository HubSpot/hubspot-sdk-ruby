# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListUpdateFiltersParams < HubspotSDK::Models::Crm::ListFilterUpdateRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListUpdateFiltersParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A flag indicating whether or not the memberships added to the list as a result
        # of the filter change should be enrolled in workflows that are relevant to this
        # list.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enroll_objects_in_workflows

        sig { params(enroll_objects_in_workflows: T::Boolean).void }
        attr_writer :enroll_objects_in_workflows

        sig do
          params(
            enroll_objects_in_workflows: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A flag indicating whether or not the memberships added to the list as a result
          # of the filter change should be enrolled in workflows that are relevant to this
          # list.
          enroll_objects_in_workflows: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
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
