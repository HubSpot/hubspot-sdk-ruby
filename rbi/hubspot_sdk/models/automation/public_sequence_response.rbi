# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSequenceResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            T::Array[
              HubspotSDK::Automation::PublicSequenceStepDependencyResponse
            ]
          )
        end
        attr_accessor :dependencies

        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(T::Array[HubspotSDK::Automation::PublicSequenceStepResponse])
        end
        attr_accessor :steps

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(String) }
        attr_accessor :user_id

        sig { returns(T.nilable(String)) }
        attr_reader :folder_id

        sig { params(folder_id: String).void }
        attr_writer :folder_id

        sig do
          returns(
            T.nilable(HubspotSDK::Automation::PublicSequenceSettingsResponse)
          )
        end
        attr_reader :settings

        sig do
          params(
            settings:
              HubspotSDK::Automation::PublicSequenceSettingsResponse::OrHash
          ).void
        end
        attr_writer :settings

        sig do
          params(
            id: String,
            created_at: Time,
            dependencies:
              T::Array[
                HubspotSDK::Automation::PublicSequenceStepDependencyResponse::OrHash
              ],
            name: String,
            steps:
              T::Array[
                HubspotSDK::Automation::PublicSequenceStepResponse::OrHash
              ],
            updated_at: Time,
            user_id: String,
            folder_id: String,
            settings:
              HubspotSDK::Automation::PublicSequenceSettingsResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          dependencies:,
          name:,
          steps:,
          updated_at:,
          user_id:,
          folder_id: nil,
          settings: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              dependencies:
                T::Array[
                  HubspotSDK::Automation::PublicSequenceStepDependencyResponse
                ],
              name: String,
              steps:
                T::Array[HubspotSDK::Automation::PublicSequenceStepResponse],
              updated_at: Time,
              user_id: String,
              folder_id: String,
              settings: HubspotSDK::Automation::PublicSequenceSettingsResponse
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
