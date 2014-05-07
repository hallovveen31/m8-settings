.class public Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;
.super Ljava/lang/Object;
.source "HtcDemoServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/demo/HtcDemoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPolicyForDaydream(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 154
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v0, "original_daydream_status"

    .line 156
    .local v0, KEY_ORIGINAL_DAYDREAM_STATUS:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-direct {v1, p0}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 157
    .local v1, backend:Lcom/android/settings/DreamBackend;
    const-string v5, "demo_flow"

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 158
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 160
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    const-string v5, "original_daydream_status"

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    invoke-virtual {v1, v7}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v5, "original_daydream_status"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    goto :goto_0
.end method

.method private static applyPolicyForDisplay(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xff

    .line 94
    const/16 v0, 0xff

    .line 97
    .local v0, BRIGHTNESS:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncAutomaticBrightnessMode(Landroid/content/Context;Z)Z

    .line 103
    invoke-static {v3}, Lcom/android/settings/framework/util/HtcKernelSynchronizer;->syncUnderlyingBrightness(I)Z

    .line 104
    return-void
.end method

.method private static applyPolicyForMisc(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    return-void
.end method

.method private static applyPolicyForSecurity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "htc_message_notification_preview"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 122
    const-string v1, "htc_phone_notification_preview"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 127
    const-string v1, "htc_new_message_notification"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 132
    const-string v1, "htc_music_bypass_enabled"

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 140
    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return-void
.end method

.method public static handleInstallPolicy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/settings/framework/core/demo/HtcDemoServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInstallPolicy("

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

    #calls: Lcom/android/settings/framework/core/demo/HtcDemoServer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/core/demo/HtcDemoServer;->access$100(Ljava/lang/String;)V

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    invoke-static {}, Lcom/android/settings/framework/core/demo/HtcDemoServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "The demo mode is OFF."

    #calls: Lcom/android/settings/framework/core/demo/HtcDemoServer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/core/demo/HtcDemoServer;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {p0}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->applyPolicyForDisplay(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->applyPolicyForSecurity(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->applyPolicyForMisc(Landroid/content/Context;)V

    .line 75
    invoke-static {p0}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->applyPolicyForDaydream(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static handleUninstallPolicy(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-static {}, Lcom/android/settings/framework/core/demo/HtcDemoServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInstallPolicy("

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

    #calls: Lcom/android/settings/framework/core/demo/HtcDemoServer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/core/demo/HtcDemoServer;->access$100(Ljava/lang/String;)V

    .line 83
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    invoke-static {p0}, Lcom/android/settings/framework/core/demo/HtcDemoServer$Handler;->applyPolicyForDaydream(Landroid/content/Context;)V

    goto :goto_0
.end method
