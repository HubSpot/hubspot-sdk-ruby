# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchInputPublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Associations::BatchInputPublicDefaultAssociationMultiPost,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::CRM::Associations::PublicDefaultAssociationMultiPost
              ]
            )
          end
          attr_accessor :inputs

          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::CRM::Associations::PublicDefaultAssociationMultiPost::OrHash
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
                    HubspotSDK::CRM::Associations::PublicDefaultAssociationMultiPost
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
