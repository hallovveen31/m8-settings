.class public Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;
.super Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;
.source "HtcGenericEntryProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getEntryByAnchor(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getEntryByAnchor(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEntryById(J)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getEntryById(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFullEntryList()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getFullEntryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPartialEntryList()Ljava/util/List;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getPartialEntryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBuildEntryList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 21
    const/4 v0, 0x0

    .line 26
    .local v0, order:I
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getWirelessCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .local v1, order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 28
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 30
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 33
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getVoWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 36
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getInfrared()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 38
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 40
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 43
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 46
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDualNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 48
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getMediaLink()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 50
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 56
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 58
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 61
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getSkyfireToolbar()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 64
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 66
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 69
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 71
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 73
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 75
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 77
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 79
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 84
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPhoneCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 86
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 88
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 91
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 92
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getHarman()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 93
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 96
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 98
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 101
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getCharm()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 103
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 106
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 108
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 111
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 113
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 117
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 119
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 121
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 124
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 127
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getActivateDevice()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    .line 129
    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcGenericEntryProvider;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    .line 130
    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->start()V

    return-void
.end method

.method public bridge synthetic updateEntryList()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->updateEntryList()V

    return-void
.end method