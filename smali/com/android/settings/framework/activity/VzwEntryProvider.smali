.class public Lcom/android/settings/framework/activity/VzwEntryProvider;
.super Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;
.source "VzwEntryProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadEntryList(Lcom/android/settings/framework/activity/HtcWrapHeaderList;)V
    .locals 5
    .parameter "outWrapHeaderList"

    .prologue
    const/4 v4, 0x1

    .line 17
    const/4 v0, 0x0

    .line 22
    .local v0, order:I
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getWirelessCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .local v1, order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 27
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 32
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 37
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 42
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 47
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDataUsage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 53
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 59
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getHtcMini()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 64
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 72
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDeviceCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 77
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcBeatsAudioFeatureFlags;->getBeatsAudioSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    move v0, v1

    .line 84
    .end local v1           #order:I
    .restart local v0       #order:I
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 89
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 94
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 99
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 104
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 110
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 115
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 120
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 127
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 133
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 138
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 148
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 153
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 159
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 164
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 169
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 174
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 179
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 184
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 192
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getSystemCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 197
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 202
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 208
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 214
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 220
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 225
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/VzwEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 229
    return-void
.end method
