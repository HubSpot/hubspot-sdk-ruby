# typed: strong

module HubSpotSDK
  module Models
    module Events
      class ExternalObjectResolutionMappingRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::ExternalObjectResolutionMappingRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Events::ExternalPrimaryObjectResolutionRule) }
        attr_reader :primary_object_rule

        sig do
          params(
            primary_object_rule:
              HubSpotSDK::Events::ExternalPrimaryObjectResolutionRule::OrHash
          ).void
        end
        attr_writer :primary_object_rule

        sig do
          params(
            primary_object_rule:
              HubSpotSDK::Events::ExternalPrimaryObjectResolutionRule::OrHash
          ).returns(T.attached_class)
        end
        def self.new(primary_object_rule:)
        end

        sig do
          override.returns(
            {
              primary_object_rule:
                HubSpotSDK::Events::ExternalPrimaryObjectResolutionRule
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
