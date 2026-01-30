local MyLibrary = {}

MyLibrary.Version = "1.0.0"
MyLibrary.Author = "Jriik89"

MyLibrary.Remotes = {
    VoiceChatTokenRequest = getRemote("VoiceChatTokenRequest"),
    GetServerVersion = getRemote("GetServerVersion"),
    GetServerChannel = getRemote("GetServerChannel"),
    WhisperChat = getRemote("WhisperChat"),
    CanChatWith = getRemote("CanChatWith"),
    SetPlayerBlockList = getRemote("SetPlayerBlockList"),
    UpdatePlayerBlockList = getRemote("UpdatePlayerBlockList"),
    NewPlayerGroupDetails = getRemote("NewPlayerGroupDetails"),
    SendPlayerBlockList = getRemote("SendPlayerBlockList"),
    UpdateLocalPlayerBlockList = getRemote("UpdateLocalPlayerBlockList"),
    SendPlayerProfileSettings = getRemote("SendPlayerProfileSettings"),
    ShowPlayerJoinedFriendsToast = getRemote("ShowPlayerJoinedFriendsToast"),
    ShowFriendJoinedPlayerToast = getRemote("ShowFriendJoinedPlayerToast"),
    SetDialogInUse = getRemote("SetDialogInUse"),
    ContactListInvokeIrisInvite = getRemote("ContactListInvokeIrisInvite"),
    ContactListIrisInviteTeleport = getRemote("ContactListIrisInviteTeleport"),
    UpdateCurrentCall = getRemote("UpdateCurrentCall"),
    RequestDeviceCameraOrientationCapability = getRemote("RequestDeviceCameraOrientationCapability"),
    RequestDeviceCameraCFrame = getRemote("RequestDeviceCameraCFrame"),
    ReceiveLikelySpeakingUsers = getRemote("ReceiveLikelySpeakingUsers"),
    ReferredPlayerJoin = getRemote("ReferredPlayerJoin"),
    CmdrFunction = getRemote("CmdrFunction"),
    CmdrEvent = getRemote("CmdrEvent"),
    UserOwnsGamePass = getRemote("UserOwnsGamePass"),

    PromptGamePassPurchase = getRemote("RE/PromptGamePassPurchase"),
    PromptProductPurchase = getRemote("RE/PromptProductPurchase"),
    PromptPurchase = getRemote("RE/PromptPurchase"),
    ProductPurchaseFinished = getRemote("RE/ProductPurchaseFinished"),
    DisplaySystemMessage = getRemote("RE/DisplaySystemMessage"),
    GiftGamePass = getRemote("RF/GiftGamePass"),
    ProductPurchaseCompleted = getRemote("RE/ProductPurchaseCompleted"),

    PlaySound = getRemote("RE/PlaySound"),
    PlayFishingEffect = getRemote("RE/PlayFishingEffect"),
    ReplicateTextEffect = getRemote("RE/ReplicateTextEffect"),
    DestroyEffect = getRemote("RE/DestroyEffect"),
    ReplicateCutscene = getRemote("RE/ReplicateCutscene"),
    StopCutscene = getRemote("RE/StopCutscene"),

    BaitSpawned = getRemote("RE/BaitSpawned"),
    FishCaught = getRemote("RE/FishCaught"),
    TextNotification = getRemote("RE/TextNotification"),

    PurchaseWeatherEvent = getRemote("RF/PurchaseWeatherEvent"),
    ActivateEnchantingAltar = getRemote("RE/ActivateEnchantingAltar"),
    UpdateEnchantState = getRemote("RE/UpdateEnchantState"),
    RollEnchant = getRemote("RE/RollEnchant"),

    ActivateQuestLine = getRemote("RF/ActivateQuestLine"),
    IncrementOnboardingStep = getRemote("RE/IncrementOnboardingStep"),
    UpdateAutoFishingState = getRemote("RF/UpdateAutoFishingState"),
    UpdateChargeState = getRemote("RE/UpdateChargeState"),
    ChargeFishingRod = getRemote("RF/ChargeFishingRod"),
    CancelFishingInputs = getRemote("RF/CancelFishingInputs"),

    PlayVFX = getRemote("RE/PlayVFX"),
    FishingStopped = getRemote("RE/FishingStopped"),
    RequestFishingMinigameStarted = getRemote("RF/RequestFishingMinigameStarted"),
    FishingCompleted = getRemote("RE/FishingCompleted"),
    FishingMinigameChanged = getRemote("RE/FishingMinigameChanged"),
    UpdateAutoSellThreshold = getRemote("RF/UpdateAutoSellThreshold"),
    UpdateFishingRadar = getRemote("RF/UpdateFishingRadar"),
    ObtainedNewFishNotification = getRemote("RE/ObtainedNewFishNotification"),

    PurchaseSkinCrate = getRemote("RF/PurchaseSkinCrate"),
    RollSkinCrate = getRemote("RE/RollSkinCrate"),
    EquipRodSkin = getRemote("RE/EquipRodSkin"),
    UnequipRodSkin = getRemote("RE/UnequipRodSkin"),

    EquipItem = getRemote("RE/EquipItem"),
    UnequipItem = getRemote("RE/UnequipItem"),
    EquipBait = getRemote("RE/EquipBait"),
    FavoriteItem = getRemote("RE/FavoriteItem"),
    FavoriteStateChanged = getRemote("RE/FavoriteStateChanged"),
    UnequipToolFromHotbar = getRemote("RE/UnequipToolFromHotbar"),
    EquipToolFromHotbar = getRemote("RE/EquipToolFromHotbar"),

    SellItem = getRemote("RF/SellItem"),
    SellAllItems = getRemote("RF/SellAllItems"),
    PurchaseFishingRod = getRemote("RF/PurchaseFishingRod"),
    PurchaseBait = getRemote("RF/PurchaseBait"),
    PurchaseGear = getRemote("RF/PurchaseGear"),

    CancelPrompt = getRemote("RE/CancelPrompt"),
    FeatureUnlocked = getRemote("RE/FeatureUnlocked"),
    ChangeSetting = getRemote("RE/ChangeSetting"),

    PurchaseBoat = getRemote("RF/PurchaseBoat"),
    SpawnBoat = getRemote("RF/SpawnBoat"),
    DespawnBoat = getRemote("RF/DespawnBoat"),
    BoatChanged = getRemote("RE/BoatChanged"),

    VerifyGroupReward = getRemote("RE/VerifyGroupReward"),
    ConsumePotion = getRemote("RF/ConsumePotion"),
    RedeemChristmasItems = getRemote("RF/RedeemChristmasItems"),

    EquipOxygenTank = getRemote("RF/EquipOxygenTank"),
    UnequipOxygenTank = getRemote("RF/UnequipOxygenTank"),

    ClaimDailyLogin = getRemote("RF/ClaimDailyLogin"),
    RecievedDailyRewards = getRemote("RE/RecievedDailyRewards"),
    ReconnectPlayer = getRemote("RE/ReconnectPlayer"),

    CanSendTrade = getRemote("RF/CanSendTrade"),
    InitiateTrade = getRemote("RF/InitiateTrade"),
    AwaitTradeResponse = getRemote("RF/AwaitTradeResponse"),

    RedeemCode = getRemote("RF/RedeemCode"),
    LoadVFX = getRemote("RF/LoadVFX"),
    RequestSpin = getRemote("RF/RequestSpin"),
    SpinWheel = getRemote("RE/SpinWheel"),
    PromptFavoriteGame = getRemote("RF/PromptFavoriteGame"),
    ClaimNotification = getRemote("RE/ClaimNotification"),

    BlackoutScreen = getRemote("RE/BlackoutScreen"),
    ElevatorStateUpdated = getRemote("RE/ElevatorStateUpdated"),

    Added = getRemote("Added"),
    Removed = getRemote("Removed"),
    Update = getRemote("Update"),
    UpdateReplicateTo = getRemote("UpdateReplicateTo"),
    Set = getRemote("Set"),
    ArrayUpdate = getRemote("ArrayUpdate")
}

function MyLibrary.Print(msg)
    print("[MyLibrary]:", msg)
end

return MyLibrary
