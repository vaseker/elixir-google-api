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

defmodule GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryRemovals do
  @moduledoc """
  Contains the set of entries to remove from a local database.

  ## Attributes

  *   `rawIndices` (*type:* `GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RawIndices.t`, *default:* `nil`) - The raw removal indices for a local list.
  *   `riceIndices` (*type:* `GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RiceDeltaEncoding.t`, *default:* `nil`) - The encoded local, lexicographically-sorted list indices, using a Golomb-Rice encoding. Used for sending compressed removal indices. The removal indices (uint32) are sorted in ascending order, then delta encoded and stored as encoded_data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rawIndices => GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RawIndices.t() | nil,
          :riceIndices =>
            GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RiceDeltaEncoding.t() | nil
        }

  field(:rawIndices, as: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RawIndices)
  field(:riceIndices, as: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1RiceDeltaEncoding)
end

defimpl Poison.Decoder, for: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryRemovals do
  def decode(value, options) do
    GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryRemovals.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebRisk.V1.Model.GoogleCloudWebriskV1ThreatEntryRemovals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end