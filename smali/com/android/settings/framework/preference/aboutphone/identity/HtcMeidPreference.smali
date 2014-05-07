.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;
.source "HtcMeidPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mMEID:Ljava/lang/String;

.field private result:Ljava/lang/String;


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

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const v0, 0x7f0f0017

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractCdmaStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->result:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "meid"

    .prologue
    .line 49
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->mMEID:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method protected canGetSummaryImmediately()Z
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->getSingleton()Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "METHOD_NAME_GET_MEID"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneDeiveInfoManager;->GetDeviceinfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->result:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e57

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTask()Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_MEID:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 98
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->mMEID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->mMEID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->mMEID:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->mMEID:Ljava/lang/String;

    .line 127
    :goto_0
    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 104
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->result:Ljava/lang/String;

    .line 105
    .local v0, IMEI:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 106
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getDeviceIdExt(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isDualPhoneEnable:Z

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getDeviceIdExt(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0b48

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
