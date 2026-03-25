# typed: strong

module HubspotSDK
  module Models
    module Events
      class ExternalObjectResolutionMappingResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::ExternalObjectResolutionMappingResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Events::ExternalPrimaryObjectResolutionRule) }
        attr_reader :primary_object_rule

        sig do
          params(
            primary_object_rule:
              HubspotSDK::Events::ExternalPrimaryObjectResolutionRule::OrHash
          ).void
        end
        attr_writer :primary_object_rule

        sig do
          params(
            primary_object_rule:
              HubspotSDK::Events::ExternalPrimaryObjectResolutionRule::OrHash
          ).returns(T.attached_class)
        end
        def self.new(primary_object_rule:)
        end

        sig do
          override.returns(
            {
              primary_object_rule:
                HubspotSDK::Events::ExternalPrimaryObjectResolutionRule
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
