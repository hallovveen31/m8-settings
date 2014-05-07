.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;
.implements Lcom/android/settings/bluetooth/HtcTagManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# static fields
.field private static final ACTION_BLE_SERVICE_VALUE_CHANGED:Ljava/lang/String; = "com.htc.bluetooth.le.SERVICE_VALUE_CHANGED"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_FINDME:Ljava/lang/String; = "findme"

.field private static final KEY_OUTOFRANGE:Ljava/lang/String; = "outofrange"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_QTEXT:Ljava/lang/String; = "qtext"

.field private static final KEY_RENAME_DEVICE:Ljava/lang/String; = "rename_device"

.field private static final KEY_SENDMAIL:Ljava/lang/String; = "sendmail"

.field private static final KEY_UNPAIR:Ljava/lang/String; = "unpair"

.field private static final TAG:Ljava/lang/String; = "DeviceProfilesSettings"


# instance fields
.field private isFindMeSupport:Z

.field private isHtcMini:Z

.field private isHtcTag:Z

.field private mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

.field private mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            "Lcom/htc/preference/HtcCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

.field private mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFindMePref:Lcom/htc/preference/HtcPreference;

.field private mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

.field private mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mQTextPref:Lcom/htc/preference/HtcPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

.field private mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mTagBattery:I

.field private mTagRssi:I

