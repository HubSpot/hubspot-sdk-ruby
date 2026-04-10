# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Properties
        class GroupUpdateParams < HubSpotSDK::Models::PropertyGroupUpdate
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Properties::GroupUpdateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :object_type

          sig { returns(String) }
          attr_accessor :group_name

          sig do
            params(
              object_type: String,
              group_name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(object_type:, group_name:, request_options: {})
          end

          sig do
            override.returns(
              {
                object_type: String,
                group_name: String,
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
end
