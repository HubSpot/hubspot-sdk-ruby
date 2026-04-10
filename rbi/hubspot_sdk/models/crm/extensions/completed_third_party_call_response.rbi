# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CompletedThirdPartyCallResponse < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch::Variants
              ]
            )
          end
          attr_accessor :caller_id_matches

          sig do
            params(
              caller_id_matches:
                T::Array[
                  T.any(
                    HubSpotSDK::Crm::Extensions::ContactCallerID::OrHash,
                    HubSpotSDK::Crm::Extensions::CompanyCallerID::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(caller_id_matches:)
          end

          sig do
            override.returns(
              {
                caller_id_matches:
                  T::Array[
                    HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch::Variants
                  ]
              }
            )
          end
          def to_hash
          end

          module CallerIDMatch
            extend HubSpotSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Extensions::ContactCallerID,
                  HubSpotSDK::Crm::Extensions::CompanyCallerID
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
