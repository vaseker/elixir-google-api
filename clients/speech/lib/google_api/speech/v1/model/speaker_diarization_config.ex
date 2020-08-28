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

defmodule GoogleApi.Speech.V1.Model.SpeakerDiarizationConfig do
  @moduledoc """
  Config to enable speaker diarization.

  ## Attributes

  *   `enableSpeakerDiarization` (*type:* `boolean()`, *default:* `nil`) - If 'true', enables speaker detection for each recognized word in the top alternative of the recognition result using a speaker_tag provided in the WordInfo.
  *   `maxSpeakerCount` (*type:* `integer()`, *default:* `nil`) - Maximum number of speakers in the conversation. This range gives you more flexibility by allowing the system to automatically determine the correct number of speakers. If not set, the default value is 6.
  *   `minSpeakerCount` (*type:* `integer()`, *default:* `nil`) - Minimum number of speakers in the conversation. This range gives you more flexibility by allowing the system to automatically determine the correct number of speakers. If not set, the default value is 2.
  *   `speakerTag` (*type:* `integer()`, *default:* `nil`) - Output only. Unused.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableSpeakerDiarization => boolean(),
          :maxSpeakerCount => integer(),
          :minSpeakerCount => integer(),
          :speakerTag => integer()
        }

  field(:enableSpeakerDiarization)
  field(:maxSpeakerCount)
  field(:minSpeakerCount)
  field(:speakerTag)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.SpeakerDiarizationConfig do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.SpeakerDiarizationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.SpeakerDiarizationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
