.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcPhoneNumberPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPhoneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    .line 40
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 62
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 64
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isAttSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0704

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, title:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 68
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c06ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #title:Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v0           #title:Ljava/lang/String;
    :cond_1
    const v1, 0x7f0c06ff

    .line 74
    .local v1, titleResId:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 76
    const v1, 0x7f0c0a13

    .line 87
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #title:Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v0           #title:Ljava/lang/String;
    :cond_3
    const v1, 0x7f0c0a14

    goto :goto_1

    .line 80
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 82
    const v1, 0x7f0c0a15

    goto :goto_1

    .line 84
    :cond_5
    const v1, 0x7f0c0a16

    goto :goto_1
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 9

    .prologue
    const v8, 0x7f0c0b48

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 109
    .local v5, tm:Landroid/telephony/TelephonyManager;
    iget v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 110
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, phoneNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, phoneName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportCNAPName()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 131
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportCNAPName()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    move-object v0, v3

    .line 134
    .local v0, combine:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1
    move-object v4, v0

    .line 166
    .end local v0           #combine:Ljava/lang/String;
    .end local v2           #phoneName:Ljava/lang/String;
    .local v4, ret:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 139
    .end local v4           #ret:Ljava/lang/String;
    .restart local v2       #phoneName:Ljava/lang/String;
    :cond_2
    move-object v4, v3

    .restart local v4       #ret:Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v4           #ret:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v2           #phoneName:Ljava/lang/String;
    .end local v3           #phoneNumber:Ljava/lang/String;
    .end local v4           #ret:Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getLine1NumberExt(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    .restart local v3       #phoneNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 151
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 155
    move-object v4, v3

    .restart local v4       #ret:Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v4           #ret:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->mPhoneType:I

    .line 57
    return-void
.end method
