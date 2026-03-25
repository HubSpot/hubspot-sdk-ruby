# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderActionResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderActionResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # When the requested changes have been completed.
        sig { returns(Time) }
        attr_accessor :completed_at

        # Timestamp representing when the task was started at.
        sig { returns(Time) }
        attr_accessor :started_at

        # Current status of the task.
        sig do
          returns(HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol)
        end
        attr_accessor :status

        # ID of the task.
        sig { returns(String) }
        attr_accessor :task_id

        # Detailed errors resulting from the task.
        sig { returns(T.nilable(T::Array[HubspotSDK::StandardError])) }
        attr_reader :errors

        sig { params(errors: T::Array[HubspotSDK::StandardError::OrHash]).void }
        attr_writer :errors

        # Link to check the status of the task.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :links

        sig { params(links: T::Hash[Symbol, String]).void }
        attr_writer :links

        # Number of errors resulting from the requested changes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :num_errors

        sig { params(num_errors: Integer).void }
        attr_writer :num_errors

        # Timestamp representing when the task was requested.
        sig { returns(T.nilable(Time)) }
        attr_reader :requested_at

        sig { params(requested_at: Time).void }
        attr_writer :requested_at

        sig { returns(T.nilable(HubspotSDK::Files::Folder)) }
        attr_reader :result

        sig { params(result: HubspotSDK::Files::Folder::OrHash).void }
        attr_writer :result

        sig do
          params(
            completed_at: Time,
            started_at: Time,
            status: HubspotSDK::Files::FolderActionResponse::Status::OrSymbol,
            task_id: String,
            errors: T::Array[HubspotSDK::StandardError::OrHash],
            links: T::Hash[Symbol, String],
            num_errors: Integer,
            requested_at: Time,
            result: HubspotSDK::Files::Folder::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When the requested changes have been completed.
          completed_at:,
          # Timestamp representing when the task was started at.
          started_at:,
          # Current status of the task.
          status:,
          # ID of the task.
          task_id:,
          # Detailed errors resulting from the task.
          errors: nil,
          # Link to check the status of the task.
          links: nil,
          # Number of errors resulting from the requested changes.
          num_errors: nil,
          # Timestamp representing when the task was requested.
          requested_at: nil,
          result: nil
        )
        end

        sig do
          override.returns(
            {
              completed_at: Time,
              started_at: Time,
              status:
                HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol,
              task_id: String,
              errors: T::Array[HubspotSDK::StandardError],
              links: T::Hash[Symbol, String],
              num_errors: Integer,
              requested_at: Time,
              result: HubspotSDK::Files::Folder
            }
          )
        end
        def to_hash
        end

        # Current status of the task.
        module Status
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Files::FolderActionResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CANCELED =
            T.let(
              :CANCELED,
              HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :PROCESSING,
              HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Files::FolderActionResponse::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
