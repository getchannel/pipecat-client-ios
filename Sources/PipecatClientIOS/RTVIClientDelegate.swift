import Foundation

/// Callbacks invoked when changes occur in the voice session.
public protocol RTVIClientDelegate: AnyObject {
    /// Invoked when the underlying transport has connected.
    func onConnected()

    /// Invoked when the underlying transport has disconnected.
    func onDisconnected()

    /// Invoked when the session state has changed.
    func onTransportStateChanged( state: TransportState)

    /// Invoked when the session configuration has returned or changed.
    func onConfigUpdated( config: [ServiceConfig])

    /// Invoked when the configs have been described.
    func onConfigDescribed(config: [ServiceConfigDescription])

    /// Invoked when the actions are available.
    func onActionsAvailable(actions: [ActionDescription])

    /// Invoked when the bot has connected to the session.
    func onBotConnected( participant: Participant)

    /// Invoked when the bot has indicated it is ready for commands.
    func onBotReady(botReadyData: BotReadyData)

    /// Invoked when the bot has disconnected from the session.
    func onBotDisconnected( participant: Participant)

    /// Invoked when a participant has joined the session.
    func onParticipantJoined( participant: Participant)

    /// Invoked when a participant has left the session.
    func onParticipantLeft( participant: Participant)

    /// Invoked when the list of available cameras has changed.
    func onAvailableCamsUpdated( cams: [MediaDeviceInfo])

    /// Invoked when the list of available microphones has updated.
    func onAvailableMicsUpdated( mics: [MediaDeviceInfo])

    /// Invoked when the selected cam has changed.
    func onCamUpdated( cam: MediaDeviceInfo?)

    /// Invoked when the selected microphone has changed.
    func onMicUpdated( mic: MediaDeviceInfo?)

    /// Invoked regularly with the volume of the locally captured audio.
    func onUserAudioLevel( level: Float)

    /// Invoked regularly with the audio volume of each remote participant.
    func onRemoteAudioLevel( level: Float, participant: Participant)

    /// Invoked when the bot starts talking.
    @available(*, deprecated, message: "Use onBotStartedSpeaking() instead")
    func onBotStartedSpeaking( participant: Participant)
    
    /// Invoked when the bot starts talking.
    func onBotStartedSpeaking()

    /// Invoked when the bot stops talking.
    @available(*, deprecated, message: "Use onBotStoppedSpeaking() instead")
    func onBotStoppedSpeaking( participant: Participant)
    
    /// Invoked when the bot stops talking.
    func onBotStoppedSpeaking()

    /// Invoked when the local user starts talking.
    func onUserStartedSpeaking()

    /// Invoked when the local user stops talking.
    func onUserStoppedSpeaking()

    /// Invoked when session metrics are received.
    func onMetrics( data: PipecatMetrics)

    /// Invoked when user transcript data is avaiable.
    func onUserTranscript( data: Transcript)

    /// Invoked when bot transcript data is avaiable.
    func onBotTranscript( data: String)
    
    /// Invoked when the bot LLM text has started.
    func onBotLLMStarted()
    
    /// Invoked when received the bot transcription from the LLM.
    func onBotLLMText(data: BotLLMText)
    
    /// Invoked when the bot LLM text has stopped.
    func onBotLLMStopped()
    
    /// Invoked when the bot TTS text has started.
    func onBotTTSStarted()
    
    /// Invoked when text is spoken by the bot.
    func onBotTTSText(data: BotTTSText)
    
    /// Invoked when the bot TTS text has stopped.
    func onBotTTSStopped()
    
    /// Invoked when data is stored by the bot.
    func onStorageItemStored(data: StorageItemStoredData)

    /// Invoked when we receive an error message from the backend
    func onError( message: String)

    /// Invoked when a message from the backend is received which was not handled by the VoiceClient or a registered helper.
    func onGenericMessage (message:RTVIMessageInbound)
    
    /// Invoked when the set of available cam/mic tracks changes.
    func onTracksUpdated(tracks: Tracks)
    
    /// Invoked when we receive a server message from the bot.
    func onServerMessage(data: Value)
    
    /// Invoked when bot LLM search response data is received.
    func onBotLlmSearchResponse(data: BotLLMSearchResponseData)
}

public extension RTVIClientDelegate {
    func onConnected() {}
    func onDisconnected() {}
    func onTransportStateChanged( state: TransportState) {}
    func onConfigUpdated( config: [ServiceConfig]) {}
    func onConfigDescribed(config: [ServiceConfigDescription]) {}
    func onActionsAvailable(actions: [ActionDescription]) {}
    func onBotConnected( participant: Participant) {}
    func onBotReady(botReadyData: BotReadyData) {}
    func onBotDisconnected( participant: Participant) {}
    func onParticipantJoined( participant: Participant) {}
    func onParticipantLeft( participant: Participant) {}
    func onAvailableCamsUpdated( cams: [MediaDeviceInfo]) {}
    func onAvailableMicsUpdated( mics: [MediaDeviceInfo]) {}
    func onCamUpdated( cam: MediaDeviceInfo?) {}
    func onMicUpdated( mic: MediaDeviceInfo?) {}
    func onUserAudioLevel( level: Float) {}
    func onRemoteAudioLevel( level: Float, participant: Participant) {}
    @available(*, deprecated, message: "Use onBotStartedSpeaking() instead")
    func onBotStartedSpeaking( participant: Participant) {}
    func onBotStartedSpeaking() {}
    @available(*, deprecated, message: "Use onBotStoppedSpeaking() instead")
    func onBotStoppedSpeaking( participant: Participant) {}
    func onBotStoppedSpeaking() {}
    func onUserStartedSpeaking() {}
    func onUserStoppedSpeaking() {}
    func onMetrics( data: PipecatMetrics) {}
    func onUserTranscript( data: Transcript) {}
    func onBotTranscript( data: String) {}
    func onError( message: String) {}
    func onGenericMessage (message:RTVIMessageInbound) {}
    func onTracksUpdated(tracks: Tracks) {}
    func onBotLLMStarted() {}
    func onBotLLMText(data: BotLLMText) {}
    func onBotLLMStopped() {}
    func onBotTTSStarted() {}
    func onBotTTSText(data: BotTTSText) {}
    func onBotTTSStopped() {}
    func onStorageItemStored(data: StorageItemStoredData) {}
    func onServerMessage(data: Value) {}
    func onBotLlmSearchResponse(data: BotLLMSearchResponseData) {}
}
