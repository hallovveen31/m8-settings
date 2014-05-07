.class public Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcRoamingPreferenceDualMode.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mPhoneType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "phoneType"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "phoneType"

    .prologue
    .line 35
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "phoneType"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput p4, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;->mPhoneType:I

    .line 49
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e5e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 62
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;->mPhoneType:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoamingExt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0b5f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, summary:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 65
    .end local v0           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/network/HtcRoamingPreferenceDualMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0b60

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #summary:Ljava/lang/String;
    goto :goto_0
.end method
