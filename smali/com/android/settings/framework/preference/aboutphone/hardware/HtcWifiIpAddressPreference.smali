.class public Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcWifiIpAddressPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0d9e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, ipAddress:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 40
    const v2, 0x7f0c0e63

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_0
    return-object v1
.end method
