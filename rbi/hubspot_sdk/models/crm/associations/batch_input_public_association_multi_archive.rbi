# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        class BatchInputPublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Associations::BatchInputPublicAssociationMultiArchive,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::CRM::Associations::PublicAssociationMultiArchive
              ]
            )
          end
          attr_accessor :inputs

          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::CRM::Associations::PublicAssociationMultiArchive::OrHash
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
                    HubspotSDK::CRM::Associations::PublicAssociationMultiArchive
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
