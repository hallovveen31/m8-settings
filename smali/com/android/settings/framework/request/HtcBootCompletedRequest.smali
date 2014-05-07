.class public Lcom/android/settings/framework/request/HtcBootCompletedRequest;
.super Ljava/lang/Object;
.source "HtcBootCompletedRequest.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/request/HtcBootCompletedRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 112
    sget-object v0, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private static case1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    const-string v0, "htc_key_last_build_number"

    .line 66
    .local v0, HTC_KEY_LAST_BUILD_NUMBER:Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, initialize:Z
    const-string v5, "ro.build.description"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0b48

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, buildNumber:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_key_last_build_number"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, lastBuildNumber:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v4, :cond_4

    .line 75
    :cond_0
    const/4 v3, 0x1

    .line 85
    :cond_1
    :goto_0
    sget-boolean v5, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v5, "buildNumber:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastBuildNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", initialize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    sget-object v5, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v2           #builder:Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v3, :cond_3

    .line 97
    invoke-static {p0}, Lcom/android/settings/framework/core/storage/HtcAppStorageLocationUtils;->initAppStorageLocationForNewApps(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_key_last_build_number"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    :cond_3
    return-void

    .line 76
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    const/4 v3, 0x1

    .line 82
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->initialHomeKeySwipeAndLongPressForFota(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static case2(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_wifi_2g_call_netmode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    return-void
.end method

.method private static initialHomeKeySwipeAndLongPressForFota(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0xdb

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 116
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasMenuButtonKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setMenuBarOption(Landroid/content/Context;I)Z

    .line 118
    invoke-static {p0, v4}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButtonOption(Landroid/content/Context;I)Z

    .line 119
    invoke-static {p0, v4}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOption(Landroid/content/Context;I)Z

    .line 120
    invoke-static {p0, v4, v6}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOption(Landroid/content/Context;II)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->hasRecentAppsButtonKey()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    invoke-static {p0, v4}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButtonOption(Landroid/content/Context;I)Z

    .line 123
    invoke-static {p0, v4, v6}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOption(Landroid/content/Context;II)V

    .line 124
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "APP_SWITCH_KEY_BEHAVIOR"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, recent_app_value:I
    if-ne v2, v5, :cond_0

    .line 127
    invoke-static {p0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOptionBySIE(Landroid/content/Context;)V

    goto :goto_0

    .line 130
    .end local v2           #recent_app_value:I
    :cond_2
    invoke-static {p0, v4}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOption(Landroid/content/Context;I)Z

    goto :goto_0

    .line 133
    :cond_3
    invoke-static {p0, v4}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setBackButtonOption(Landroid/content/Context;I)Z

    .line 134
    invoke-static {p0, v4}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setRecentAppButtonOption(Landroid/content/Context;I)Z

    .line 135
    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcDisplayFeatureFlags;->supportButtons(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_home_swipe"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, home_swipe_value:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_home_longpressed_key"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, home_longpressed_value:I
    if-eq v1, v5, :cond_4

    if-ne v0, v5, :cond_0

    .line 139
    :cond_4
    invoke-static {p0}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOptionBySIE(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    .end local v0           #home_longpressed_value:I
    .end local v1           #home_swipe_value:I
    :cond_5
    invoke-static {p0, v4, v6}, Lcom/android/settings/framework/core/display/HtcButtonManager;->setHomeButtonOption(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public static onBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>onBootCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->Log(Ljava/lang/String;)V

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->case1(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    invoke-static {p0}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->case2(Landroid/content/Context;)V

    .line 50
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<onBootCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcBootCompletedRequest;->Log(Ljava/lang/String;)V

    .line 53
    :cond_1
    return-void
.end method