.field private mTagSiganl:Landroid/widget/ImageView;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    .line 95
    iput v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    .line 96
    iput v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshTagValues(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/htc/preference/HtcEditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/HtcTagManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    .prologue
    .line 386
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 387
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    .line 388
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 390
    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 391
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 508
    .local v0, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    const v6, 0x7f0c0bb8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 513
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f0c0bac

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0c0bad

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 527
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 529
    return-void
.end method

.method private createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 413
    new-instance v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 414
    .local v1, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 416
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 417
    invoke-interface {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 418
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 420
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 421
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 430
    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 432
    return-object v1
.end method

.method private getProfileOf(Lcom/htc/preference/HtcPreference;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v3, 0x0

    .line 652
    instance-of v4, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 665
    :cond_0
    :goto_0
    return-object v2

    .line 655
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    .line 659
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    .line 660
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    if-nez v2, :cond_0

    .line 661
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/HtcTagManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 664
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :catch_0
    move-exception v0

    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .line 665
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private initActionBarModule()V
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 175
    .local v1, activity:Landroid/app/Activity;
    new-instance v4, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v4, v1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    .line 176
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    const v5, 0x7f0c0ce4

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 177
    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, v1}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    .line 178
    instance-of v4, v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 179
    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 180
    .local v3, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    .line 181
    .local v0, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 183
    .local v2, container:Lcom/htc/widget/ActionBarContainer;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 184
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 187
    .end local v0           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v2           #container:Lcom/htc/widget/ActionBarContainer;
    .end local v3           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    return-void
.end method

.method private initBackSettings()V
    .locals 5

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 158
    .local v1, activity:Landroid/app/Activity;
    instance-of v4, v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 159
    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 160
    .local v3, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    .line 161
    .local v0, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    .line 163
    .local v2, container:Lcom/htc/widget/ActionBarContainer;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 164
    new-instance v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .end local v0           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v2           #container:Lcom/htc/widget/ActionBarContainer;
    .end local v3           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_0
    return-void
.end method

.method private onProfileClicked(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 6
    .parameter "profile"
    .parameter "profilePref"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 484
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 486
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 487
    .local v2, status:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    .line 490
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 502
    :goto_1
    return-void

    .end local v1           #isConnected:Z
    :cond_0
    move v1, v4

    .line 487
    goto :goto_0

    .line 493
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    invoke-interface {p1, v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 496
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 498
    :cond_2
    invoke-interface {p1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 499
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 9

    .prologue
    const v8, 0x7f0c0aac

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, deviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 549
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->isAnyFinding(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 553
    const/4 v1, 0x1

    .line 557
    .local v1, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 560
    .end local v1           #enabled:Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/OutOfRangePreference;->refresh()V

    .line 562
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/HtcTagManager;->isFindMeConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 564
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 565
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v5}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 566
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/ActionBarItemView;->setVisibility(I)V

    .line 573
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    if-eqz v2, :cond_2

    .line 574
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/HtcTagManager;->isFindMeConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 577
    :cond_2
    return-void

    .line 555
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #enabled:Z
    goto :goto_0

    .line 568
    .end local v1           #enabled:Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v7}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 569
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v7}, Lcom/htc/widget/ActionBarItemView;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 641
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 646
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 647
    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 648
    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 649
    return-void

    .line 646
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 620
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 621
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 622
    .local v2, profilePref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-nez v2, :cond_0

    .line 623
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    .line 624
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 626
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 629
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 630
    .restart local v1       #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 631
    .local v2, profilePref:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_2

    .line 632
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 636
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Lcom/htc/preference/HtcPreference;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 637
    return-void
.end method

.method private refreshTagValues(II)V
    .locals 10
    .parameter "rssi"
    .parameter "battery"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 580
    const-string v5, "DeviceProfilesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refresh rssi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", battery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    if-eq v5, p1, :cond_0

    .line 582
    iput p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    .line 583
    const v2, 0x7f0201cf

    .line 584
    .local v2, signalRes:I
    packed-switch p1, :pswitch_data_0

    .line 598
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagSiganl:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 599
    .local v1, signal:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 600
    .local v4, value:Landroid/graphics/drawable/Drawable;
    const v5, 0x7f090017

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 601
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 602
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v5, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 604
    .end local v1           #signal:Landroid/graphics/drawable/LayerDrawable;
    .end local v2           #signalRes:I
    .end local v4           #value:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    if-eq v5, p2, :cond_3

    .line 605
    iput p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    .line 606
    const/4 v5, 0x5

    if-gt p2, v5, :cond_2

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 608
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v5}, Lcom/htc/widget/ActionBarDropDown;->getSecondaryView()Landroid/widget/TextView;

    move-result-object v3

    .line 609
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 610
    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    :cond_1
    const v5, 0x7f0c0abb

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 615
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    const v6, 0x7f0c0ab5

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    .line 617
    :cond_3
    return-void

    .line 586
    .restart local v2       #signalRes:I
    :pswitch_0
    const v2, 0x7f0201d0

    .line 587
    goto :goto_0

    .line 589
    :pswitch_1
    const v2, 0x7f0201d1

    .line 590
    goto :goto_0

    .line 592
    :pswitch_2
    const v2, 0x7f0201d2

    .line 593
    goto :goto_0

    .line 595
    :pswitch_3
    const v2, 0x7f0201d3

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 395
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 400
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 675
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const/4 v6, 0x0

    .line 195
    .local v6, isLsNotification:Z
    if-eqz p1, :cond_0

    .line 196
    const-string v9, "device"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 203
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const v9, 0x7f06000b

    invoke-virtual {p0, v9}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 205
    const-string v9, "rename_device"

    invoke-virtual {p0, v9}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    .line 207
    if-nez v2, :cond_1

    .line 208
    const-string v9, "DeviceProfilesSettings"

    const-string v10, "Activity started without a remote Bluetooth device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 293
    :goto_1
    return-void

    .line 198
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 199
    .local v0, args:Landroid/os/Bundle;
    const-string v9, "device"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 200
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "isLsNotification"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 212
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 213
    .local v1, context:Landroid/content/Context;
    new-instance v9, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-direct {v9, p0, v13}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 214
    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 215
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 216
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 217
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    .line 218
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v9, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 219
    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v9, :cond_2

    .line 220
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v9, v10, v11, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 223
    :cond_2
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v9, :cond_3

    .line 224
    const-string v9, "DeviceProfilesSettings"

    const-string v10, "Device not found, cannot connect to it"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    .line 229
    :cond_3
    new-instance v9, Lcom/htc/preference/HtcPreference;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    .line 230
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0a7d

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 231
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const-string v10, "findme"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 232
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 234
    new-instance v9, Lcom/htc/preference/HtcPreference;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    .line 235
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0a80

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 236
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const-string v10, "qtext"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 237
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0a81

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 238
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const/16 v10, 0x41

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 240
    new-instance v9, Lcom/android/settings/bluetooth/OutOfRangePreference;

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {v9, v1, v10}, Lcom/android/settings/bluetooth/OutOfRangePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    .line 241
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    const-string v10, "outofrange"

    invoke-virtual {v9, v10}, Lcom/android/settings/bluetooth/OutOfRangePreference;->setKey(Ljava/lang/String;)V

    .line 242
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    const/16 v10, 0x46

    invoke-virtual {v9, v10}, Lcom/android/settings/bluetooth/OutOfRangePreference;->setOrder(I)V

    .line 244
    new-instance v9, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 245
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v10, 0x7f0c0abd

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 246
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v10, "sendmail"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 247
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/16 v10, 0x50

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 249
    new-instance v9, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    .line 250
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    const-string v10, "profile_container"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceGroup;->setKey(Ljava/lang/String;)V

    .line 251
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    const v10, 0x7f0c0ce7

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceGroup;->setTitle(I)V

    .line 252
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceGroup;->setOrder(I)V

    .line 254
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, deviceName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 257
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 258
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcMini()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    .line 259
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcTag()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    .line 261
    .local v7, parent:Lcom/htc/preference/HtcPreferenceScreen;
    iget-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v9, :cond_5

    .line 262
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.htc.bluetooth.le.SERVICE_VALUE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 263
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initActionBarModule()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04005a

    invoke-virtual {v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagSiganl:Landroid/widget/ImageView;

    .line 265
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 266
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 267
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 268
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/settings/bluetooth/HtcTagPreference;->getSendMailEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 269
    .local v4, enable:Z
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 270
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 288
    .end local v4           #enable:Z
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 290
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 292
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initBackSettings()V

    goto/16 :goto_1

    .line 271
    :cond_5
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBle()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 272
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 273
    .local v8, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    instance-of v9, v8, Lcom/android/settings/bluetooth/HtcFmpProfile;

    if-eqz v9, :cond_6

    .line 274
    iput-boolean v12, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    .line 275
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    .line 279
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_7
    iget-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v9, :cond_4

    .line 280
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget v9, v9, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mFind:I

    if-ne v9, v12, :cond_9

    .line 281
    sget-boolean v9, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v9, :cond_8

    const-string v9, "DeviceProfilesSettings"

    const-string v10, "show find me db!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_8
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v1, v9, v10, v11}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->showFindMeDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/view/LayoutInflater;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 285
    :cond_9
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 286
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 300
    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "dismiss find me db!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 306
    :cond_2
    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 307
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 533
    return-void
.end method

.method public onHtcMiniConnected()V
    .locals 0

    .prologue
    .line 689
    return-void
.end method

.method public onHtcMiniFound(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "state"

    .prologue
    .line 678
    if-nez p2, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "dismiss find me db!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 685
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 371
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 372
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->pause()V

    .line 374
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->pushRssiRead(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcTagManager;->unregisterCallback(Lcom/android/settings/bluetooth/HtcTagManager$Callback;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 380
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterHtcMiniCallback()V

    .line 383
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    if-ne p1, v2, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 480
    :goto_0
    const/4 v1, 0x1

    .end local p1
    :cond_0
    :goto_1
    return v1

    .line 470
    .restart local p1
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v2, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/HtcTagPreference;->setSendMailEnable(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 472
    .restart local p2
    :cond_2
    instance-of v2, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 473
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Lcom/htc/preference/HtcPreference;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 474
    .local v0, prof:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    .end local p1
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Lcom/htc/preference/HtcCheckBoxPreference;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 437
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, key:Ljava/lang/String;
    const-string v3, "unpair"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 464
    :cond_0
    :goto_0
    return v2

    .line 443
    :cond_1
    const-string v3, "findme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 444
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v3, :cond_3

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-static {v3, v4, v2}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->setFindMeEnabled(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    .line 446
    sget-boolean v3, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v3, :cond_2

    const-string v3, "DeviceProfilesSettings"

    const-string v4, "show find me db!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->showFindMeDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/view/LayoutInflater;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 449
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    if-eqz v3, :cond_0

    .line 450
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->findTag(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 454
    :cond_5
    const-string v3, "qtext"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 455
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v3, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "FullEditMode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 458
    const-string v3, "com.htc.sense.mms"

    const-string v4, "com.htc.sense.mms.ui.QTextEdit"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, -0x1

    .line 317
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 318
    iget-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v7, :cond_2

    .line 319
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget v7, v7, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mFind:I

    if-nez v7, :cond_1

    .line 320
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    sget-boolean v7, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v7, :cond_0

    const-string v7, "DeviceProfilesSettings"

    const-string v8, "dismiss find me db!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 325
    :cond_1
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerHtcMiniCallback(Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;)V

    .line 327
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v7, :cond_4

    .line 328
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/OutOfRangePreference;->resume()V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v4

    .line 330
    .local v4, mm:Lcom/htc/util/mail/MailManager;
    invoke-virtual {v4}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 331
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-nez v0, :cond_6

    .line 332
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 337
    :goto_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/android/settings/bluetooth/HtcTagManager;->pushRssiRead(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 338
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v7, p0}, Lcom/android/settings/bluetooth/HtcTagManager;->registerCallback(Lcom/android/settings/bluetooth/HtcTagManager$Callback;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v10, "com.htc.permission.APP_PLATFORM"

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    if-eq v7, v12, :cond_3

    iget v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    if-ne v7, v12, :cond_4

    .line 341
    :cond_3
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v4           #mm:Lcom/htc/util/mail/MailManager;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 351
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 352
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_7

    .line 353
    const-string v5, "DeviceProfilesSettings"

    const-string v6, "Unbonded Device, cannot connect to it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 367
    :cond_5
    :goto_1
    return-void

    .line 334
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v4       #mm:Lcom/htc/util/mail/MailManager;
    :cond_6
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 335
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v4           #mm:Lcom/htc/util/mail/MailManager;
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 358
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    .line 359
    .local v3, et:Landroid/widget/EditText;
    if-eqz v3, :cond_5

    .line 360
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 362
    .local v2, d:Landroid/app/Dialog;
    instance-of v7, v2, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v7, :cond_5

    .line 363
    check-cast v2, Lcom/htc/widget/HtcAlertDialog;

    .end local v2           #d:Landroid/app/Dialog;
    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 364
    .local v1, b:Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    move v5, v6

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    return-void
.end method

.method public onTagAttributesChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 537
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-ne v0, v1, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 540
    :cond_0
    return-void
.end method
