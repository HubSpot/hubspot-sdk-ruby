# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Cms::Blogs::Tags::BatchTest < HubspotSDK::Test::ResourceTest
  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.batch.delete(inputs: ["string"])

    assert_pattern do
      response => nil
    end
  end

  def test_create_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.blogs.tags.batch.create_batch(
        inputs: [
          {
            id: "id",
            created: "2019-12-27T18:11:19.117Z",
            deletedAt: "2019-12-27T18:11:19.117Z",
            language: :aa,
            name: "name",
            slug: "slug",
            translatedFromId: 0,
            updated: "2019-12-27T18:11:19.117Z"
          }
        ]
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_get_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.batch.get_batch(inputs: ["string"])

    assert_pattern do
      response => StringIO
    end
  end

  def test_update_batch_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.cms.blogs.tags.batch.update_batch(inputs: [{}])

    assert_pattern do
      response => StringIO
    end
  end
end
