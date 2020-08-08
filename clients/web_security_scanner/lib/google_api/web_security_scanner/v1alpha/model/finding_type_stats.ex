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

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.FindingTypeStats do
  @moduledoc """
  A FindingTypeStats resource represents stats regarding a specific FindingType of Findings under a given ScanRun.

  ## Attributes

  *   `findingCount` (*type:* `integer()`, *default:* `nil`) - The count of findings belonging to this finding type.
  *   `findingType` (*type:* `String.t`, *default:* `nil`) - The finding type associated with the stats.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :findingCount => integer(),
          :findingType => String.t()
        }

  field(:findingCount)
  field(:findingType)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.FindingTypeStats do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.FindingTypeStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.FindingTypeStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
