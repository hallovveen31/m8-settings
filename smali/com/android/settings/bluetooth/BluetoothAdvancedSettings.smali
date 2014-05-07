.class public Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BluetoothAdvancedSettings"


# instance fields
.field private final mFtpContainerConn:Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;

.field private mHandler:Landroid/os/Handler;

.field private mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

.field private mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mFtpContainerConn:Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isMediaMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Lcom/htc/android/bluetooth/HtcBluetoothFtp;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initPrefs()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initPrefs()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {v3}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->isProfileSupported()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c042b

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c0b14

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isMediaMounted()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {v3}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->isProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isMediaMounted()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mounted"

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "Internal or External storage available!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0cb3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.bluetooth.HtcBluetoothFtp.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mFtpContainerConn:Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;-><init>(Landroid/content/Context;Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {v0}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothAdvancedSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->setProfileEnable(ZZ)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
