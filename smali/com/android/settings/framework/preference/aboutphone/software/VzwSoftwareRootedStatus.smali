.class public Lcom/android/settings/framework/preference/aboutphone/software/VzwSoftwareRootedStatus;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "VzwSoftwareRootedStatus.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/VzwSoftwareRootedStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c030e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/software/VzwSoftwareRootedStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, context:Landroid/content/Context;
    const-string v3, "ro.td"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, status:I
    if-nez v1, :cond_0

    .line 85
    const v2, 0x7f0c030f

    .line 89
    .local v2, summaryResId:I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 87
    .end local v2           #summaryResId:I
    :cond_0
    const v2, 0x7f0c0310

    .restart local v2       #summaryResId:I
    goto :goto_0
.end method
