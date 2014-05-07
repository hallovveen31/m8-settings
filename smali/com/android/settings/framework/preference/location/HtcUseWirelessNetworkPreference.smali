.class public Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;
.super Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.source "HtcUseWirelessNetworkPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->KEY:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->KEY:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0189

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0f02

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0188

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0f01

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onGetValue()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 6
    .parameter "checked"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 136
    .local v2, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    const-string v0, "com.htc.app.autosetting.location"

    .line 138
    .local v0, action:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    if-eqz p1, :cond_1

    .line 142
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.app.autosetting.location"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    return-void

    .line 136
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    const-string v0, "com.htc.app.autosetting.location.cancel"

    goto :goto_0

    .line 148
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v4, "auto_sync_check"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, autoSyncCheck:I
    const-string v4, "auto_set_time_city_locale"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    const-string v4, "auto_apply_set_time_city_locale"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.app.autosetting.cancel"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "auto_sync_check"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onSetValue(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/os/HtcLocationManager;->notifyShowMeWidget(Landroid/content/Context;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcUseWirelessNetworkPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 128
    return-void
.end method
