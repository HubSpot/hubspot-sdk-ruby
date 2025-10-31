# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class DealSplitBatchUpsertParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input
              ]
            )
          end
          attr_accessor :inputs

          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(inputs:, request_options: {})
          end

          sig do
            override.returns(
              {
                inputs:
                  T::Array[
                    HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input
                  ],
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Input < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :id

            sig do
              returns(
                T::Array[
                  HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input::Split
                ]
              )
            end
            attr_accessor :splits

            sig do
              params(
                id: Integer,
                splits:
                  T::Array[
                    HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input::Split::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(id:, splits:)
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  splits:
                    T::Array[
                      HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input::Split
                    ]
                }
              )
            end
            def to_hash
            end

            class Split < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::CRM::Objects::DealSplitBatchUpsertParams::Input::Split,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :owner_id

              sig { returns(Float) }
              attr_accessor :percentage

              sig do
                params(owner_id: Integer, percentage: Float).returns(
                  T.attached_class
                )
              end
              def self.new(owner_id:, percentage:)
              end

              sig { override.returns({ owner_id: Integer, percentage: Float }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
