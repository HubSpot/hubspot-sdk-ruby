# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CompletedThirdPartyCallResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch::Variants
              ]
            )
          end
          attr_accessor :caller_id_matches

          sig do
            params(
              caller_id_matches:
                T::Array[
                  T.any(
                    HubspotSDK::Crm::Extensions::ContactCallerID::OrHash,
                    HubspotSDK::Crm::Extensions::CompanyCallerID::OrHash
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
                    HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch::Variants
                  ]
              }
            )
          end
          def to_hash
          end

          module CallerIDMatch
            extend HubspotSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Extensions::ContactCallerID,
                  HubspotSDK::Crm::Extensions::CompanyCallerID
                )
              end

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch::Variants
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
