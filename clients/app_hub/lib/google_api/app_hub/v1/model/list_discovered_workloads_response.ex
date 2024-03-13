# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AppHub.V1.Model.ListDiscoveredWorkloadsResponse do
  @moduledoc """
  Response for ListDiscoveredWorkloads.

  ## Attributes

  *   `discoveredWorkloads` (*type:* `list(GoogleApi.AppHub.V1.Model.DiscoveredWorkload.t)`, *default:* `nil`) - List of Discovered Workloads.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token identifying a page of results the server should return.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :discoveredWorkloads => list(GoogleApi.AppHub.V1.Model.DiscoveredWorkload.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:discoveredWorkloads, as: GoogleApi.AppHub.V1.Model.DiscoveredWorkload, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AppHub.V1.Model.ListDiscoveredWorkloadsResponse do
  def decode(value, options) do
    GoogleApi.AppHub.V1.Model.ListDiscoveredWorkloadsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppHub.V1.Model.ListDiscoveredWorkloadsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
