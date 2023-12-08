# LLM's Assessment for actual conversation content

Currently no LLM has the functionality to do this task by itself.

## Here is the output that we want to get to:

1. **Tone and Vocal Quality (SER)
   - Tech Recruiter: Warmth: 9, Confidence: 8, Sincerity: 9
   - CEO: Warmth: 7, Confidence: 9, Sincerity: 8
   - Overall Rating: 8.5
2. **Pacing (Praat)**
   - Tech Recruiter: Pacing Score: 8
   - CEO: Pacing Score: 9
   - Overall Rating: 8.5
3. **Use of Silence (VAD)**
   - Tech Recruiter: Effective Use of Silence: 7
   - CEO: Effective Use of Silence: 8
   - Overall Rating: 7.5
4. **Audibility and Clarity (PESQ)**
   - Tech Recruiter: Audibility: 9, Clarity: 9
   - CEO: Audibility: 8, Clarity: 9
   - Overall Rating: 8.8
5. **Interruption Handling (Rasa)**
   - Tech Recruiter: Interruption Handling: 9
   - CEO: Interruption Handling: 8
   - Overall Rating: 8.5
6. **Verbal Affirmations (Wit.ai)**
   - Tech Recruiter: Verbal Affirmations Count: 4, Appropriateness: 9
   - CEO: Verbal Affirmations Count: 3, Appropriateness: 8
   - Overall Rating: 8.5
7. **Non-Verbal Sounds (AudioSet)**
   - Tech Recruiter: Impact of Non-Verbal Sounds: 7
   - CEO: Impact of Non-Verbal Sounds: 8
   - Overall Rating: 7.5
8. **Call Technical Quality (WebRTC)**
   - Tech Recruiter: Technical Quality: 9
   - CEO: Technical Quality: 9
   - Overall Rating: 9

Certainly, Dev Master CP. Below are the markdown tables for each of the criteria you've specified.


## Here are some models that's been trained for each of the criteria:

### 1. Tone and Vocal Quality (Why: Emotional Impact)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>DeepMoji</td>
        <td>Uses deep learning to understand emotional content, could be adapted for voice.</td>
        <td>7/10</td>
      </tr>
      <tr>
        <td>OpenSMILE</td>
        <td>Feature extraction for speech analysis, including emotional tone.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>SER (Speech Emotion Recognition)</td>
        <td>General approach for recognizing emotions in speech.</td>
        <td>9/10</td>
      </tr>
    </tbody>
  </table>
</div>

### 2. Pacing (Why: Comprehension and Comfort)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Praat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>Analyzes speech rate and other prosodic features. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>HTK (Hidden Markov Toolkit)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>Can be used for speech rate analysis.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>7/10</td>
      </tr>
      <tr>
        <td>Tempo-CNN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>A CNN-based model for tempo estimation.&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>6/10</td>
      </tr>
    </tbody>
  </table>
</div>

### 3. Use of Silence (Why: Thoughtfulness and Respect)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>VAD (Voice Activity Detection)</td>
        <td>Detects voice and silence segments.</td>
        <td>9/10</td>
      </tr>
      <tr>
        <td>pyAudioAnalysis</td>
        <td>Includes silence removal as a feature.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>WebRTC VAD</td>
        <td>A VAD implemented in WebRTC project.</td>
        <td>7/10</td>
      </tr>
    </tbody>
  </table>
</div>

### 4. Audibility and Clarity (Why: Basic Communication)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>PESQ (Perceptual Evaluation of Speech Quality)&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
        <td>Measures speech quality.</td>
        <td>9/10</td>
      </tr>
      <tr>
        <td>POLQA</td>
        <td>Another standard for speech quality assessment.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>MOSNet</td>
        <td>Deep learning-based model for speech quality assessment.</td>
        <td>7/10</td>
      </tr>
    </tbody>
  </table>
</div>

### 5. Interruption Handling (Why: Respect and Flow)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Dialogflow</td>
        <td>Can be customized to handle interruptions.</td>
        <td>7/10</td>
      </tr>
      <tr>
        <td>Rasa</td>
        <td>Open-source conversational AI, can be customized.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>Microsoft Bot Framework</td>
        <td>Can be adapted for interruption handling.</td>
        <td>6/10</td>
      </tr>
    </tbody>
  </table>
</div>

### 6. Verbal Affirmations (Why: Engagement)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Wit.ai</td>
        <td>Natural Language Processing for recognizing affirmations.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>LUIS (Language Understanding Intelligent Service)</td>
        <td>Can be trained for this.</td>
        <td>7/10</td>
      </tr>
      <tr>
        <td>Snips NLU</td>
        <td>On-device NLU engine.</td>
        <td>6/10</td>
      </tr>
    </tbody>
  </table>
</div>

### 7. Non-Verbal Sounds (Why: Subtext)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>AudioSet</td>
        <td>A dataset labeled for sound events, can be used to train models.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>ESC-50</td>
        <td>Dataset for environmental sound classification.</td>
        <td>7/10</td>
      </tr>
      <tr>
        <td>SoundNet</td>
        <td>Trained on a large amount of unlabeled video data.</td>
        <td>6/10</td>
      </tr>
    </tbody>
  </table>
</div>


### 8. Call Technical Quality (Why: Seamless Interaction)

<div style="width: 100%;">
  <table style="width: 100%;">
    <thead>
      <tr>
        <th>Model</th>
        <th>Description</th>
        <th>Confidence</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Jitter Buffer Algorithms</td>
        <td>For handling packet loss and jitter.</td>
        <td>8/10</td>
      </tr>
      <tr>
        <td>WebRTC</td>
        <td>Built-in features for call quality.</td>
        <td>9/10</td>
      </tr>
      <tr>
        <td>Asterisk</td>
        <td>Open-source telephony engine, can be customized.</td>
        <td>7/10</td>
      </tr>
    </tbody>
  </table>
</div>