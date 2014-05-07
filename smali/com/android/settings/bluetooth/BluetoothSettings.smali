.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;


# static fields
.field private static BLUETOOTH_SUBJECT:Ljava/lang/String; = null

.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DUAL_SPEAKER_SUPPORT:Z = false

.field private static final MENU_ID_ADVANCED:I = 0x3

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x5

.field private static final MENU_ID_TIPS_HELP:I = 0x6

.field private static final MENU_ID_VISIBILITY_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBoomBassDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHelpAvailable:Z

.field mMyDevicePreference:Lcom/htc/preference/HtcPreference;

.field private mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

.field private mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

.field mScanPreference:Lcom/htc/preference/HtcPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->DEBUG:Z

    .line 92
    invoke-static {}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->hasBeatsSpeaker()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->DUAL_SPEAKER_SUPPORT:Z

    .line 98
    const-string v0, "bluetooth"

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothSettings;->BLUETOOTH_SUBJECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method private addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 331
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceGroup;->setTitle(I)V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 333
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 336
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    .line 337
    return-void
.end method

.method private extendScanning()Z
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private isHelpAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 131
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.showme"

    const-string v6, "com.htc.showme.ui.Search"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    const-string v4, "android.intent.extra.SUBJECT"

    sget-object v5, Lcom/android/settings/bluetooth/BluetoothSettings;->BLUETOOTH_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 138
    const-string v4, "BluetoothSettings"

    const-string v5, "Tips & Help application exists."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return v3

    .line 142
    :cond_0
    const-string v3, "BluetoothSettings"

    const-string v4, "Tips & Help application does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startExtendScan()V

    goto :goto_0
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 341
    .local v3, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v0, 0x0

    .line 343
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 456
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 458
    :goto_1
    return-void

    .line 345
    :pswitch_0
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 346
    invoke-virtual {v3, v9}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 347
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    .line 350
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    if-nez v4, :cond_1

    .line 353
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    .line 355
    :cond_1
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 357
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0200d1

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    .line 361
    :goto_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 362
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v9}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 363
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 364
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 367
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_2

    .line 368
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/htc/preference/HtcPreference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 376
    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez v4, :cond_3

    .line 377
    new-instance v4, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    .line 378
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0c0cc8

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 379
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    const-string v5, "bt_scan"

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 381
    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 387
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v4, :cond_a

    .line 388
    new-instance v4, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    .line 392
    :goto_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    const v5, 0x7f0c0a95

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 395
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 397
    .local v2, numberOfPairedDevices:I
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v4, :cond_4

    .line 398
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->StartDiscoverable()V

    .line 399
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 403
    :cond_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v4, :cond_b

    .line 404
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    .line 408
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v4

    if-nez v4, :cond_5

    .line 409
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    const v5, 0x7f0c0a94

    sget-object v6, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 413
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFragmentStarted:Z

    if-eqz v4, :cond_6

    .line 414
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFragmentStarted:Z

    .line 416
    :cond_6
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 417
    .local v1, numberOfAvailableDevices:I
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 419
    if-nez v1, :cond_7

    .line 420
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 421
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 424
    :cond_7
    if-nez v2, :cond_8

    .line 425
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 426
    if-ne p2, v9, :cond_c

    .line 427
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 428
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 435
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 359
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :cond_9
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    const v5, 0x7f0200e0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    goto/16 :goto_2

    .line 390
    :cond_a
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_3

    .line 406
    .restart local v2       #numberOfPairedDevices:I
    :cond_b
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_4

    .line 430
    .restart local v1       #numberOfAvailableDevices:I
    :cond_c
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_8

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5

    .line 439
    .end local v1           #numberOfAvailableDevices:I
    .end local v2           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0c0a90

    .line 440
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v4, :cond_0

    .line 441
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->StopDiscoverable()V

    goto/16 :goto_0

    .line 446
    :pswitch_2
    const v0, 0x7f0c0a91

    .line 447
    goto/16 :goto_0

    .line 450
    :pswitch_3
    const v0, 0x7f0c0a8f

    goto/16 :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 6

    .prologue
    .line 148
    const v5, 0x7f06000c

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 153
    .local v2, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v1, v2}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 155
    .local v1, actionBarSwitch:Lcom/android/settings/framework/widget/HtcToggleButton;
    new-instance v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;

    invoke-direct {v3, v2}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 157
    .local v3, mBluetoothEnabler:Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;
    instance-of v5, v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v5, :cond_2

    move-object v4, v2

    .line 158
    check-cast v4, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 159
    .local v4, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 162
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->requestHandlers()V

    .line 165
    invoke-virtual {v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    .line 166
    .local v0, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 168
    .end local v0           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v4           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->bindToggleButton(Lcom/android/settings/framework/widget/HtcToggleButton;)V

    .line 171
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onActivateEnabler()V

    .line 173
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 174
    return-void
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 511
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHelpAvailable:Z

    .line 127
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 462
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 463
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 464
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 231
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    move v0, v3

    .line 232
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 233
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_4

    const v2, 0x7f0c00c7

    .line 234
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 237
    const/4 v3, 0x2

    const v5, 0x7f0c0ba8

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 240
    const/4 v3, 0x3

    const v5, 0x7f0c0d49

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 249
    const/4 v3, 0x5

    const v5, 0x7f0c0bbe

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 251
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mHelpAvailable:Z

    if-eqz v3, :cond_2

    .line 252
    const/4 v3, 0x6

    const v5, 0x7f0c00f0

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 257
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_3
    move v0, v4

    .line 231
    goto :goto_1

    .line 233
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_4
    const v2, 0x7f0c00c8

    goto :goto_2

    .restart local v2       #textId:I
    :cond_5
    move v3, v4

    .line 234
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 217
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBoomBassDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBoomBassDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 221
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBoomBassDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 223
    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 482
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 483
    return-void
.end method

.method public onDeviceNameChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 327
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    :cond_0
    move v0, v9

    .line 267
    goto :goto_0

    .line 270
    :pswitch_1
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "rename device"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v9

    .line 272
    goto :goto_0

    .line 275
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0cd5

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v9

    .line 284
    goto :goto_0

    .line 282
    :cond_1
    const-class v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 287
    :pswitch_3
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "visibility timeout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v9

    .line 289
    goto :goto_0

    .line 292
    :pswitch_4
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v9

    .line 294
    goto :goto_0

    .line 297
    .end local v8           #intent:Landroid/content/Intent;
    :pswitch_5
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v7, iHelp:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.showme"

    const-string v2, "com.htc.showme.ui.Search"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 299
    const-string v0, "android.intent.extra.SUBJECT"

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSettings;->BLUETOOTH_SUBJECT:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v9

    .line 301
    goto/16 :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 210
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 528
    const-string v2, "bt_scan"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 530
    const/4 v2, 0x1

    .line 540
    :goto_0
    return v2

    .line 532
    :cond_0
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothSettings;->DUAL_SPEAKER_SUPPORT:Z

    if-nez v2, :cond_1

    instance-of v2, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 533
    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 534
    .local v0, btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 535
    .local v1, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcBoomBass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBoomBassDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->showBoomBassDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBoomBassDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 540
    .end local v0           #btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .end local v1           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 180
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v1, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    .line 188
    .local v0, isDiscovering:Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 191
    .end local v0           #isDiscovering:Z
    :cond_2
    return-void

    .restart local v0       #isDiscovering:Z
    :cond_3
    move v1, v2

    .line 188
    goto :goto_0

    .line 189
    :cond_4
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .parameter "started"

    .prologue
    const/4 v1, 0x0

    .line 468
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isExtendScanExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->extendScanning()Z

    move-result p1

    .line 470
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothSettings"

    const-string v2, "trigger re-scan"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 475
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 477
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 475
    goto :goto_0

    .line 476
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .parameter "cachedDevice"
    .parameter "action"

    .prologue
    .line 520
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show retry dialog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0, p1, v1, p2}, Lcom/android/settings/bluetooth/Utils;->showRetryDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/htc/widget/HtcAlertDialog;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 523
    return-void
.end method
