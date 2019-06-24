# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Vision.V1.Model.ListReferenceImagesResponse do
  @moduledoc """
  Response message for the `ListReferenceImages` method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The next_page_token returned from a previous List request, if any.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of items to return. Default 10, maximum 100.
  *   `referenceImages` (*type:* `list(GoogleApi.Vision.V1.Model.ReferenceImage.t)`, *default:* `nil`) - The list of reference images.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :pageSize => integer(),
          :referenceImages => list(GoogleApi.Vision.V1.Model.ReferenceImage.t())
        }

  field(:nextPageToken)
  field(:pageSize)
  field(:referenceImages, as: GoogleApi.Vision.V1.Model.ReferenceImage, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.ListReferenceImagesResponse do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.ListReferenceImagesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.ListReferenceImagesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
