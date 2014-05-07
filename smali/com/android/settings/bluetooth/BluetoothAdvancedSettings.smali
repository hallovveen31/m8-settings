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

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mFtpContainerConn:Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isMediaMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;Lcom/htc/android/bluetooth/HtcBluetoothFtp;)Lcom/htc/android/bluetooth/HtcBluetoothFtp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->initPrefs()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initPrefs()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 133
    .local v1, prefScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 134
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {v3}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->isProfileSupported()Z

    move-result v0

    .line 135
    .local v0, isFtpSupport:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v3, :cond_0

    .line 137
    new-instance v3, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 138
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c042b

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c0b14

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 140
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 143
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->isMediaMounted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {v3}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->isProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_1
    :goto_1
    return-void

    .end local v0           #isFtpSupport:Z
    :cond_2
    move v0, v2

    .line 134
    goto :goto_0

    .line 148
    .restart local v0       #isFtpSupport:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 151
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isMediaMounted()Z
    .locals 2

    .prologue
    .line 166
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

    .line 169
    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "Internal or External storage available!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f0c0cb3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->addPreferencesFromResource(I)V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.android.bluetooth.HtcBluetoothFtp.action.SERVICE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mFtpContainerConn:Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;-><init>(Landroid/content/Context;Lcom/htc/android/bluetooth/HtcBluetoothFtp$ServiceListener;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    invoke-virtual {v0}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->close()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    .line 108
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v1, 0x0

    .line 157
    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 158
    .local v0, enable:Z
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

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtpCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mHtcBluetoothFtp:Lcom/htc/android/bluetooth/HtcBluetoothFtp;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/bluetooth/HtcBluetoothFtp;->setProfileEnable(ZZ)Z

    move-result v1

    .line 162
    :cond_1
    return v1

    .end local v0           #enable:Z
    .restart local p2
    :cond_2
    move v0, v1

    .line 157
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method
