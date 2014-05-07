.class public Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcLocationAGPSPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

.field private mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->KEY:Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->initial()V

    .line 89
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c04dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 94
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=\'assisted_gps_enabled\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, globalSettingsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    .line 124
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 130
    .end local v6           #globalSettingsCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "initOberver: contentResolver = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 185
    .local v1, gps:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getSystemAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 186
    .local v2, isSystemAgpsEnabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getUserAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 187
    .local v3, isUserAgpsEnabled:Z
    const/4 v4, -0x1

    .line 188
    .local v4, networkType:I
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 190
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 194
    :cond_0
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 195
    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSystemAgpsEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v5, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUserAgpsEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    if-eqz v1, :cond_3

    .line 203
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 204
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->setEnabledInForeground(Z)V

    .line 212
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 206
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->setEnabledInForeground(Z)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->setEnabledInForeground(Z)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 156
    :cond_2
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcLocationAGPSPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 143
    :cond_2
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->showUseAgpsWarningDialog(Landroid/content/Context;)V

    .line 223
    :goto_0
    return v1

    .line 222
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateAGpsUISettings(Landroid/content/Context;Z)V

    goto :goto_0
.end method
