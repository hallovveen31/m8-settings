.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcDeviceNamePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->initialize()V

    .line 84
    return-void
.end method

.method private final initialize()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 97
    .local v0, localManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 103
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "localAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->log(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 100
    :cond_1
    sget-object v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->TAG:Ljava/lang/String;

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected canSelectable()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "onClick()"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->log(Ljava/lang/String;)V

    .line 194
    :cond_0
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "rename device"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onDeviceNameChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceNameChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->log(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, summary:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSummaryInBackground():localAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->log(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 153
    .end local v1           #summary:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1       #summary:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 158
    sget-boolean v2, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSummaryInBackground():db-key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_2
    new-instance v2, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->onGetSummaryInBackground()Ljava/lang/String;

    move-result-object v1

    .line 166
    sget-boolean v2, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSummaryInBackground():modelName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 187
    :cond_0
    return-void
.end method
