.class public Lcom/android/settings/framework/preference/location/HtcGPSPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcGPSPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->KEY:Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->initial()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->initial()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->initial()V

    .line 65
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initial()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcGPSPreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcGPSPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    .line 95
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0f05

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0f04

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onChange(Z)Z
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps_lock_status"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 157
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    const-string v2, "GPS Locked, the GPS state remain unchanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    .line 151
    :cond_1
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    .line 141
    :cond_1
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "value"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/os/HtcLocationManager;->notifyShowMeWidget(Landroid/content/Context;)V

    .line 127
    move v0, p2

    .line 128
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/settings/framework/util/HtcLocationUtil;->handleGPS(Landroid/content/Context;ZZ)V

    .line 130
    const/4 v1, 0x1

    return v1
.end method
