.class public Lcom/android/settings/framework/core/firstpage/provider/VzwEntryProvider;
.super Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;
.source "VzwEntryProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getEntryByAnchor(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getEntryByAnchor(Ljava/lang/String;)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEntryById(J)Lcom/android/settings/framework/activity/HtcWrapHeader;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getEntryById(J)Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFullEntryList()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getFullEntryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPartialEntryList()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->getPartialEntryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBuildEntryList()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getWirelessCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDataUsage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDeviceCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getSystemCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;IZ)Z

    invoke-static {}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntrySource;->getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->addEntry(Lcom/android/settings/framework/activity/HtcWrapHeader;I)Z

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->start()V

    return-void
.end method

.method public bridge synthetic updateEntryList()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/core/firstpage/provider/HtcEntryProviderImpl;->updateEntryList()V

    return-void
.end method
