# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class PublicDealSplitsBatchCreateRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::PublicDealSplitsBatchCreateRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[HubspotSDK::CRM::Objects::PublicDealSplitsCreateRequest]
            )
          end
          attr_accessor :inputs

          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::CRM::Objects::PublicDealSplitsCreateRequest::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(inputs:)
          end

          sig do
            override.returns(
              {
                inputs:
                  T::Array[
                    HubspotSDK::CRM::Objects::PublicDealSplitsCreateRequest
                  ]
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
