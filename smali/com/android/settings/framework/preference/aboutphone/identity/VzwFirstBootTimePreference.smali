.class public Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "VzwFirstBootTimePreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0ae2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_first_boot_time"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 56
    .local v1, milliseconds:J
    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    .line 57
    const v3, 0x7f0c0b48

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    :goto_0
    return-object v3

    :cond_0
    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/HtcDateTimeUtil;->formatDateAndTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
