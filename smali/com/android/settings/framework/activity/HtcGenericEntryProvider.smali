.class public Lcom/android/settings/framework/activity/HtcGenericEntryProvider;
.super Lcom/android/settings/framework/activity/HtcIEntryProvider$Stub;
.source "HtcGenericEntryProvider.java"


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

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 27
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAirplaneMode()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 32
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 37
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getVoWifi()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 43
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getInfrared()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 48
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBluetooth()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 53
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getMobileNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 59
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getOperator()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 65
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDualNetwork()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 70
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getMediaLink()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 76
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getHtcMini()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 81
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getMore()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 89
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPersonalCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 94
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPersonalize()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 100
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getSkyfireToolbar()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 106
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getFingerprint()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 111
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAccountAndSync()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 117
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBackupAssistantPlus()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 122
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getLocation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 127
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getSecurity()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 132
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAccessibility()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 137
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBackupAndReset()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 142
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getTransferMyStuff()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 150
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPhoneCategory()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 155
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDisplay()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 160
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBeatsAudio()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 165
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getBoomSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 170
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcHarmanFeatureFlags;->getHarmanSettingsVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getHarman()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 177
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getUmc()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 182
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getSound()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 187
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getCall()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 193
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getCharm()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 198
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getApps()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 204
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getUser()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 209
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAppAssociation()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 215
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getManufacturer()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 220
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getStorage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 225
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getLanguage()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 230
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDateAndTime()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 236
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getPrinting()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 242
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getDevelopment()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 248
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getActivateDevice()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #order:I
    .restart local v0       #order:I
    int-to-float v3, v1

    invoke-static {v2, v3, p1, v4}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;Z)Z

    .line 253
    invoke-static {}, Lcom/android/settings/framework/activity/HtcWrapHeaderInfo;->getAbout()Lcom/android/settings/framework/activity/HtcWrapHeader;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #order:I
    .restart local v1       #order:I
    int-to-float v3, v0

    invoke-static {v2, v3, p1}, Lcom/android/settings/framework/activity/HtcGenericEntryProvider;->addWrapHeader(Lcom/android/settings/framework/activity/HtcWrapHeader;FLcom/android/settings/framework/activity/HtcWrapHeaderList;)Z

    .line 257
    return-void

    :cond_0
    move v0, v1

    .end local v1           #order:I
    .restart local v0       #order:I
    goto/16 :goto_0
.end method
