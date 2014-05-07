.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;
.implements Lcom/android/settings/bluetooth/HtcTagManager$Callback;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


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

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    iput v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    iput v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/DeviceProfilesSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshTagValues(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/htc/preference/HtcEditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/HtcTagManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0c0bb8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0c0bac

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0bad

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method private createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    invoke-interface {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    return-object v1
.end method

.method private getProfileOf(Lcom/htc/preference/HtcPreference;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 6

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v4, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/HtcTagManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private initActionBarModule()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v4, v1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    const v5, 0x7f0c0ce4

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    new-instance v4, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v4, v1}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    instance-of v4, v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initBackSettings()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v4, v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    new-instance v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private onProfileClicked(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    :goto_1
    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 9

    const v8, 0x7f0c0aac

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-static {v2}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->isAnyFinding(Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/OutOfRangePreference;->refresh()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/HtcTagManager;->isFindMeConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v5}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/HtcTagManager;->isFindMeConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v2, v7}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

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

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    if-eqz v2, :cond_2

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

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private refreshTagValues(II)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

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

    iget v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    if-eq v5, p1, :cond_0

    iput p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    const v2, 0x7f0201cf

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagSiganl:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f090017

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarIcon:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v5, v1}, Lcom/htc/widget/ActionBarItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    if-eq v5, p2, :cond_3

    iput p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    const/4 v5, 0x5

    if-gt p2, v5, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v5}, Lcom/htc/widget/ActionBarDropDown;->getSecondaryView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    const/high16 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v5, 0x7f0c0abb

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mActionBarTitle:Lcom/htc/widget/ActionBarDropDown;

    const v6, 0x7f0c0ab5

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_0
    const v2, 0x7f0201d0

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0201d1

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0201d2

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0201d3

    goto :goto_0

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

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const-string v9, "device"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    const v9, 0x7f06000b

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    const-string v9, "rename_device"

    invoke-virtual {p0, v9}, Lcom/htc/preference/HtcPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    check-cast v9, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    if-nez v2, :cond_1

    const-string v9, "DeviceProfilesSettings"

    const-string v10, "Activity started without a remote Bluetooth device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v9, "device"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    const-string v9, "isLsNotification"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v9, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-direct {v9, p0, v13}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v9, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v9, v10, v11, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    :cond_2
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v9, :cond_3

    const-string v9, "DeviceProfilesSettings"

    const-string v10, "Device not found, cannot connect to it"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_3
    new-instance v9, Lcom/htc/preference/HtcPreference;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0a7d

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const-string v10, "findme"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    new-instance v9, Lcom/htc/preference/HtcPreference;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0a80

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const-string v10, "qtext"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const v10, 0x7f0c0a81

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    const/16 v10, 0x41

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    new-instance v9, Lcom/android/settings/bluetooth/OutOfRangePreference;

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct {v9, v1, v10}, Lcom/android/settings/bluetooth/OutOfRangePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    const-string v10, "outofrange"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    const/16 v10, 0x46

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    new-instance v9, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v10, 0x7f0c0abd

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v10, "sendmail"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/16 v10, 0x50

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    new-instance v9, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v9, v1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    const-string v10, "profile_container"

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    const v10, 0x7f0c0ce7

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcMini()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcTag()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v9, :cond_5

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.htc.bluetooth.le.SERVICE_VALUE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initActionBarModule()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04005a

    invoke-virtual {v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagSiganl:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/android/settings/bluetooth/HtcTagPreference;->getSendMailEnable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->initBackSettings()V

    goto/16 :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBle()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    instance-of v9, v8, Lcom/android/settings/bluetooth/HtcFmpProfile;

    if-eqz v9, :cond_6

    iput-boolean v12, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2

    :cond_7
    iget-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget v9, v9, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mFind:I

    if-ne v9, v12, :cond_9

    sget-boolean v9, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v9, :cond_8

    const-string v9, "DeviceProfilesSettings"

    const-string v10, "show find me db!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v1, v9, v10, v11}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->showFindMeDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/view/LayoutInflater;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_9
    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mQTextPref:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v7, v9}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "dismiss find me db!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iput-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method public onHtcMiniConnected()V
    .locals 0

    return-void
.end method

.method public onHtcMiniFound(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMePref:Lcom/htc/preference/HtcPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceProfilesSettings"

    const-string v1, "dismiss find me db!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->pause()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->pushRssiRead(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcTagManager;->unregisterCallback(Lcom/android/settings/bluetooth/HtcTagManager$Callback;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterHtcMiniCallback()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/bluetooth/HtcTagPreference;->setSendMailEnable(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Lcom/htc/preference/HtcPreference;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast p1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settings/bluetooth/LocalBluetoothProfile;Lcom/htc/preference/HtcCheckBoxPreference;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "unpair"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "findme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-static {v3, v4, v2}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->setFindMeEnabled(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    sget-boolean v3, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v3, :cond_2

    const-string v3, "DeviceProfilesSettings"

    const-string v4, "show find me db!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/HtcHeadsetUtils;->showFindMeDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Landroid/view/LayoutInflater;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isFindMeSupport:Z

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/settings/bluetooth/HtcTagManager;->findTag(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_5
    const-string v3, "qtext"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "FullEditMode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.htc.sense.mms"

    const-string v4, "com.htc.sense.mms.ui.QTextEdit"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, -0x1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    iget-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcMini:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget v7, v7, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->mFind:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/settings/bluetooth/Utils;->D:Z

    if-eqz v7, :cond_0

    const-string v7, "DeviceProfilesSettings"

    const-string v8, "dismiss find me db!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mFindMeDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerHtcMiniCallback(Lcom/android/settings/bluetooth/HtcHeadsetUtils$Callback;)V

    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->isHtcTag:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mOutOfRangePref:Lcom/android/settings/bluetooth/OutOfRangePreference;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/OutOfRangePreference;->resume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_0
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/android/settings/bluetooth/HtcTagManager;->pushRssiRead(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    invoke-virtual {v7, p0}, Lcom/android/settings/bluetooth/HtcTagManager;->registerCallback(Lcom/android/settings/bluetooth/HtcTagManager$Callback;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v10, "com.htc.permission.APP_PLATFORM"

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagRssi:I

    if-eq v7, v12, :cond_3

    iget v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTagBattery:I

    if-ne v7, v12, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;

    invoke-direct {v8, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_7

    const-string v5, "DeviceProfilesSettings"

    const-string v6, "Unbonded Device, cannot connect to it"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v7, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mSendMailPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v7}, Lcom/htc/preference/HtcDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    instance-of v7, v2, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v7, :cond_5

    check-cast v2, Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, v12}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-lez v7, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    move v5, v6

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTagAttributesChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    :cond_0
    return-void
.end method
