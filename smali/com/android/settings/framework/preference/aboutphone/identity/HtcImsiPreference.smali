.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStatusPreference;
.source "HtcImsiPreference.java"


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
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    .line 46
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 58
    const v1, 0x7f0c06f5

    .line 59
    .local v1, titleRes:I
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, title:Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_1

    .line 79
    sget-object v2, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPhoneType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-object v0

    .line 62
    .end local v0           #title:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 64
    const v1, 0x7f0c0a19

    goto :goto_0

    .line 66
    :cond_3
    const v1, 0x7f0c0a1a

    goto :goto_0

    .line 68
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 70
    const v1, 0x7f0c0a17

    goto :goto_0

    .line 72
    :cond_5
    const v1, 0x7f0c0a18

    goto :goto_0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummaryInBackground()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 100
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, summary:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0e63

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0

    .line 103
    .end local v0           #summary:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberIdExt(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->mPhoneType:I

    .line 54
    return-void
.end method
