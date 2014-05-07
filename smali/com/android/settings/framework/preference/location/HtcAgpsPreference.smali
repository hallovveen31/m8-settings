.class public Lcom/android/settings/framework/preference/location/HtcAgpsPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcAgpsPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_ENABLE_AGPS:Ljava/lang/String; = "com.htc.settings.action.SET_AGPS_ENABLED"

.field private static final DEBUG:Z

.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

.field private mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->KEY:Ljava/lang/String;

    .line 46
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->initial()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->initial()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->initial()V

    .line 90
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCustomSummaryDisabled()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0185

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0182

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 95
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;-><init>(Lcom/android/settings/framework/preference/location/HtcAgpsPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "name"

    aput-object v5, v2, v3

    const-string v3, "(name=\'assisted_gps_enabled\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 129
    .local v6, globalSettingsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;-><init>(Lcom/android/settings/framework/preference/location/HtcAgpsPreference;Lcom/android/settings/framework/preference/location/HtcAgpsPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;

    .line 130
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v7, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 136
    .end local v6           #globalSettingsCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    const-string v1, "initOberver: contentResolver = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .parameter "context"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 191
    .local v1, isGpsEnabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getSystemAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 192
    .local v2, isSystemAgpsEnabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->getUserAGpsIsEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 193
    .local v3, isUserAgpsEnabled:Z
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->isAgpsDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 195
    .local v0, isAgpsForcedDisabled:Z
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    .line 196
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isGpsEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemAgpsEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUserAgpsEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v4, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAgpsForcedDisabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-nez v0, :cond_2

    const/4 v4, 0x1

    :goto_0
    and-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->setEnabledInForeground(Z)V

    .line 204
    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->getCustomSummaryDisabled()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->setSummaryInForeground(Ljava/lang/CharSequence;)V

    .line 207
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 202
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 162
    :cond_2
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mReceiver:Lcom/android/settings/framework/receiver/HtcAbsReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAgpsPreference;->mSettingsObserver:Lcom/android/settings/framework/preference/location/HtcAgpsPreference$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 149
    :cond_2
    return-void
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 212
    if-eqz p2, :cond_1

    .line 213
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->showUseAgpsWarningDialog(Landroid/content/Context;)V

    .line 222
    :goto_0
    return v1

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/android/settings/framework/util/HtcLocationUtil;->warnInfoMobileNetwork(Landroid/content/Context;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p1, p2}, Lcom/android/settings/framework/util/HtcLocationUtil;->updateAGpsUISettings(Landroid/content/Context;Z)V

    goto :goto_0
.end method
