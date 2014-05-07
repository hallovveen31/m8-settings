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

    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationSwitchAndCategories()V

    return-void
.end method

.method private addLocationServices()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "addAppSettings(): mCategoryAppSettings = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V
    .locals 3
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

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    new-instance v2, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    :goto_0
    new-instance v4, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    const v5, 0x7f0c0a9f

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->supportE911()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0614

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0615

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mHtcE911Preference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_1
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0ef2

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/flag/feature/HtcLocationFeatureFlags;->getAGPSSyncTimeVisibility(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/framework/preference/location/HtcLocAGPSSyncTimePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_2
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryMyLocation:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_3
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    const v3, 0x7f0c0ef7

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->loadRecentLocationApps()V

    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    const v3, 0x7f0c0199

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mCategoryLocationServices:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->addLocationServices()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-object v1

    :cond_4
    move v0, v3

    goto/16 :goto_0

    :cond_5
    move v4, v3

    goto/16 :goto_1

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method private getGpsPolicyStatus()I
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "location_providers_allowed"

    invoke-static {v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x2c

    const-string v7, "GPS_blocked"

    invoke-static {v0, v6, v7}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps_lock_status"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v4, v6, :cond_3

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

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

    :cond_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v3, :cond_4

    move v5, v4

    :cond_2
    :goto_1
    return v5

    :cond_3
    move v1, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_1
.end method

.method private isRestricted()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private loadRecentLocationApps()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v4, "loadRecentLocationApps(): mCategoryRecentLocationRequests = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    new-instance v1, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v1, v3}, Lcom/android/settings/location/RecentLocationApps;-><init>(Lcom/htc/preference/HtcPreferenceActivity;)V

    invoke-virtual {v1}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Lcom/htc/preference/HtcPreferenceCategory;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/location/HtcEmptyLocationPreference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private refreshLocationModePreference()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    if-nez v2, :cond_1

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshLocationModePreference(): mLocationMode = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0ef6

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0198

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0ef4

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    const v3, 0x7f0c0ef3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

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

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshLocationCategories()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationSettings;->setMasterSwitchChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v2, "refreshLocationCategories(): mCategoryRecentLocationRequests = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setMasterSwitchChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "setMasterSwitchChecked(): mSwitch = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->getGpsPolicyStatus()I

    move-result v2

    if-ne v0, v2, :cond_1

    if-nez p2, :cond_1

    if-nez p2, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/location/LocationSettings;->setMasterSwitchChecked(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcAgpsPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mHtcLocAGPSSyncTimePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v7, Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.location.InjectedSettingChanged"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v8, "android.location.MODE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v7, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0c0577

    invoke-virtual {v2, v7}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    invoke-virtual {v4, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    move v3, v5

    :goto_0
    new-instance v7, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setMode(I)V

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Lcom/htc/widget/HtcToggleButtonLight;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Lcom/htc/preference/HtcPreferenceScreen;

    return-void

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 21

    packed-switch p1, :pswitch_data_0

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

    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v16

    :goto_0
    return-object v16

    :pswitch_0
    new-instance v19, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040021

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/location/LocationSettings$LocationModeAdapter;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getGpsPolicyStatus()I

    move-result v17

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0c019c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0c019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const/4 v2, 0x3

    new-array v0, v2, [Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    move-object/from16 v18, v0

    const/4 v8, 0x0

    new-instance v2, Lcom/android/settings/location/LocationSettings$LocationModeInfo;

    const v3, 0x7f0c0ef3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

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

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v3, 0x7f0c019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

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

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f0c019a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_5
    const v2, 0x7f0c019b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

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

    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Lcom/htc/widget/HtcToggleButtonLight;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPreferenceTreeClick(): Fragment is not resumed yet, drop this click event to prevent crash."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Lcom/htc/preference/HtcPreference;

    if-ne v0, p2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mInjector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->loadRecentLocationApps()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationModePreference()V

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationSwitchAndCategories()V

    return-void
.end method

.method public setLocationMode(I)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v3, p1

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/settings/location/LocationSettings;->TAG:Ljava/lang/String;

    const-string v6, "Restricted user, not setting location mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v2

    :cond_1
    if-eq v2, v3, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcLocationManager;->notifyShowMeWidget(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-eqz v3, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->setMasterSwitchChecked(Z)V

    return-void

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method
