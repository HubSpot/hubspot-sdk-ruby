# typed: strong

module HubspotSDK
  module Models
    module Crm
      class UnpauseRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::UnpauseRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :proposed_next_billing_date

        sig do
          params(proposed_next_billing_date: Integer).returns(T.attached_class)
        end
        def self.new(proposed_next_billing_date:)
        end

        sig { override.returns({ proposed_next_billing_date: Integer }) }
        def to_hash
        end
      end
    end
  end
end
