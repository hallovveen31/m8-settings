.class public Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcAssistedGPSPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsAgpsDisabledByNetwork:Z

.field private mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

.field private mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->KEY:Ljava/lang/String;

    .line 52
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    .line 68
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    .line 89
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->initial()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCustomSummaryDisabled()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0185

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initial()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 102
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 128
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=\'assisted_gps_enabled\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, globalSettingsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;

    .line 137
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 143
    .end local v6           #globalSettingsCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "initOberver: contentResolver = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0183

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "gps"

    invoke-static {v4, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 210
    .local v1, gps_enabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getSystemAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 211
    .local v0, agps_enabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->isAgpsDisabled(Landroid/content/Context;)Z

    move-result v2

    .line 212
    .local v2, network_disabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getUserAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 214
    .local v3, user_agps_enabled:Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    .line 215
    if-eqz v1, :cond_3

    iget-boolean v4, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->setEnabledInForeground(Z)V

    .line 217
    sget-boolean v4, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 218
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gps_enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agps_enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network_disabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user_agps_enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsAgpsDisabledByNetwork = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mIsAgpsDisabledByNetwork:Z

    if-eqz v4, :cond_4

    .line 226
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomSummaryDisabled()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomSummaryDisabled()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    .line 234
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :cond_2
    move v4, v5

    .line 214
    goto/16 :goto_0

    :cond_3
    move v6, v5

    .line 215
    goto/16 :goto_1

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->setSummaryOnInForeground(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->setSummaryOffInForeground(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 168
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 177
    :cond_2
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAssistedGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    .line 164
    :cond_2
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 239
    if-eqz p2, :cond_1

    .line 240
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->showUseAgpsWarningDialog(Landroid/content/Context;)V

    .line 249
    :goto_0
    return v1

    .line 244
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoMobileNetwork(Landroid/content/Context;)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {p1, p2}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateAGpsUISettings(Landroid/content/Context;Z)V

    goto :goto_0
.end method
