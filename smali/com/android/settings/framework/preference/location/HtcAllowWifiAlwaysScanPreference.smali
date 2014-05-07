.class public Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcAllowWifiAlwaysScanPreference.java"


# static fields
.field public static final KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic getCustomSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportGoogleMobileServices(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c018e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c018c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 3
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAllowWifiAlwaysScanPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
