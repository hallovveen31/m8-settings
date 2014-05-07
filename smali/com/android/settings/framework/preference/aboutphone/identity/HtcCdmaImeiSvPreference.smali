.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.source "HtcCdmaImeiSvPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->result:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method protected canGetSummaryImmediately()Z
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->getSingleton()Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "METHOD_NAME_GET_IMEISV"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->GetDeviceinfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->result:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e52

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;->result:Ljava/lang/String;

    return-object v0
.end method
