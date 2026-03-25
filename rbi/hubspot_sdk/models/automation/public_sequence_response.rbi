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

        # The unique identifier for the sequence.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the sequence was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # An array of dependencies for the sequence steps, each represented as a
        # PublicSequenceStepDependencyResponse object.
        sig do
          returns(
            T::Array[
              HubspotSDK::Automation::PublicSequenceStepDependencyResponse
            ]
          )
        end
        attr_accessor :dependencies

        # The name of the sequence.
        sig { returns(String) }
        attr_accessor :name

        # An array of steps included in the sequence, each represented by a
        # PublicSequenceStepResponse object.
        sig do
          returns(T::Array[HubspotSDK::Automation::PublicSequenceStepResponse])
        end
        attr_accessor :steps

        # The date and time when the sequence was last updated.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The ID of the user associated with the sequence.
        sig { returns(String) }
        attr_accessor :user_id

        # The identifier of the folder containing the sequence.
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
          # The unique identifier for the sequence.
          id:,
          # The date and time when the sequence was created.
          created_at:,
          # An array of dependencies for the sequence steps, each represented as a
          # PublicSequenceStepDependencyResponse object.
          dependencies:,
          # The name of the sequence.
          name:,
          # An array of steps included in the sequence, each represented by a
          # PublicSequenceStepResponse object.
          steps:,
          # The date and time when the sequence was last updated.
          updated_at:,
          # The ID of the user associated with the sequence.
          user_id:,
          # The identifier of the folder containing the sequence.
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
