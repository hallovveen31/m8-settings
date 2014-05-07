.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcUICCIDPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 65
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const v0, 0x7f0c0aab

    .line 77
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, title:Ljava/lang/String;
    return-object v1

    .line 74
    .end local v0           #resId:I
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    const v0, 0x7f0c06f7

    .restart local v0       #resId:I
    goto :goto_0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const-string v0, ""

    .line 88
    .local v0, UICC_Id:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "htctelephony"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcTelephonyManager;->getIccSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0b48

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_2
    :goto_0
    return-object v0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e4a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-static {v0}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;->formatting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
