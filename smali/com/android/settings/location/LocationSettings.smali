.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$LocationModeAdapter;,
        Lcom/android/settings/location/LocationSettings$LocationModeInfo;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_LOCATION_MODE:I = 0x1

.field private static final DIALOG_ID_VZW_MASTER_SWITCH_ON:I = 0x2

.field private static final GPS_POLICY_FORCE_OFF:I = 0x2

.field private static final GPS_POLICY_FORCE_ON:I = 0x1

.field private static final GPS_POLICY_NORMAL:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

.field private mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

.field private mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

.field private mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

.field private mHtcE911Preference:Lcom/htc/preference/HtcPreference;

.field private mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

.field private mInjector:Lcom/android/settings/location/SettingsInjector;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLocationMode:Lcom/htc/preference/HtcPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcom/htc/widget/HtcToggleButtonLight;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 622
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/location/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationSwitchAndCategories()V

    return-void
.end method

.method private addLocationServices()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    if-nez v1, :cond_1

    .line 362
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "addAppSettings(): mCategoryAppSettings = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, locationServices:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 3
    .parameter
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;",
            "Lcom/htc/preference/HtcPreferenceCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, prefs:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 197
    new-instance v2, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 204
    .local v0, entry:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 206
    .end local v0           #entry:Lcom/htc/preference/HtcPreference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 210
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 211
    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 226
    .local v0, enabled:Z
    :goto_0
    new-instance v4, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    .line 227
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    const v5, 0x7f0c0a9f

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 228
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 231
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->supportE911()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    .line 233
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 234
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0614

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 235
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0615

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 236
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 237
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 241
    :cond_1
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    .line 242
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0ef2

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 243
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 244
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 245
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V

    .line 248
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    new-instance v4, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    .line 250
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 251
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 252
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/location/LocationSettings;->addCallback(Ljava/lang/Object;)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAGPSSyncTimeVisibility(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    new-instance v4, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    .line 258
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 260
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/location/LocationSettings;->addCallback(Ljava/lang/Object;)V

    .line 268
    :cond_3
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    .line 269
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    const v3, 0x7f0c0ef7

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 272
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->loadRecentLocationApps()V

    .line 279
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    .line 280
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    const v3, 0x7f0c0199

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 283
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->addLocationServices()V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->requestHandlers()V

    .line 286
    return-object v1

    .end local v0           #enabled:Z
    :cond_4
    move v0, v3

    .line 215
    goto/16 :goto_0

    .restart local v0       #enabled:Z
    :cond_5
    move v4, v3

    .line 250
    goto/16 :goto_1

    :cond_6
    move v2, v3

    .line 258
    goto :goto_2
.end method

.method private getGpsPolicyStatus()I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "location_providers_allowed"

    invoke-static {v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, QueryValue:Ljava/lang/String;
    const/16 v6, 0x2c

    const-string v7, "GPS_blocked"

    invoke-static {v0, v6, v7}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v2

    .line 491
    .local v2, bBlockedBySprint:Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps_lock_status"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v4, v6, :cond_3

    move v1, v4

    .line 492
    .local v1, bBlockedByMDM:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 494
    .local v3, bGPSEnabled:Z
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 495
    sget-object v6, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGpsPolicyStatus(): bBlockedBySprint = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bBlockedByMDM = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bGPSEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    .line 499
    :cond_1
    if-eqz v3, :cond_4

    move v5, v4

    .line 503
    :cond_2
    :goto_1
    return v5

    .end local v1           #bBlockedByMDM:Z
    .end local v3           #bGPSEnabled:Z
    :cond_3
    move v1, v5

    .line 491
    goto :goto_0

    .line 500
    .restart local v1       #bBlockedByMDM:Z
    .restart local v3       #bGPSEnabled:Z
    :cond_4
    const/4 v5, 0x2

    goto :goto_1
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 445
    .local v0, um:Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private loadRecentLocationApps()V
    .locals 5

    .prologue
    .line 332
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    if-nez v3, :cond_1

    .line 333
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v4, "loadRecentLocationApps(): mCategoryRecentLocationRequests = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceCategory;->removeAll()V

    .line 337
    new-instance v1, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v1, v3}, Lcom/android/settings/location/RecentLocationApps;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    .line 338
    .local v1, recentApps:Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v1}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, recentLocationRequests:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V

    goto :goto_0

    .line 343
    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, banner:Lcom/htc/preference/HtcPreference;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 345
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private refreshLocationModePreference()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    if-nez v2, :cond_1

    .line 308
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshLocationModePreference(): mLocationMode = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 314
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0ef6

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    .line 317
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0198

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    .line 320
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0ef4

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    .line 323
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0ef3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshLocationSwitchAndCategories()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 290
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshLocationCategories()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 295
    .local v0, enabled:Z
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationSettings;->setMasterSwitchChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    if-nez v1, :cond_3

    .line 299
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshLocationCategories(): mCategoryRecentLocationRequests = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setMasterSwitchChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-nez v0, :cond_1

    .line 474
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "setMasterSwitchChecked(): mSwitch = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 3
    .parameter "toggleButton"
    .parameter "isChecked"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->getGpsPolicyStatus()I

    move-result v2

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    .line 385
    if-nez p2, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationSettings;->setMasterSwitchChecked(Z)V

    .line 411
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 385
    goto :goto_0

    .line 389
    :cond_1
    if-eqz p2, :cond_6

    .line 390
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    .line 401
    :goto_2
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 394
    :cond_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_2

    .line 397
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance v7, Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    .line 106
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 107
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.location.InjectedSettingChanged"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.location.MODE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    new-instance v7, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 131
    .local v0, actionBar:Landroid/app/ActionBar;
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 132
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v4

    .line 133
    .local v4, custContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v4}, Lcom/htc/widget/ActionBarContainer;->removeAllViews()V

    .line 134
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 135
    .local v2, actionBarText:Lcom/htc/widget/ActionBarText;
    const v7, 0x7f0c0577

    invoke-virtual {v2, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 136
    invoke-virtual {v4, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    move v3, v5

    .line 145
    .local v3, checked:Z
    :goto_0
    new-instance v7, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    .line 146
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcToggleButtonLight;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setMode(I)V

    .line 150
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    .line 151
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    .line 152
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 153
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 156
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    .line 157
    return-void

    .end local v3           #checked:Z
    :cond_0
    move v3, v6

    .line 142
    goto :goto_0

    .restart local v3       #checked:Z
    :cond_1
    move v5, v6

    .line 150
    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 21
    .parameter "dialogId"

    .prologue
    .line 509
    packed-switch p1, :pswitch_data_0

    .line 602
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog onClick(): unknow dialogId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v16

    :goto_0
    return-object v16

    .line 512
    :pswitch_0
    new-instance v19, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040021

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/content/Context;I)V

    .line 513
    .local v19, locationModeAdapter:Lcom/android/settings/location/LocationSettings$LocationModeAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 516
    .local v20, mode:I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getGpsPolicyStatus()I

    move-result v17

    .line 519
    .local v17, gpsPolicyStatus:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0c019c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, modeHighAccuracyDescription:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0c019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 526
    .local v9, modeBatterySavingDescription:Ljava/lang/String;
    :goto_2
    const/4 v2, 0x3

    new-array v0, v2, [Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    move-object/from16 v18, v0

    const/4 v8, 0x0

    new-instance v2, Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    const v3, 0x7f0c0ef3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v17, :cond_1

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    :cond_1
    const/4 v6, 0x1

    :goto_3
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_7

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/location/LocationSettings$LocationModeInfo;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v2, v18, v8

    const/4 v2, 0x1

    new-instance v6, Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    const v3, 0x7f0c0ef4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v17, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    :cond_2
    const/4 v10, 0x1

    :goto_5
    const/4 v3, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/location/LocationSettings$LocationModeInfo;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v6, v18, v2

    const/4 v2, 0x2

    new-instance v10, Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    const v3, 0x7f0c0198

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v3, 0x7f0c019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v17, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_a

    :cond_3
    const/4 v14, 0x1

    :goto_7
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_b

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/location/LocationSettings$LocationModeInfo;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v10, v18, v2

    .line 545
    .local v18, items:[Lcom/android/settings/location/LocationSettings$LocationModeInfo;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;->addAll([Ljava/lang/Object;)V

    .line 547
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0ef2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/LocationSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    .line 574
    .local v16, dialog:Lcom/htc/widget/HtcAlertDialog;
    goto/16 :goto_0

    .line 519
    .end local v5           #modeHighAccuracyDescription:Ljava/lang/String;
    .end local v9           #modeBatterySavingDescription:Ljava/lang/String;
    .end local v16           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v18           #items:[Lcom/android/settings/location/LocationSettings$LocationModeInfo;
    :cond_4
    const v2, 0x7f0c019a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 522
    .restart local v5       #modeHighAccuracyDescription:Ljava/lang/String;
    :cond_5
    const v2, 0x7f0c019b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/location/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 526
    .restart local v9       #modeBatterySavingDescription:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    goto :goto_8

    .line 577
    .end local v5           #modeHighAccuracyDescription:Ljava/lang/String;
    .end local v9           #modeBatterySavingDescription:Ljava/lang/String;
    .end local v17           #gpsPolicyStatus:I
    .end local v19           #locationModeAdapter:Lcom/android/settings/location/LocationSettings$LocationModeAdapter;
    .end local v20           #mode:I
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0aa7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0aa6

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c079d

    new-instance v4, Lcom/android/settings/location/LocationSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c079e

    new-instance v4, Lcom/android/settings/location/LocationSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/location/LocationSettings$4;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    .line 599
    .restart local v16       #dialog:Lcom/htc/widget/HtcAlertDialog;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    .line 192
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 186
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceTreeClick(): Fragment is not resumed yet, drop this click event to prevent crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    if-ne v0, p2, :cond_2

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->showDialog(I)V

    .line 465
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->loadRecentLocationApps()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationSwitchAndCategories()V

    .line 173
    return-void
.end method

.method public setLocationMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 417
    .local v2, currentMode:I
    move v3, p1

    .line 419
    .local v3, targetMode:I
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 422
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 423
    sget-object v5, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v6, "Restricted user, not setting location mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    move v3, v2

    .line 428
    :cond_1
    if-eq v2, v3, :cond_3

    move v0, v1

    .line 430
    .local v0, bChanged:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcLocationManager;->notifyShowMeWidget(Landroid/content/Context;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    :cond_2
    if-eqz v3, :cond_4

    .line 440
    .local v1, bMasterSwitchChecked:Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->setMasterSwitchChecked(Z)V

    .line 441
    return-void

    .end local v0           #bChanged:Z
    .end local v1           #bMasterSwitchChecked:Z
    :cond_3
    move v0, v4

    .line 428
    goto :goto_0

    .restart local v0       #bChanged:Z
    :cond_4
    move v1, v4

    .line 439
    goto :goto_1
.end method
