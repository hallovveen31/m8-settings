.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcUICCIMSIPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 64
    return-void
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c06f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const-string v0, ""

    .line 74
    .local v0, UICC_IMSI:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "htctelephony"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/HtcTelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->mHtcTelephonyManager:Lcom/htc/service/HtcTelephonyManager;

    const-string v2, "CDMA-ICC"

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcTelephonyManager;->getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0e4a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    return-object v0
.end method
